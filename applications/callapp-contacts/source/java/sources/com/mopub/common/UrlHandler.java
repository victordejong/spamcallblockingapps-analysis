package com.mopub.common;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.mopub.common.UrlResolutionTask;
import com.mopub.common.logging.MoPubLog;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.network.TrackingRequest;
import java.util.EnumSet;
import java.util.Iterator;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/UrlHandler.class */
public class UrlHandler {

    /* renamed from: c */
    private static final ResultActions f58788c = new ResultActions() { // from class: com.mopub.common.UrlHandler.1
        @Override // com.mopub.common.UrlHandler.ResultActions
        public final void urlHandlingFailed(String str, UrlAction urlAction) {
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public final void urlHandlingSucceeded(String str, UrlAction urlAction) {
        }
    };

    /* renamed from: d */
    private static final MoPubSchemeListener f58789d = new MoPubSchemeListener() { // from class: com.mopub.common.UrlHandler.2
        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public final void onClose() {
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public final void onCrash() {
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public final void onFailLoad() {
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public final void onFinishLoad() {
        }
    };

    /* renamed from: a */
    MoPubSchemeListener f58790a;

    /* renamed from: b */
    boolean f58791b;

    /* renamed from: e */
    private EnumSet<UrlAction> f58792e;

    /* renamed from: f */
    private ResultActions f58793f;

    /* renamed from: g */
    private String f58794g;

    /* renamed from: h */
    private boolean f58795h;

    /* renamed from: i */
    private boolean f58796i;

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/UrlHandler$Builder.class */
    public static class Builder {

        /* renamed from: a */
        private EnumSet<UrlAction> f58802a = EnumSet.of(UrlAction.NOOP);

        /* renamed from: b */
        private ResultActions f58803b = UrlHandler.f58788c;

        /* renamed from: c */
        private MoPubSchemeListener f58804c = UrlHandler.f58789d;

        /* renamed from: d */
        private boolean f58805d = false;

        /* renamed from: e */
        private String f58806e;

        public UrlHandler build() {
            return new UrlHandler(this.f58802a, this.f58803b, this.f58804c, this.f58805d, this.f58806e);
        }

        public Builder withDspCreativeId(String str) {
            this.f58806e = str;
            return this;
        }

        public Builder withMoPubSchemeListener(MoPubSchemeListener moPubSchemeListener) {
            this.f58804c = moPubSchemeListener;
            return this;
        }

        public Builder withResultActions(ResultActions resultActions) {
            this.f58803b = resultActions;
            return this;
        }

        public Builder withSupportedUrlActions(UrlAction urlAction, UrlAction... urlActionArr) {
            this.f58802a = EnumSet.of(urlAction, urlActionArr);
            return this;
        }

        public Builder withSupportedUrlActions(EnumSet<UrlAction> enumSet) {
            this.f58802a = EnumSet.copyOf((EnumSet) enumSet);
            return this;
        }

        public Builder withoutMoPubBrowser() {
            this.f58805d = true;
            return this;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/UrlHandler$MoPubSchemeListener.class */
    public interface MoPubSchemeListener {
        void onClose();

        void onCrash();

        void onFailLoad();

        void onFinishLoad();
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/UrlHandler$ResultActions.class */
    public interface ResultActions {
        void urlHandlingFailed(String str, UrlAction urlAction);

        void urlHandlingSucceeded(String str, UrlAction urlAction);
    }

    private UrlHandler(EnumSet<UrlAction> enumSet, ResultActions resultActions, MoPubSchemeListener moPubSchemeListener, boolean z, String str) {
        this.f58792e = EnumSet.copyOf((EnumSet) enumSet);
        this.f58793f = resultActions;
        this.f58790a = moPubSchemeListener;
        this.f58791b = z;
        this.f58794g = str;
        this.f58795h = false;
        this.f58796i = false;
    }

    /* renamed from: a */
    public void m6714a(String str, UrlAction urlAction, String str2, Throwable th) {
        Preconditions.checkNotNull(str2);
        UrlAction urlAction2 = urlAction;
        if (urlAction == null) {
            urlAction2 = UrlAction.NOOP;
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, str2, th);
        this.f58793f.urlHandlingFailed(str, urlAction2);
    }

    public boolean handleResolvedUrl(Context context, String str, boolean z, Iterable<String> iterable) {
        IntentNotResolvableException e;
        if (TextUtils.isEmpty(str)) {
            m6714a(str, (UrlAction) null, "Attempted to handle empty url.", (Throwable) null);
            return false;
        }
        UrlAction urlAction = UrlAction.NOOP;
        Uri parse = Uri.parse(str);
        Iterator it2 = this.f58792e.iterator();
        while (it2.hasNext()) {
            UrlAction urlAction2 = (UrlAction) it2.next();
            if (urlAction2.shouldTryHandlingUrl(parse)) {
                try {
                    urlAction2.handleUrl(this, context, parse, z, this.f58794g);
                    if (this.f58795h || this.f58796i || UrlAction.IGNORE_ABOUT_SCHEME.equals(urlAction2) || UrlAction.HANDLE_MOPUB_SCHEME.equals(urlAction2)) {
                        return true;
                    }
                    try {
                        TrackingRequest.makeTrackingHttpRequest(iterable, context);
                        this.f58793f.urlHandlingSucceeded(parse.toString(), urlAction2);
                        this.f58795h = true;
                        return true;
                    } catch (IntentNotResolvableException e2) {
                        e = e2;
                        MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, e.getMessage(), e);
                        urlAction = urlAction2;
                    }
                } catch (IntentNotResolvableException e3) {
                    e = e3;
                }
            }
        }
        m6714a(str, urlAction, "Link ignored. Unable to handle url: ".concat(String.valueOf(str)), (Throwable) null);
        return false;
    }

    public void handleUrl(Context context, String str) {
        Preconditions.checkNotNull(context);
        handleUrl(context, str, true);
    }

    public void handleUrl(Context context, String str, boolean z) {
        Preconditions.checkNotNull(context);
        handleUrl(context, str, z, null);
    }

    public void handleUrl(final Context context, final String str, final boolean z, final Iterable<String> iterable) {
        Preconditions.checkNotNull(context);
        if (TextUtils.isEmpty(str)) {
            m6714a(str, (UrlAction) null, "Attempted to handle empty url.", (Throwable) null);
            return;
        }
        UrlResolutionTask.getResolvedUrl(str, new UrlResolutionTask.AbstractC16706a() { // from class: com.mopub.common.UrlHandler.3
            @Override // com.mopub.common.UrlResolutionTask.AbstractC16706a
            public final void onFailure(String str2, Throwable th) {
                UrlHandler.this.f58796i = false;
                UrlHandler.this.m6714a(str, (UrlAction) null, str2, th);
            }

            @Override // com.mopub.common.UrlResolutionTask.AbstractC16706a
            public final void onSuccess(String str2) {
                UrlHandler.this.f58796i = false;
                UrlHandler.this.handleResolvedUrl(context, str2, z, iterable);
            }
        });
        this.f58796i = true;
    }
}
