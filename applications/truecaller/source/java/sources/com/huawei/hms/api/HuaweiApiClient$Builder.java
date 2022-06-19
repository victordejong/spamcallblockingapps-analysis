package com.huawei.hms.api;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.view.View;
import com.huawei.hms.api.Api;
import com.huawei.hms.common.internal.AutoLifecycleFragment;
import com.huawei.hms.common.internal.Preconditions;
import com.huawei.hms.support.api.entity.auth.PermissionInfo;
import com.huawei.hms.support.api.entity.auth.Scope;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.huawei.hms.support.hianalytics.HiAnalyticsUtil;
import com.huawei.hms.utils.Checker;
import com.huawei.hms.utils.HMSBIInitializer;
import com.huawei.hms.utils.ResourceLoaderUtil;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/api/HuaweiApiClient$Builder.class */
public final class HuaweiApiClient$Builder {

    /* renamed from: a */
    private final Context f7273a;

    /* renamed from: e */
    private HuaweiApiClient$OnConnectionFailedListener f7277e;

    /* renamed from: f */
    private HuaweiApiClient$ConnectionCallbacks f7278f;

    /* renamed from: h */
    private Activity f7280h;

    /* renamed from: b */
    private final List<Scope> f7274b = new ArrayList();

    /* renamed from: c */
    private final List<PermissionInfo> f7275c = new ArrayList();

    /* renamed from: d */
    private final Map<Api<?>, Api.ApiOptions> f7276d = new HashMap();

    /* renamed from: g */
    private int f7279g = -1;

    public HuaweiApiClient$Builder(Context context) throws NullPointerException {
        Checker.checkNonNull(context, "context must not be null.");
        Context applicationContext = context.getApplicationContext();
        this.f7273a = applicationContext;
        ResourceLoaderUtil.setmContext(applicationContext);
        m38169a(context);
    }

    /* renamed from: a */
    private void m38169a(Context context) {
        HMSBIInitializer.getInstance(context).initBI();
    }

    /* renamed from: a */
    private void m38168a(HuaweiApiClient huaweiApiClient) {
        AutoLifecycleFragment.getInstance(this.f7280h).startAutoMange(this.f7279g, huaweiApiClient);
    }

    public HuaweiApiClient$Builder addApi(Api<? extends Api.ApiOptions.NotRequiredOptions> api) {
        this.f7276d.put(api, null);
        if (HuaweiApiAvailability.HMS_API_NAME_GAME.equals(api.getApiName())) {
            HiAnalyticsUtil hiAnalyticsUtil = HiAnalyticsUtil.getInstance();
            Context applicationContext = this.f7273a.getApplicationContext();
            StringBuilder m8728C = C22128a.m8728C("|");
            m8728C.append(System.currentTimeMillis());
            hiAnalyticsUtil.onEvent(applicationContext, HiAnalyticsConstant.KeyAndValue.GAME_INIT_KEY, m8728C.toString());
        }
        return this;
    }

    public <O extends Api.ApiOptions.HasOptions> HuaweiApiClient$Builder addApi(Api<O> api, O o) {
        Checker.checkNonNull(api, "Api must not be null");
        Checker.checkNonNull(o, "Null options are not permitted for this Api");
        this.f7276d.put(api, o);
        if (api.getOptions() != null) {
            this.f7274b.addAll(api.getOptions().getScopeList(o));
            this.f7275c.addAll(api.getOptions().getPermissionInfoList(o));
        }
        return this;
    }

    public <O extends Api.ApiOptions.HasOptions> HuaweiApiClient$Builder addApiWithScope(Api<O> api, O o, Scope... scopeArr) {
        Checker.checkNonNull(api, "Api must not be null");
        Checker.checkNonNull(o, "Null options are not permitted for this Api");
        Checker.checkNonNull(scopeArr, "Scopes must not be null");
        this.f7276d.put(api, o);
        if (api.getOptions() != null) {
            this.f7274b.addAll(api.getOptions().getScopeList(o));
            this.f7275c.addAll(api.getOptions().getPermissionInfoList(o));
        }
        this.f7274b.addAll(new ArrayList(Arrays.asList(scopeArr)));
        return this;
    }

    public HuaweiApiClient$Builder addApiWithScope(Api<? extends Api.ApiOptions.NotRequiredOptions> api, Scope... scopeArr) {
        Checker.checkNonNull(api, "Api must not be null");
        Checker.checkNonNull(scopeArr, "Scopes must not be null");
        this.f7276d.put(api, null);
        this.f7274b.addAll(new ArrayList(Arrays.asList(scopeArr)));
        return this;
    }

    public HuaweiApiClient$Builder addConnectionCallbacks(HuaweiApiClient$ConnectionCallbacks huaweiApiClient$ConnectionCallbacks) {
        Checker.checkNonNull(huaweiApiClient$ConnectionCallbacks, "listener must not be null.");
        this.f7278f = huaweiApiClient$ConnectionCallbacks;
        return this;
    }

    public HuaweiApiClient$Builder addOnConnectionFailedListener(HuaweiApiClient$OnConnectionFailedListener huaweiApiClient$OnConnectionFailedListener) {
        Checker.checkNonNull(huaweiApiClient$OnConnectionFailedListener, "listener must not be null.");
        this.f7277e = huaweiApiClient$OnConnectionFailedListener;
        return this;
    }

    public HuaweiApiClient$Builder addScope(Scope scope) {
        Checker.checkNonNull(scope, "scope must not be null.");
        this.f7274b.add(scope);
        return this;
    }

    public HuaweiApiClient$Builder allowLifeCycleManagement(Activity activity, int i, HuaweiApiClient$OnConnectionFailedListener huaweiApiClient$OnConnectionFailedListener) {
        if (i >= 0) {
            this.f7279g = i;
            this.f7280h = (Activity) Preconditions.checkNotNull(activity, "activity must not be Null.");
            return this;
        }
        throw new IllegalArgumentException("allowLifeCycleManagement id should be positive");
    }

    public HuaweiApiClient$Builder allowLifeCycleManagement(Activity activity, HuaweiApiClient$OnConnectionFailedListener huaweiApiClient$OnConnectionFailedListener) {
        return allowLifeCycleManagement(activity, 0, huaweiApiClient$OnConnectionFailedListener);
    }

    public HuaweiApiClient$Builder applyDefaultAccount() {
        return this;
    }

    public HuaweiApiClient build() {
        addApi(new Api<>("Core.API"));
        HuaweiApiClientImpl huaweiApiClientImpl = new HuaweiApiClientImpl(this.f7273a);
        huaweiApiClientImpl.setScopes(this.f7274b);
        huaweiApiClientImpl.setPermissionInfos(this.f7275c);
        huaweiApiClientImpl.setApiMap(this.f7276d);
        huaweiApiClientImpl.setConnectionCallbacks(this.f7278f);
        huaweiApiClientImpl.setConnectionFailedListener(this.f7277e);
        huaweiApiClientImpl.setAutoLifecycleClientId(this.f7279g);
        if (this.f7279g >= 0) {
            m38168a((HuaweiApiClient) huaweiApiClientImpl);
        }
        return huaweiApiClientImpl;
    }

    public HuaweiApiClient$Builder setAccountName(String str) {
        return this;
    }

    public HuaweiApiClient$Builder setHandler(Handler handler) {
        return this;
    }

    public HuaweiApiClient$Builder setPopupsGravity(int i) {
        return this;
    }

    public HuaweiApiClient$Builder setViewForPopups(View view) {
        return this;
    }
}
