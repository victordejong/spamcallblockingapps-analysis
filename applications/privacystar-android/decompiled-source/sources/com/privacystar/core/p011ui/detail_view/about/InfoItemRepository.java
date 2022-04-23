package com.privacystar.core.p011ui.detail_view.about;

import android.content.Context;
import com.privacystar.core.BuildConfig;
import com.privacystar.core.C1566R;
import com.privacystar.core.util.BuildUtil;
import com.privacystar.core.util.Device;
import com.privacystar.core.util.InformationUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H��¢\u0006\u0002\b\u0007J\u0015\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H��¢\u0006\u0002\b\tJ\u0015\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H��¢\u0006\u0002\b\u000b¨\u0006\f"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/about/InfoItemRepository;", "", "()V", "getApkVersionInfoItem", "Lcom/privacystar/core/ui/detail_view/about/AboutInfoItem;", "context", "Landroid/content/Context;", "getApkVersionInfoItem$app_core", "getDevicePinInfoItem", "getDevicePinInfoItem$app_core", "getUiVersionInfoItem", "getUiVersionInfoItem$app_core", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.about.InfoItemRepository */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/about/InfoItemRepository.class */
public final class InfoItemRepository {
    public static final InfoItemRepository INSTANCE = new InfoItemRepository();

    private InfoItemRepository() {
    }

    @NotNull
    public final AboutInfoItem getApkVersionInfoItem$app_core(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        StringBuilder sb = new StringBuilder();
        sb.append(BuildConfig.VERSION_NAME);
        if (BuildUtil.INSTANCE.isDevelopmentBuild()) {
            sb.append("-develop");
        }
        if (StringsKt.contains$default((CharSequence) "release", (CharSequence) "Tst", false, 2, (Object) null)) {
            sb.append("-test");
        }
        Timber.m37d("Fetching and setting APK version: %s", sb);
        String string = context.getString(C1566R.string.about_fragment_section_2_item_1);
        Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.stri…ragment_section_2_item_1)");
        String sb2 = sb.toString();
        Intrinsics.checkExpressionValueIsNotNull(sb2, "apkVersion.toString()");
        return new AboutInfoItem(string, sb2);
    }

    @NotNull
    public final AboutInfoItem getDevicePinInfoItem$app_core(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        String devicePin = InformationUtil.getDevicePinOrNothing(context);
        Timber.m37d("Fetching and setting PIN to: %s", devicePin);
        String string = context.getString(C1566R.string.about_fragment_section_2_item_3);
        Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.stri…ragment_section_2_item_3)");
        Intrinsics.checkExpressionValueIsNotNull(devicePin, "devicePin");
        return new AboutInfoItem(string, devicePin);
    }

    @NotNull
    public final AboutInfoItem getUiVersionInfoItem$app_core(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        String uiVersion = Device.getUiVersion(context);
        Timber.m37d("Fetching and setting UI version to: %s", uiVersion);
        String string = context.getString(C1566R.string.about_fragment_section_2_item_2);
        Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.stri…ragment_section_2_item_2)");
        Intrinsics.checkExpressionValueIsNotNull(uiVersion, "uiVersion");
        return new AboutInfoItem(string, uiVersion);
    }
}
