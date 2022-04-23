package zendesk.core;

import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import com.zendesk.logger.Logger;
import com.zendesk.service.ErrorResponse;
import com.zendesk.service.RetrofitZendeskCallbackAdapter;
import com.zendesk.service.ZendeskCallback;
import com.zendesk.util.StringUtils;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskBlipsProvider.class */
public class ZendeskBlipsProvider implements BlipsProvider, BlipsCoreProvider {
    static final String ACTION_CORE_INIT = "init";
    static final String ACTION_CORE_PUSH_OFF = "PushOff";
    static final String ACTION_CORE_PUSH_ON = "PushOn";
    static final String BLIPS_CORE_CATEGORY = "CoreSDK";
    private static final String BLIP_VALUE_STRING = "payload";
    private static final String CHANNEL_CORE_SDK = "core_sdk";
    private static final String CODE_FIELD_NAME_STRING = "code";
    private static final String CODE_VALUE_JAVA_STRING = "java";
    private static final String CORE_VERSION_STRING = "2.0.1";
    private static final String DEVICE_INFO_FIELD_STRING = "device";
    private static final String LOG_TAG = "ZendeskBlipsProvider";
    private final String appId;
    private final BlipsService blipsService;
    private final CoreSettingsStorage coreSettingsStorage;
    private final DeviceInfo deviceInfo;
    private final Executor executor;
    private final IdentityManager identityManager;
    private final Serializer serializer;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZendeskBlipsProvider(BlipsService blipsService, DeviceInfo deviceInfo, Serializer serializer, IdentityManager identityManager, String str, CoreSettingsStorage coreSettingsStorage, Executor executor) {
        this.blipsService = blipsService;
        this.deviceInfo = deviceInfo;
        this.serializer = serializer;
        this.identityManager = identityManager;
        this.appId = str;
        this.coreSettingsStorage = coreSettingsStorage;
        this.executor = executor;
    }

    private Map<String, Object> addDeviceInfoToValue(Map<String, Object> map) {
        HashMap hashMap = new HashMap();
        hashMap.put("device", this.deviceInfo.getInfo());
        if (map != null && !map.isEmpty()) {
            hashMap.put("payload", map);
        }
        return hashMap;
    }

    @Override // zendesk.core.BlipsCoreProvider
    public void coreInitialized() {
        HashMap hashMap = new HashMap();
        hashMap.put(CODE_FIELD_NAME_STRING, CODE_VALUE_JAVA_STRING);
        sendBlip(new UserAction("2.0.1", CHANNEL_CORE_SDK, BLIPS_CORE_CATEGORY, ACTION_CORE_INIT, null, hashMap), BlipsGroup.REQUIRED);
    }

    @Override // zendesk.core.BlipsCoreProvider
    public void corePushDisabled(Long l) {
        sendBlip(BlipsGroup.REQUIRED, new UserAction("2.0.1", CHANNEL_CORE_SDK, BLIPS_CORE_CATEGORY, ACTION_CORE_PUSH_OFF), l);
    }

    @Override // zendesk.core.BlipsCoreProvider
    public void corePushEnabled() {
        sendBlip(new UserAction("2.0.1", CHANNEL_CORE_SDK, BLIPS_CORE_CATEGORY, ACTION_CORE_PUSH_ON), BlipsGroup.REQUIRED);
    }

    BlipsRequest createBlipsRequest(PageView pageView, String str, String str2, Long l) {
        return BlipsRequest.buildPageView(str, BlipsFormatHelper.nowAsString(new Date()), l, str2, pageView.getVersion(), pageView.getChannel(), pageView.getUrl(), pageView.getNavigatorLanguage(), pageView.getPageTitle(), addDeviceInfoToValue(pageView.getValue()));
    }

    BlipsRequest createBlipsRequest(UserAction userAction, String str, String str2, Long l) {
        return BlipsRequest.buildUserAction(str, BlipsFormatHelper.nowAsString(new Date()), l, str2, userAction.getVersion(), userAction.getChannel(), userAction.getCategory(), userAction.getAction(), userAction.getLabel(), addDeviceInfoToValue(userAction.getValue()));
    }

    @VisibleForTesting
    void dispatchBlip(final BlipsRequest blipsRequest) {
        this.executor.execute(new Runnable() { // from class: zendesk.core.ZendeskBlipsProvider.1
            @Override // java.lang.Runnable
            public void run() {
                ZendeskBlipsProvider.this.blipsService.send(ZendeskBlipsProvider.this.serializer.serialize(blipsRequest)).enqueue(new RetrofitZendeskCallbackAdapter(new ZendeskCallback<Void>() { // from class: zendesk.core.ZendeskBlipsProvider.1.1
                    @Override // com.zendesk.service.ZendeskCallback
                    public void onError(ErrorResponse errorResponse) {
                        Logger.m298d(ZendeskBlipsProvider.LOG_TAG, "Unable to send Blip | Error: %s", errorResponse.getReason());
                    }

                    public void onSuccess(Void r2) {
                    }
                }));
            }
        });
    }

    @VisibleForTesting
    void sendBlip(@NonNull BlipsGroup blipsGroup, @NonNull UserAction userAction, Long l) {
        if (this.coreSettingsStorage.getBlipsSettings().getBlipsPermissions().isEnabled(blipsGroup) && StringUtils.hasLength(userAction.getChannel())) {
            dispatchBlip(createBlipsRequest(userAction, this.identityManager.getBlipsUuid(), this.appId, l));
        }
    }

    @Override // zendesk.core.BlipsProvider
    public void sendBlip(@NonNull PageView pageView, @NonNull BlipsGroup blipsGroup) {
        if (this.coreSettingsStorage.getBlipsSettings().getBlipsPermissions().isEnabled(blipsGroup) && StringUtils.hasLength(pageView.getChannel())) {
            dispatchBlip(createBlipsRequest(pageView, this.identityManager.getBlipsUuid(), this.appId, this.identityManager.getUserId()));
        }
    }

    @Override // zendesk.core.BlipsProvider
    public void sendBlip(@NonNull UserAction userAction, @NonNull BlipsGroup blipsGroup) {
        sendBlip(blipsGroup, userAction, this.identityManager.getUserId());
    }
}
