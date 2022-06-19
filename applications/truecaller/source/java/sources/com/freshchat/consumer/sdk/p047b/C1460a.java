package com.freshchat.consumer.sdk.p047b;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.freshchat.consumer.sdk.Freshchat;
import p1727n3.p1872x.p1873a.C27062a;
/* renamed from: com.freshchat.consumer.sdk.b.a */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/b/a.class */
public class C1460a {
    /* renamed from: W */
    public static void m41056W(Context context) {
        m41037d(context, "com.freshchat.consumer.sdk.actions.KillCurrentUserSession");
    }

    /* renamed from: X */
    public static void m41055X(Context context) {
        m41037d(context, "com.freshchat.consumer.sdk.actions.ExpectedConversationResponseTimeUpdated");
    }

    /* renamed from: a */
    public static void m41054a(Context context, Bundle bundle) {
        m41046b(context, Freshchat.FRESHCHAT_EVENTS, bundle);
    }

    /* renamed from: a */
    public static void m41053a(Context context, String str, Bundle bundle) {
        bundle.putBoolean("STATUS_SUCCESS", false);
        m41046b(context, str, bundle);
    }

    /* renamed from: aJ */
    public static void m41052aJ(Context context) {
        m41037d(context, "com.freshchat.consumer.sdk.MessageCountChanged");
    }

    /* renamed from: aY */
    public static void m41051aY(Context context) {
        m41037d(context, "com.freshchat.consumer.sdk.actions.JwtModeEnabledForAccount");
    }

    /* renamed from: ai */
    public static void m41050ai(Context context) {
        m41037d(context, Freshchat.FRESHCHAT_USER_RESTORE_ID_GENERATED);
    }

    /* renamed from: ax */
    public static void m41049ax(Context context) {
        m41037d(context, "com.freshchat.consumer.sdk.actions.JwtIdTokenStateChanged");
    }

    /* renamed from: b */
    public static void m41048b(Context context, Bundle bundle) {
        m41046b(context, "com.freshchat.consumer.sdk.actions.FAQCategoriesFetched", bundle);
    }

    /* renamed from: b */
    public static void m41047b(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("STATUS_SUCCESS", true);
        m41046b(context, str, bundle);
    }

    /* renamed from: b */
    private static void m41046b(Context context, String str, Bundle bundle) {
        Intent intent = new Intent(str);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        m41044c(context).m966d(intent);
    }

    /* renamed from: ba */
    public static void m41045ba(Context context) {
        m41037d(context, "com.freshchat.consumer.sdk.actions.TokenWaitTimeout");
    }

    /* renamed from: c */
    private static C27062a m41044c(Context context) {
        return C27062a.m968b(context.getApplicationContext());
    }

    /* renamed from: c */
    public static void m41043c(Context context, Bundle bundle) {
        m41046b(context, "com.freshchat.consumer.sdk.actions.FAQListFetched", bundle);
    }

    /* renamed from: c */
    public static void m41042c(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("STATUS_SUCCESS", false);
        m41046b(context, str, bundle);
    }

    /* renamed from: cm */
    public static void m41041cm(Context context) {
        m41037d(context, "com.freshchat.consumer.sdk.actions.RemoteConfigUpdated");
    }

    /* renamed from: cn */
    public static void m41040cn(Context context) {
        m41037d(context, Freshchat.FRESHCHAT_SET_TOKEN_TO_REFRESH_DEVICE_PROPERTIES);
    }

    /* renamed from: co */
    public static void m41039co(Context context) {
        m41037d(context, "com.freshchat.consumer.sdk.actions.FAQApiVersionChanged");
    }

    /* renamed from: d */
    public static void m41038d(Context context, Bundle bundle) {
        m41046b(context, "com.freshchat.consumer.sdk.actions.FAQFetched", bundle);
    }

    /* renamed from: d */
    private static void m41037d(Context context, String str) {
        m41046b(context, str, null);
    }

    /* renamed from: e */
    public static void m41036e(Context context, Bundle bundle) {
        m41046b(context, "com.freshchat.consumer.sdk.actions.FAQSearchResultFetched", bundle);
    }

    /* renamed from: f */
    public static void m41035f(Context context) {
        m41037d(context, "com.freshchat.consumer.sdk.actions.MessagesUpdated");
    }

    /* renamed from: f */
    public static void m41034f(Context context, Bundle bundle) {
        m41046b(context, "com.freshchat.consumer.sdk.actions.FAQVoted", bundle);
    }

    /* renamed from: g */
    public static void m41033g(Context context) {
        m41037d(context, "com.freshchat.consumer.sdk.actions.ChannelsUpdated");
    }

    /* renamed from: g */
    public static void m41032g(Context context, Bundle bundle) {
        m41046b(context, "com.freshchat.consumer.sdk.actions.BotFAQFetched", bundle);
    }

    /* renamed from: h */
    public static void m41031h(Context context) {
        m41037d(context, "com.freshchat.consumer.sdk.actions.SolutionsUpdated");
    }

    /* renamed from: p */
    public static void m41030p(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("FRESHCHAT", true);
        bundle.putString("FRESHCHAT_DEEPLINK", str);
        m41046b(context, Freshchat.FRESHCHAT_ACTION_NOTIFICATION_INTERCEPTED, bundle);
    }
}
