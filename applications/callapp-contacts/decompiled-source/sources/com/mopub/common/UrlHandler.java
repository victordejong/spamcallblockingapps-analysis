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

    /* renamed from: c  reason: collision with root package name */
    private static final ResultActions f33862c = new ResultActions() { // from class: com.mopub.common.UrlHandler.1
        @Override // com.mopub.common.UrlHandler.ResultActions
        public final void urlHandlingFailed(String str, UrlAction urlAction) {
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public final void urlHandlingSucceeded(String str, UrlAction urlAction) {
        }
    };

    /* renamed from: d  reason: collision with root package name */
    private static final MoPubSchemeListener f33863d = new MoPubSchemeListener() { // from class: com.mopub.common.UrlHandler.2
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

    /* renamed from: a  reason: collision with root package name */
    MoPubSchemeListener f33864a;

    /* renamed from: b  reason: collision with root package name */
    boolean f33865b;
    private EnumSet<UrlAction> e;
    private ResultActions f;
    private String g;
    private boolean h;
    private boolean i;

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/UrlHandler$Builder.class */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private EnumSet<UrlAction> f33870a = EnumSet.of(UrlAction.NOOP);

        /* renamed from: b  reason: collision with root package name */
        private ResultActions f33871b = UrlHandler.f33862c;

        /* renamed from: c  reason: collision with root package name */
        private MoPubSchemeListener f33872c = UrlHandler.f33863d;

        /* renamed from: d  reason: collision with root package name */
        private boolean f33873d = false;
        private String e;

        public UrlHandler build() {
            return new UrlHandler(this.f33870a, this.f33871b, this.f33872c, this.f33873d, this.e);
        }

        public Builder withDspCreativeId(String str) {
            this.e = str;
            return this;
        }

        public Builder withMoPubSchemeListener(MoPubSchemeListener moPubSchemeListener) {
            this.f33872c = moPubSchemeListener;
            return this;
        }

        public Builder withResultActions(ResultActions resultActions) {
            this.f33871b = resultActions;
            return this;
        }

        public Builder withSupportedUrlActions(UrlAction urlAction, UrlAction... urlActionArr) {
            this.f33870a = EnumSet.of(urlAction, urlActionArr);
            return this;
        }

        public Builder withSupportedUrlActions(EnumSet<UrlAction> enumSet) {
            this.f33870a = EnumSet.copyOf((EnumSet) enumSet);
            return this;
        }

        public Builder withoutMoPubBrowser() {
            this.f33873d = true;
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
        this.e = EnumSet.copyOf((EnumSet) enumSet);
        this.f = resultActions;
        this.f33864a = moPubSchemeListener;
        this.f33865b = z;
        this.g = str;
        this.h = false;
        this.i = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, UrlAction urlAction, String str2, Throwable th) {
        Preconditions.checkNotNull(str2);
        UrlAction urlAction2 = urlAction;
        if (urlAction == null) {
            urlAction2 = UrlAction.NOOP;
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, str2, th);
        this.f.urlHandlingFailed(str, urlAction2);
    }

    public boolean handleResolvedUrl(Context context, String str, boolean z, Iterable<String> iterable) {
        IntentNotResolvableException e;
        if (TextUtils.isEmpty(str)) {
            a(str, (UrlAction) null, "Attempted to handle empty url.", (Throwable) null);
            return false;
        }
        UrlAction urlAction = UrlAction.NOOP;
        Uri parse = Uri.parse(str);
        Iterator it2 = this.e.iterator();
        while (it2.hasNext()) {
            UrlAction urlAction2 = (UrlAction) it2.next();
            if (urlAction2.shouldTryHandlingUrl(parse)) {
                try {
                    urlAction2.handleUrl(this, context, parse, z, this.g);
                    if (this.h || this.i || UrlAction.IGNORE_ABOUT_SCHEME.equals(urlAction2) || UrlAction.HANDLE_MOPUB_SCHEME.equals(urlAction2)) {
                        return true;
                    }
                    try {
                        TrackingRequest.makeTrackingHttpRequest(iterable, context);
                        this.f.urlHandlingSucceeded(parse.toString(), urlAction2);
                        this.h = true;
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
        a(str, urlAction, "Link ignored. Unable to handle url: ".concat(String.valueOf(str)), (Throwable) null);
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
            a(str, (UrlAction) null, "Attempted to handle empty url.", (Throwable) null);
            return;
        }
        UrlResolutionTask.getResolvedUrl(str, new UrlResolutionTask.a() { // from class: com.mopub.common.UrlHandler.3
            @Override // com.mopub.common.UrlResolutionTask.a
            public final void onFailure(String str2, Throwable th) {
                UrlHandler.this.i = false;
                UrlHandler.this.a(str, (UrlAction) null, str2, th);
            }

            @Override // com.mopub.common.UrlResolutionTask.a
            public final void onSuccess(String str2) {
                UrlHandler.this.i = false;
                UrlHandler.this.handleResolvedUrl(context, str2, z, iterable);
            }
        });
        this.i = true;
    }
}
