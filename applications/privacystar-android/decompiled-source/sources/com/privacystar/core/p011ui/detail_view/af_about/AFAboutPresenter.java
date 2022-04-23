package com.privacystar.core.p011ui.detail_view.af_about;

import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.p011ui.detail_view.af_about.AFAboutContract;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.util.CryptoUtil;
import com.privacystar.core.util.LogRecorder;
import java.io.File;
import java.io.FileWriter;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p013io.CloseableKt;
import org.apache.commons.cli.HelpFormatter;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\b\u0010\u0012\u001a\u00020\u0010H\u0002J\b\u0010\u0013\u001a\u00020\u0010H\u0002J\b\u0010\u0014\u001a\u00020\u0010H\u0002J\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u0017\u001a\u00020\u0016J\u000e\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0006J\u0006\u0010\u001a\u001a\u00020\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u001f\u0010\u0002\u001a\u0010\u0012\f\u0012\n \n*\u0004\u0018\u00010\u00030\u00030\t¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\f¨\u0006\u001b"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/af_about/AFAboutPresenter;", "", Promotion.ACTION_VIEW, "Lcom/privacystar/core/ui/detail_view/af_about/AFAboutContract$View;", "(Lcom/privacystar/core/ui/detail_view/af_about/AFAboutContract$View;)V", "numberOfClickOnVersion", "", "getNumberOfClickOnVersion", "()I", "Ljava/lang/ref/WeakReference;", "kotlin.jvm.PlatformType", "getView", "()Ljava/lang/ref/WeakReference;", "createFile", "Ljava/io/File;", "fileName", "", "withContent", "getLogContent", "getLogFileName", "getPublicKey", "onPrivacyPolicyClick", "", "onTermsOfServiceClick", "onVersionClicked", "count", "onViewCreated", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.af_about.AFAboutPresenter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/af_about/AFAboutPresenter.class */
public final class AFAboutPresenter {
    private final int numberOfClickOnVersion = 5;
    @NotNull
    private final WeakReference<AFAboutContract.View> view;

    public AFAboutPresenter(@NotNull AFAboutContract.View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.view = new WeakReference<>(view);
    }

    private final File createFile(String str, String str2) {
        File cacheDirPath;
        AFAboutContract.View view = this.view.get();
        if (view == null || (cacheDirPath = view.getCacheDirPath()) == null) {
            return null;
        }
        File file = new File(cacheDirPath, str);
        try {
            FileWriter fileWriter = new FileWriter(file);
            Throwable th = null;
            fileWriter.write(str2);
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(fileWriter, th);
            return file;
        } catch (Exception e) {
            Timber.m34e("Settings", "error getting log", e);
            return null;
        }
    }

    private final String getLogContent() {
        String encryptWithPGP = CryptoUtil.encryptWithPGP(LogRecorder.getLog(), getPublicKey());
        Intrinsics.checkExpressionValueIsNotNull(encryptWithPGP, "CryptoUtil.encryptWithPG…getLog(), getPublicKey())");
        return encryptWithPGP;
    }

    private final String getLogFileName() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd-HHmm", Locale.getDefault());
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        String format = simpleDateFormat.format(new Date());
        return "ott-304020059-" + format + HelpFormatter.DEFAULT_OPT_PREFIX + "log.txt";
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0019, code lost:
        if (r4 != null) goto L_0x0022;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String getPublicKey() {
        /*
            r3 = this;
            r0 = r3
            java.lang.ref.WeakReference<com.privacystar.core.ui.detail_view.af_about.AFAboutContract$View> r0 = r0.view
            java.lang.Object r0 = r0.get()
            com.privacystar.core.ui.detail_view.af_about.AFAboutContract$View r0 = (com.privacystar.core.p011ui.detail_view.af_about.AFAboutContract.View) r0
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x001f
            r0 = r4
            java.lang.String r1 = "keys/rsa.pub"
            java.lang.String r0 = r0.readKeyFromAssets(r1)
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x001f
            goto L_0x0022
        L_0x001f:
            java.lang.String r0 = ""
            r4 = r0
        L_0x0022:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.p011ui.detail_view.af_about.AFAboutPresenter.getPublicKey():java.lang.String");
    }

    public final int getNumberOfClickOnVersion() {
        return this.numberOfClickOnVersion;
    }

    @NotNull
    public final WeakReference<AFAboutContract.View> getView() {
        return this.view;
    }

    public final void onPrivacyPolicyClick() {
        AnalyticsManager.INSTANCE.fire(Event.AboutPrivacyPolicy.INSTANCE);
        AFAboutContract.View view = this.view.get();
        if (view != null) {
            view.showPrivacyPolicy();
        }
    }

    public final void onTermsOfServiceClick() {
        AnalyticsManager.INSTANCE.fire(Event.AboutTermsOfService.INSTANCE);
        AFAboutContract.View view = this.view.get();
        if (view != null) {
            view.showTermsOfService();
        }
    }

    public final void onVersionClicked(int i) {
        AFAboutContract.View view;
        Timber.m37d("Phone shaken " + i + " times", new Object[0]);
        if (i % this.numberOfClickOnVersion == 0) {
            File createFile = createFile(getLogFileName(), getLogContent());
            if (createFile != null && (view = this.view.get()) != null) {
                view.emailLog(createFile);
            }
        }
    }

    public final void onViewCreated() {
        AnalyticsManager.INSTANCE.fire(Event.AboutPageView.INSTANCE);
        AFAboutContract.View view = this.view.get();
        if (view != null) {
            view.setupView();
            view.setVersionText();
            view.setVersionClickListener();
        }
    }
}
