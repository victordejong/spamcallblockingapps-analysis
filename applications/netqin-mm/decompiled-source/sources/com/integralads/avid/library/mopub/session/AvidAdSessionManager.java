package com.integralads.avid.library.mopub.session;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.integralads.avid.library.mopub.AvidContext;
import com.integralads.avid.library.mopub.AvidManager;
import com.integralads.avid.library.mopub.registration.AvidAdSessionRegistry;
import com.integralads.avid.library.mopub.session.internal.InternalAvidAdSession;
import com.integralads.avid.library.mopub.session.internal.InternalAvidDisplayAdSession;
import com.integralads.avid.library.mopub.session.internal.InternalAvidManagedDisplayAdSession;
import com.integralads.avid.library.mopub.session.internal.InternalAvidManagedVideoAdSession;
import com.integralads.avid.library.mopub.session.internal.InternalAvidVideoAdSession;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/session/AvidAdSessionManager.class */
public class AvidAdSessionManager {
    /* renamed from: a */
    public static WebView m5392a(View view) {
        InternalAvidAdSession findInternalAvidAdSessionByView = AvidAdSessionRegistry.getInstance().findInternalAvidAdSessionByView(view);
        return findInternalAvidAdSessionByView != null ? findInternalAvidAdSessionByView.getWebView() : null;
    }

    public static <T extends AbstractAvidAdSession> T findAvidAdSessionById(String str) {
        return (T) AvidManager.getInstance().findAvidAdSessionById(str);
    }

    public static String getReleaseDate() {
        return AvidContext.getInstance().getAvidReleaseDate();
    }

    public static String getVersion() {
        return AvidContext.getInstance().getAvidVersion();
    }

    public static AvidDisplayAdSession startAvidDisplayAdSession(Context context, ExternalAvidAdSessionContext externalAvidAdSessionContext) {
        AvidManager.getInstance().init(context);
        AvidDisplayAdSession avidDisplayAdSession = new AvidDisplayAdSession();
        InternalAvidDisplayAdSession internalAvidDisplayAdSession = new InternalAvidDisplayAdSession(context, avidDisplayAdSession.getAvidAdSessionId(), externalAvidAdSessionContext);
        internalAvidDisplayAdSession.onStart();
        AvidManager.getInstance().registerAvidAdSession(avidDisplayAdSession, internalAvidDisplayAdSession);
        return avidDisplayAdSession;
    }

    public static AvidManagedDisplayAdSession startAvidManagedDisplayAdSession(Context context, ExternalAvidAdSessionContext externalAvidAdSessionContext) {
        AvidManager.getInstance().init(context);
        AvidManagedDisplayAdSession avidManagedDisplayAdSession = new AvidManagedDisplayAdSession();
        InternalAvidManagedDisplayAdSession internalAvidManagedDisplayAdSession = new InternalAvidManagedDisplayAdSession(context, avidManagedDisplayAdSession.getAvidAdSessionId(), externalAvidAdSessionContext);
        internalAvidManagedDisplayAdSession.onStart();
        AvidManager.getInstance().registerAvidAdSession(avidManagedDisplayAdSession, internalAvidManagedDisplayAdSession);
        return avidManagedDisplayAdSession;
    }

    public static AvidManagedVideoAdSession startAvidManagedVideoAdSession(Context context, ExternalAvidAdSessionContext externalAvidAdSessionContext) {
        AvidManager.getInstance().init(context);
        AvidManagedVideoAdSession avidManagedVideoAdSession = new AvidManagedVideoAdSession();
        InternalAvidManagedVideoAdSession internalAvidManagedVideoAdSession = new InternalAvidManagedVideoAdSession(context, avidManagedVideoAdSession.getAvidAdSessionId(), externalAvidAdSessionContext);
        internalAvidManagedVideoAdSession.onStart();
        AvidManager.getInstance().registerAvidAdSession(avidManagedVideoAdSession, internalAvidManagedVideoAdSession);
        return avidManagedVideoAdSession;
    }

    public static AvidVideoAdSession startAvidVideoAdSession(Context context, ExternalAvidAdSessionContext externalAvidAdSessionContext) {
        AvidManager.getInstance().init(context);
        AvidVideoAdSession avidVideoAdSession = new AvidVideoAdSession();
        InternalAvidVideoAdSession internalAvidVideoAdSession = new InternalAvidVideoAdSession(context, avidVideoAdSession.getAvidAdSessionId(), externalAvidAdSessionContext);
        internalAvidVideoAdSession.onStart();
        AvidManager.getInstance().registerAvidAdSession(avidVideoAdSession, internalAvidVideoAdSession);
        return avidVideoAdSession;
    }

    public static WebView webViewForSessionId(String str) {
        InternalAvidAdSession findInternalAvidAdSessionById = AvidAdSessionRegistry.getInstance().findInternalAvidAdSessionById(str);
        return findInternalAvidAdSessionById != null ? findInternalAvidAdSessionById.getWebView() : null;
    }

    public static WebView webViewForView(View view) {
        WebView a = m5392a(view);
        if (a != null) {
            return a;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        WebView webView = a;
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            webView = webViewForView(viewGroup.getChildAt(i));
            if (webView != null) {
                break;
            }
        }
        return webView;
    }
}
