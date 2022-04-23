package com.privacystar.core.util;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.support.annotation.StringRes;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.p011ui.intro.intro_core.IntroActivity;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.util.analytics.AnalyticsUtil;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0007\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006H\u0007J$\u0010\u0007\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\tH\u0007J \u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0002J\u001a\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0003\u0010\r\u001a\u00020\u000eH\u0007J\u0016\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\tJ\"\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\tH\u0007J\u001e\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t¨\u0006\u0015"}, m254d2 = {"Lcom/privacystar/core/util/SystemUtil;", "", "()V", "internallyRestartApp", "", "context", "Landroid/content/Context;", "openExternalWebpage", "address", "", "body", "openExternalWebpageImpl", "openPlayStore", "packageUri", "", "sendCall", "number", "sendMessage", "addressee", "systemShare", "subject", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/SystemUtil.class */
public final class SystemUtil {
    public static final SystemUtil INSTANCE = new SystemUtil();

    private SystemUtil() {
    }

    @JvmOverloads
    public static /* synthetic */ void internallyRestartApp$default(SystemUtil systemUtil, Context context, int i, Object obj) {
        if ((i & 1) != 0) {
            context = PSApplication.context();
            Intrinsics.checkExpressionValueIsNotNull(context, "PSApplication.context()");
        }
        systemUtil.internallyRestartApp(context);
    }

    @JvmOverloads
    public static /* synthetic */ void openExternalWebpage$default(SystemUtil systemUtil, Context context, String str, String str2, int i, Object obj) {
        if ((i & 4) != 0) {
            str2 = "";
        }
        systemUtil.openExternalWebpage(context, str, str2);
    }

    private final void openExternalWebpageImpl(Context context, String str, String str2) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setFlags(268435456);
            intent.setData(Uri.parse(str));
            if (!StringsKt.isBlank(str2)) {
                intent.putExtra("com.android.browser.headers", str2);
            }
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            Timber.m23w(e, "Could not find Activity to handle a webpage. Device is probably lacking a browser.", new Object[0]);
        }
    }

    @JvmOverloads
    public static /* synthetic */ void openPlayStore$default(SystemUtil systemUtil, Context context, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = C1566R.string.play_store_app_uri;
        }
        systemUtil.openPlayStore(context, i);
    }

    @JvmOverloads
    public static /* synthetic */ void sendMessage$default(SystemUtil systemUtil, Context context, String str, String str2, int i, Object obj) {
        if ((i & 4) != 0) {
            str2 = "";
        }
        systemUtil.sendMessage(context, str, str2);
    }

    @JvmOverloads
    public final void internallyRestartApp() {
        internallyRestartApp$default(this, null, 1, null);
    }

    @JvmOverloads
    public final void internallyRestartApp(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intent intent = new Intent(context, IntroActivity.class);
        intent.addFlags(335544320);
        context.startActivity(intent);
    }

    @JvmOverloads
    public final void openExternalWebpage(@Nullable Context context, @NotNull String str) {
        openExternalWebpage$default(this, context, str, null, 4, null);
    }

    @JvmOverloads
    public final void openExternalWebpage(@Nullable Context context, @NotNull String address, @NotNull String body) {
        Intrinsics.checkParameterIsNotNull(address, "address");
        Intrinsics.checkParameterIsNotNull(body, "body");
        if (context != null) {
            openExternalWebpageImpl(context, address, body);
        } else {
            Timber.m31i("Can't open external webpage on a null context reference.", new Object[0]);
        }
    }

    @JvmOverloads
    public final void openPlayStore(@NotNull Context context) {
        openPlayStore$default(this, context, 0, 2, null);
    }

    @JvmOverloads
    public final void openPlayStore(@NotNull Context context, @StringRes int i) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        try {
            context.startActivity(new Intent("android.intent.action.VIEW").setData(Uri.parse(context.getString(i))));
        } catch (ActivityNotFoundException e) {
            Timber.m23w(e, "Could not find Play Store Activity to open. Play Services are not installed and this app won't be functional.", new Object[0]);
        }
    }

    public final void sendCall(@NotNull Context context, @NotNull String number) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(number, "number");
        AnalyticsManager.INSTANCE.fire(Event.InitiatedCallEvent.INSTANCE);
        try {
            Intent intent = new Intent("android.intent.action.DIAL");
            intent.setData(Uri.parse("tel:" + number));
            intent.addFlags(268435456);
            Timber.m37d("Starting a call intent to: %s", number);
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            Timber.m23w(e, "Could not find Activity to handle CALL. Device is probably lacking telephony capabilities.", new Object[0]);
        }
    }

    @JvmOverloads
    public final void sendMessage(@NotNull Context context, @NotNull String str) {
        sendMessage$default(this, context, str, null, 4, null);
    }

    @JvmOverloads
    public final void sendMessage(@NotNull Context context, @NotNull String addressee, @NotNull String body) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(addressee, "addressee");
        Intrinsics.checkParameterIsNotNull(body, "body");
        AnalyticsManager.INSTANCE.fire(Event.InitiatedMessageEvent.INSTANCE);
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse("sms:" + addressee));
            intent.addFlags(268435456);
            if (!StringsKt.isBlank(body)) {
                intent.putExtra("sms_body", body);
            }
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            Timber.m23w(e, "Could not find Activity to handle SMS. Device is probably lacking telephony capabilities.", new Object[0]);
        }
    }

    public final void systemShare(@NotNull Context context, @NotNull String subject, @NotNull String body) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(subject, "subject");
        Intrinsics.checkParameterIsNotNull(body, "body");
        AnalyticsManager.INSTANCE.fire(Event.SharedLinkEvent.INSTANCE);
        AnalyticsUtil.trackShare$default(AnalyticsUtil.INSTANCE, null, 1, null);
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.SUBJECT", subject);
        intent.putExtra("android.intent.extra.TEXT", body);
        Intent createChooser = Intent.createChooser(intent, context.getString(C1566R.string.share_app));
        createChooser.addFlags(268435456);
        context.startActivity(createChooser);
    }
}
