package com.freshchat.consumer.sdk;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.widget.Toast;
import com.freshchat.consumer.sdk.beans.User;
import com.freshchat.consumer.sdk.exception.InvalidDomainException;
import com.freshchat.consumer.sdk.exception.JwtException;
import com.freshchat.consumer.sdk.exception.MethodNotAllowedException;
import com.freshchat.consumer.sdk.exception.PermissionNotGrantedException;
import com.freshchat.consumer.sdk.p047b.C1465d;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.p047b.C1471i;
import com.freshchat.consumer.sdk.p047b.EnumC1464c;
import com.freshchat.consumer.sdk.p055h.C1555b;
import com.freshchat.consumer.sdk.p057j.AbstractC1673c;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1610af;
import com.freshchat.consumer.sdk.p057j.C1611ag;
import com.freshchat.consumer.sdk.p057j.C1612ah;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1619am;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1630aw;
import com.freshchat.consumer.sdk.p057j.C1638b;
import com.freshchat.consumer.sdk.p057j.C1642ba;
import com.freshchat.consumer.sdk.p057j.C1649bg;
import com.freshchat.consumer.sdk.p057j.C1669by;
import com.freshchat.consumer.sdk.p057j.C1704d;
import com.freshchat.consumer.sdk.p057j.C1710g;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1720o;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.p057j.C1731w;
import com.freshchat.consumer.sdk.p057j.C1733y;
import com.freshchat.consumer.sdk.p057j.ExecutorC1709f;
import com.freshchat.consumer.sdk.p057j.p059b.C1641c;
import com.freshchat.consumer.sdk.service.AbstractC1804a;
import com.freshchat.consumer.sdk.service.p067d.C1870d;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
import com.freshchat.consumer.sdk.service.p068e.C1898d;
import com.freshchat.consumer.sdk.service.p068e.C1903g;
import com.freshchat.consumer.sdk.service.p068e.C1908l;
import com.freshchat.consumer.sdk.service.p068e.C1912o;
import com.freshchat.consumer.sdk.service.p068e.C1921w;
import com.freshchat.consumer.sdk.util.DeepLinkUtils;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/Freshchat.class */
public final class Freshchat {
    public static final String FRESHCHAT_ACTION_MESSAGE_COUNT_CHANGED = "com.freshchat.consumer.sdk.MessageCountChanged";
    public static final String FRESHCHAT_ACTION_NOTIFICATION_INTERCEPTED = "com.freshchat.consumer.sdk.FreshchatNotificationIntercepted";
    public static final String FRESHCHAT_EVENTS = "com.freshchat.consumer.sdk.FreshchatEvents";
    public static final String FRESHCHAT_SET_TOKEN_TO_REFRESH_DEVICE_PROPERTIES = "com.freshchat.consumer.sdk.actions.SetTokenToRefreshDeviceProperties";
    public static final String FRESHCHAT_UNREAD_MESSAGE_COUNT_CHANGED = "com.freshchat.consumer.sdk.MessageCountChanged";
    public static final String FRESHCHAT_USER_RESTORE_ID_GENERATED = "com.freshchat.consumer.sdk.UserRestoreIdGenerated";
    private static volatile Freshchat INSTANCE;
    private static AtomicBoolean lifecycleCallbacksRegistered = new AtomicBoolean(false);
    private final Context context;
    private WeakReference<FreshchatUserInteractionListener> freshchatUserInteractionListenerReference;
    private WeakReference<LinkHandler> linkHandlerReference;
    private WeakReference<FreshchatWebViewListener> webviewListenerReference;

    private Freshchat(Context context) {
        this.context = context.getApplicationContext();
    }

    public static void executeUnreadCountCallback(final UnreadCountCallback unreadCountCallback, final FreshchatCallbackStatus freshchatCallbackStatus, final int i) {
        if (unreadCountCallback != null) {
            new ExecutorC1709f().execute(new Runnable() { // from class: com.freshchat.consumer.sdk.Freshchat.2
                @Override // java.lang.Runnable
                public void run() {
                    unreadCountCallback.onResult(freshchatCallbackStatus, i);
                }
            });
        }
    }

    private Context getContext() {
        return this.context;
    }

    public static Event getEventFromBundle(Bundle bundle) {
        return C1649bg.m40076e(bundle);
    }

    public static Freshchat getInstance(Context context) {
        if (context != null) {
            if (INSTANCE == null) {
                synchronized (Freshchat.class) {
                    try {
                        if (INSTANCE == null) {
                            INSTANCE = new Freshchat(context);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return INSTANCE;
        }
        throw new IllegalArgumentException("getInstance() requires a valid context");
    }

    public static int getSDKVersionCode() {
        return 501;
    }

    public static void handleFcmMessage(Context context, Object obj) {
        if (context != null) {
            Bundle m40532a = C1555b.m40532a(obj);
            if (m40532a == null) {
                throw new IllegalArgumentException(EnumC1464c.INVALID_NOTIFICATION_PAYLOAD.toString());
            }
            if (!isFreshchatNotification(m40532a)) {
                return;
            }
            StringBuilder m8728C = C22128a.m8728C("Got notification for ");
            m8728C.append(context.getPackageName());
            C1613ai.m40284d("FRESHCHAT", m8728C.toString());
            Intent intent = new Intent();
            intent.putExtras(m40532a);
            C1611ag.m40301a("FRESHCHAT", intent);
            C1555b.m40529b(context, intent);
            return;
        }
        throw new IllegalArgumentException("Context is a mandatory param for handleFcmMessage()");
    }

    private static boolean hasSavedConfig(Context context) {
        C1466e m40905i = C1466e.m40905i(context);
        return !C1626as.isEmpty(m40905i.getAppId()) && !C1626as.isEmpty(m40905i.getAppKey());
    }

    public static boolean isFreshchatNotification(Intent intent) {
        if (intent != null) {
            return isFreshchatNotification(intent.getExtras());
        }
        return false;
    }

    public static boolean isFreshchatNotification(Bundle bundle) {
        return bundle != null && bundle.containsKey("source") && "freshchat_user".equals(bundle.getString("source"));
    }

    public static boolean isFreshchatNotification(Object obj) {
        Bundle m40532a = C1555b.m40532a(obj);
        return m40532a != null && isFreshchatNotification(m40532a);
    }

    public static void notifyAppLocaleChange(Context context) {
        if (context != null) {
            if (hasSavedConfig(context)) {
                C1612ah.m40292bN(context);
                return;
            }
            String replace = context.getString(C1298R.string.freshchat_error_message_init_not_completed).replace(context.getString(C1298R.string.f3527x94ffc876), "notifyAppLocaleChange()");
            Toast.makeText(context, replace, 1).show();
            C1613ai.m40278w("FRESHCHAT_WARNING", replace);
            return;
        }
        throw new IllegalArgumentException("notifyAppLocaleChange() requires a valid context");
    }

    public static void openFreshchatDeeplink(Context context, String str) {
        if (context != null) {
            if (C1626as.isEmpty(str)) {
                throw new IllegalArgumentException("Deeplink url is a mandatory param for openFreshchatDeeplink()");
            }
            try {
                Uri parse = Uri.parse(str);
                if (DeepLinkUtils.m39273c(parse)) {
                    DeepLinkUtils.m39280b(context, parse, null);
                } else {
                    DeepLinkUtils.m39275c(context, parse, (Bundle) null);
                }
                return;
            } catch (Exception e) {
                return;
            }
        }
        throw new IllegalArgumentException("Context is a mandatory param for openFreshchatDeeplink()");
    }

    private void registerLifecycleCallbacks() {
        try {
            if (lifecycleCallbacksRegistered.get()) {
                return;
            }
            ((Application) this.context).registerActivityLifecycleCallbacks(new C1465d());
            lifecycleCallbacksRegistered.set(true);
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    public static void resetUser(Context context) {
        C1594aa.m40359a(context, true, true);
    }

    public static void sendMessage(Context context, FreshchatMessage freshchatMessage) {
        if (context != null) {
            if (freshchatMessage == null) {
                throw new IllegalArgumentException("sendMessage() requires a non null instance of FreshchatMessage");
            }
            if (C1626as.isEmpty(freshchatMessage.getMessage())) {
                return;
            }
            if (C1720o.m39853bB(context) && C1720o.m39843bz(context) != JwtTokenStatus.TOKEN_VALID) {
                return;
            }
            C1912o c1912o = new C1912o();
            c1912o.m39322ao(freshchatMessage.getTag());
            c1912o.setText(freshchatMessage.getMessage());
            C1870d.m39385b(context, c1912o);
            return;
        }
        throw new IllegalArgumentException("sendMessage() requires a valid context");
    }

    public static void setConversationBannerMessage(Context context, String str) {
        C1466e m40905i = C1466e.m40905i(context);
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        m40905i.putString("CONFIG_CONVERSATION_BANNER_MESSAGE", str2.trim());
    }

    public static void setImageLoader(FreshchatImageLoader freshchatImageLoader) {
        C1610af.m40308a(freshchatImageLoader);
    }

    public static void showConversations(Context context) {
        showConversations(context, null);
    }

    public static void showConversations(Context context, ConversationOptions conversationOptions) {
        if (!C1630aw.m40206eQ()) {
            C1613ai.m40278w("FRESHCHAT_WARNING", EnumC1464c.ERROR_UNSUPPORTED_OS_VERSION.toString());
        } else if (context == null) {
            throw new IllegalArgumentException("showConversations() requires a valid context");
        } else {
            if (!C1731w.m39793ay(context)) {
                C1638b.m40170L(context);
                C1471i.m40855a(context, C1298R.string.freshchat_error_message_account_not_active);
            } else if (!C1731w.m39796aA(context)) {
                C1471i.m40855a(context, C1298R.string.freshchat_error_message_inbox_section_not_enabled);
            } else if (!hasSavedConfig(context)) {
                String replace = context.getString(C1298R.string.freshchat_error_message_init_not_completed).replace(context.getString(C1298R.string.f3527x94ffc876), "showConversations()");
                Toast.makeText(context, replace, 1).show();
                C1613ai.m40278w("FRESHCHAT_WARNING", replace);
            } else {
                C1638b.m40167R(context);
                ConversationOptions conversationOptions2 = conversationOptions;
                if (conversationOptions == null) {
                    conversationOptions2 = new ConversationOptions();
                }
                if (C1716k.m39900b(conversationOptions2.getTags()) <= 25) {
                    AbstractC1673c.m40034a(context, conversationOptions2).mo39807ea();
                    return;
                }
                C1471i.m40855a(context, C1298R.string.freshchat_error_message_failed_to_launch_support_section);
                C1613ai.m40283e("FRESHCHAT_WARNING", EnumC1464c.ERROR_TAGS_COUNT_EXCEEDED.toString());
            }
        }
    }

    public static void showFAQs(Context context) {
        showFAQs(context, new FaqOptions());
    }

    public static void showFAQs(Context context, FaqOptions faqOptions) {
        if (!C1630aw.m40206eQ()) {
            C1613ai.m40278w("FRESHCHAT_WARNING", EnumC1464c.ERROR_UNSUPPORTED_OS_VERSION.toString());
        } else if (context == null) {
            throw new IllegalArgumentException("showFAQs() requires a valid context");
        } else {
            if (!C1731w.m39793ay(context)) {
                C1638b.m40170L(context);
                C1471i.m40855a(context, C1298R.string.freshchat_error_message_account_not_active);
            } else if (!C1731w.m39792az(context)) {
                C1471i.m40855a(context, C1298R.string.freshchat_error_message_faq_section_not_enabled);
            } else if (!hasSavedConfig(context)) {
                String replace = context.getString(C1298R.string.freshchat_error_message_init_not_completed).replace(context.getString(C1298R.string.f3527x94ffc876), "showFAQs()");
                Toast.makeText(context, replace, 1).show();
                C1613ai.m40278w("FRESHCHAT_WARNING", replace);
            } else {
                FaqOptions faqOptions2 = faqOptions;
                if (faqOptions == null) {
                    faqOptions2 = new FaqOptions();
                }
                if (C1716k.m39900b(faqOptions2.getTags()) <= 25) {
                    AbstractC1673c.m40034a(context, faqOptions2).mo39807ea();
                    return;
                }
                C1471i.m40855a(context, C1298R.string.freshchat_error_message_failed_to_launch_support_section);
                C1613ai.m40283e("FRESHCHAT_WARNING", EnumC1464c.ERROR_TAGS_COUNT_EXCEEDED.toString());
            }
        }
    }

    public static void trackEvent(Context context, String str, Map<String, Object> map) {
        if (!C1630aw.m40206eQ()) {
            C1613ai.m40278w("FRESHCHAT_WARNING", EnumC1464c.ERROR_UNSUPPORTED_OS_VERSION.toString());
        } else if (context == null) {
            throw new IllegalArgumentException("trackEvent() requires a valid context");
        } else {
            if (!C1731w.m39793ay(context)) {
                C1613ai.m40283e("FRESHCHAT", context.getString(C1298R.string.freshchat_error_message_account_not_active));
            } else if (!C1466e.m40905i(context).isUserEventsTrackingEnabled()) {
                C1613ai.m40278w("FRESHCHAT", EnumC1464c.USER_EVENT_TRACKING_DISABLED.toString());
            } else if (C1720o.m39853bB(context) && C1720o.m39843bz(context) == JwtTokenStatus.TOKEN_INVALID) {
            } else {
                C1669by.m40045gN().m40054b(context.getApplicationContext(), str, map);
            }
        }
    }

    public LinkHandler getCustomLinkHandler() {
        WeakReference<LinkHandler> weakReference = this.linkHandlerReference;
        return weakReference != null ? weakReference.get() : null;
    }

    public String getFreshchatUserId() {
        return C1704d.m39979C(getContext());
    }

    public FreshchatUserInteractionListener getFreshchatUserInteractionListener() {
        WeakReference<FreshchatUserInteractionListener> weakReference = this.freshchatUserInteractionListenerReference;
        return weakReference != null ? weakReference.get() : null;
    }

    public final void getUnreadCountAsync(UnreadCountCallback unreadCountCallback) {
        getUnreadCountAsync(unreadCountCallback, null);
    }

    public final void getUnreadCountAsync(final UnreadCountCallback unreadCountCallback, final List<String> list) {
        if (unreadCountCallback == null) {
            C1613ai.m40283e("FRESHCHAT_WARNING", "Invalid callback received. Not fetching unread count");
            return;
        }
        if (this.context == null) {
            C1921w c1921w = new C1921w();
            c1921w.m39315a(FreshchatCallbackStatus.STATUS_ERROR);
            executeUnreadCountCallback(unreadCountCallback, c1921w.m39314dO(), c1921w.getCount());
        }
        C1638b.m40161a(this.context, 5, C1898d.EnumC1899a.LAID_BACK, new AbstractC1804a() { // from class: com.freshchat.consumer.sdk.Freshchat.1
            @Override // com.freshchat.consumer.sdk.service.AbstractC1804a
            /* renamed from: a */
            public void mo39382a(AbstractC1907k abstractC1907k) {
                C1870d.m39383c(Freshchat.this.context, new C1903g().m39332t(list), new AbstractC1804a<C1921w>() { // from class: com.freshchat.consumer.sdk.Freshchat.1.1
                    /* renamed from: a */
                    public void mo39382a(C1921w c1921w2) {
                        if (c1921w2 != null) {
                            Freshchat.executeUnreadCountCallback(unreadCountCallback, c1921w2.m39314dO(), c1921w2.getCount());
                        }
                    }
                });
            }
        });
    }

    public FreshchatUser getUser() {
        C1466e m40905i = C1466e.m40905i(this.context);
        return C1704d.m39974b(getContext(), new FreshchatUser(m40905i.m40965bk(), m40905i.m40985bI()));
    }

    public JwtTokenStatus getUserIdTokenStatus() {
        return C1720o.m39843bz(getContext());
    }

    public FreshchatWebViewListener getWebviewListener() {
        WeakReference<FreshchatWebViewListener> weakReference = this.webviewListenerReference;
        return weakReference != null ? weakReference.get() : null;
    }

    public Freshchat identifyUser(String str, String str2) throws MethodNotAllowedException {
        int m39972b;
        C1720o.m39835v(getContext(), "identifyUser()");
        try {
            C1466e m40905i = C1466e.m40905i(this.context);
            m39972b = C1704d.m39972b(m40905i.m40965bk(), m40905i.m40985bI(), str, str2);
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
        if (m39972b == 100 || m39972b == 200) {
            return INSTANCE;
        }
        if (m39972b == 300 || m39972b == 400) {
            resetUser(this.context);
        }
        C1638b.m40157a(this.context, new User().setExternalId(str).setRestoreId(str2));
        return INSTANCE;
    }

    public void init(FreshchatConfig freshchatConfig) {
        if (!C1630aw.m40206eQ()) {
            C1613ai.m40278w("FRESHCHAT_WARNING", EnumC1464c.ERROR_UNSUPPORTED_OS_VERSION.toString());
        } else if (!C1731w.m39793ay(this.context)) {
            C1638b.m40170L(this.context);
            C1613ai.m40278w("FRESHCHAT_WARNING", "Account is not active");
            C1471i.m40855a(this.context, C1298R.string.freshchat_error_message_account_not_active);
        } else {
            try {
                C1733y.m39778a(freshchatConfig);
            } catch (InvalidDomainException e) {
                C1471i.m40837e(this.context, e.getMessage());
            }
            C1594aa.m40355aH(getContext());
            C1642ba.m40126fX();
            if (freshchatConfig.isCameraCaptureEnabled()) {
                C1710g.m39952ak(this.context);
            }
            try {
                C1619am.m40258aT(getContext());
            } catch (PermissionNotGrantedException e2) {
                C1613ai.m40282e("FRESHCHAT_WARNING", "Permission required for Freshchat is missing!", e2);
            }
            C1641c.m40128fD();
            registerLifecycleCallbacks();
            C1466e.m40905i(this.context).m40936dp();
            C1466e.m40905i(this.context).m40929fl();
            C1908l c1908l = new C1908l(freshchatConfig);
            if (C1626as.isEmpty(C1466e.m40905i(this.context).getAppId())) {
                C1733y.m39779a(this.context, c1908l);
            }
            C1870d.m39385b(this.context, c1908l);
            C1638b.m40167R(this.context);
            C1613ai.m40284d("FRESHCHAT", "Freshchat init completed for app " + freshchatConfig.getAppId());
        }
    }

    public Freshchat linkifyWithPattern(String str, String str2) {
        C1466e m40905i = C1466e.m40905i(getContext());
        m40905i.m40879w(str);
        m40905i.m40877x(str2);
        return INSTANCE;
    }

    public Freshchat restoreUser(String str) throws MethodNotAllowedException, JwtException {
        int m39968v;
        C1720o.m39834w(getContext(), "restoreUser()");
        C1720o.m39839r(str, "restoreUser()");
        if (!C1720o.m39851ba(str)) {
            C1720o.m39858a(getContext(), JwtTokenStatus.TOKEN_INVALID, str);
            throw new JwtException(C22128a.m8725C2("JWT Id Token provided in ", "restoreUser()", " doesn't have the mandatory field reference_id"));
        }
        try {
            m39968v = C1704d.m39968v(C1466e.m40905i(this.context).m40918gh(), str);
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
        if (m39968v == 100 || m39968v == 200) {
            return INSTANCE;
        }
        if (m39968v == 300 || m39968v == 400) {
            resetUser(this.context);
        }
        C1720o.m39858a(getContext(), JwtTokenStatus.TOKEN_NOT_PROCESSED, str);
        C1638b.m40157a(this.context, new User().setJwtIdToken(str));
        return INSTANCE;
    }

    public void setCustomLinkHandler(LinkHandler linkHandler) {
        if (linkHandler == null) {
            this.linkHandlerReference = null;
        } else {
            this.linkHandlerReference = new WeakReference<>(linkHandler);
        }
    }

    public void setFreshchatUserInteractionListener(FreshchatUserInteractionListener freshchatUserInteractionListener) {
        this.freshchatUserInteractionListenerReference = new WeakReference<>(freshchatUserInteractionListener);
    }

    public Freshchat setNotificationConfig(FreshchatNotificationConfig freshchatNotificationConfig) {
        if (freshchatNotificationConfig != null) {
            C1555b.m40539a(getContext(), freshchatNotificationConfig);
            C1555b.m40543O(getContext());
        } else {
            C1613ai.m40278w("FRESHCHAT", EnumC1464c.INVALID_NOTIFICATION_CONFIG.toString());
        }
        return INSTANCE;
    }

    public void setPushRegistrationToken(String str) {
        C1466e m40905i = C1466e.m40905i(this.context);
        String m40980bP = m40905i.m40980bP();
        if (C1626as.isEmpty(str) || C1626as.m40223o(str, m40980bP)) {
            return;
        }
        m40905i.m41007G(str);
        C1638b.m40168Q(this.context, str);
    }

    public Freshchat setUser(FreshchatUser freshchatUser) throws MethodNotAllowedException {
        C1720o.m39835v(this.context, "setUser()");
        if (freshchatUser != null) {
            C1704d.m39978a(this.context, freshchatUser);
            return INSTANCE;
        }
        throw new IllegalArgumentException("setUser() requires a valid FreshchatUser object");
    }

    public Freshchat setUser(String str) throws MethodNotAllowedException, JwtException {
        C1720o.m39834w(getContext(), "setUser()");
        C1720o.m39839r(str, "setUser()");
        C1720o.m39842f(this.context, str, "setUser()");
        if (C1626as.m40223o(C1466e.m40905i(this.context).m40918gh(), str)) {
            return INSTANCE;
        }
        C1720o.m39858a(getContext(), JwtTokenStatus.TOKEN_NOT_PROCESSED, str);
        C1720o.m39833x(this.context, str);
        return INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.freshchat.consumer.sdk.Freshchat setUserProperties(java.util.Map<java.lang.String, java.lang.String> r5) throws com.freshchat.consumer.sdk.exception.MethodNotAllowedException {
        /*
            r4 = this;
            r0 = r4
            android.content.Context r0 = r0.getContext()
            java.lang.String r1 = "setUserProperties()"
            com.freshchat.consumer.sdk.p057j.C1720o.m39835v(r0, r1)
            r0 = r5
            boolean r0 = com.freshchat.consumer.sdk.p057j.C1716k.m39894d(r0)
            if (r0 == 0) goto L54
            r0 = r5
            java.util.Set r0 = r0.keySet()
            java.util.Iterator r0 = r0.iterator()
            r6 = r0
        L1d:
            r0 = r6
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L4c
            r0 = r6
            java.lang.Object r0 = r0.next()
            java.lang.String r0 = (java.lang.String) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L41
            r0 = r5
            r1 = r7
            java.lang.Object r0 = r0.get(r1)
            if (r0 == 0) goto L41
            goto L1d
        L41:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "setUserProperties() requires non null keys and values"
            r1.<init>(r2)
            throw r0
        L4c:
            r0 = r4
            android.content.Context r0 = r0.context
            r1 = r5
            com.freshchat.consumer.sdk.p057j.C1704d.m39977a(r0, r1)
        L54:
            com.freshchat.consumer.sdk.Freshchat r0 = com.freshchat.consumer.sdk.Freshchat.INSTANCE
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.Freshchat.setUserProperties(java.util.Map):com.freshchat.consumer.sdk.Freshchat");
    }

    public Freshchat setUserProperty(String str, String str2) throws MethodNotAllowedException {
        C1720o.m39835v(getContext(), "setUserProperty()");
        if (str == null || str2 == null) {
            throw new IllegalArgumentException("setUserProperty() requires a non null key and value");
        }
        HashMap hashMap = new HashMap();
        hashMap.put(str, str2);
        setUserProperties(hashMap);
        return INSTANCE;
    }

    public void setWebviewListener(FreshchatWebViewListener freshchatWebViewListener) {
        if (freshchatWebViewListener == null) {
            this.webviewListenerReference = null;
        } else {
            this.webviewListenerReference = new WeakReference<>(freshchatWebViewListener);
        }
    }
}
