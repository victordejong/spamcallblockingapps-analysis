package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.Preconditions;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/NativeClickHandler.class */
public class NativeClickHandler {

    /* renamed from: a */
    private final Context f60055a;

    /* renamed from: b */
    private final String f60056b;

    /* renamed from: c */
    private boolean f60057c;

    public NativeClickHandler(Context context) {
        this(context, null);
    }

    public NativeClickHandler(Context context, String str) {
        Preconditions.checkNotNull(context);
        this.f60055a = context.getApplicationContext();
        this.f60056b = str;
    }

    /* renamed from: a */
    private void m6155a(View view, View.OnClickListener onClickListener) {
        view.setOnClickListener(onClickListener);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                m6155a(viewGroup.getChildAt(i), onClickListener);
            }
        }
    }

    public void clearOnClickListener(View view) {
        if (!Preconditions.NoThrow.checkNotNull(view, "Cannot clear click listener from a null view")) {
            return;
        }
        m6155a(view, null);
    }

    public void openClickDestinationUrl(String str, final View view) {
        final C16987i c16987i = new C16987i(this.f60055a);
        if (Preconditions.NoThrow.checkNotNull(str, "Cannot open a null click destination url")) {
            Preconditions.checkNotNull(c16987i);
            if (this.f60057c) {
                return;
            }
            this.f60057c = true;
            if (view != null) {
                c16987i.m6096a(view);
            }
            UrlHandler.Builder builder = new UrlHandler.Builder();
            if (!TextUtils.isEmpty(this.f60056b)) {
                builder.withDspCreativeId(this.f60056b);
            }
            builder.withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).withResultActions(new UrlHandler.ResultActions() { // from class: com.mopub.nativeads.NativeClickHandler.2
                /* renamed from: a */
                private void m6153a() {
                    if (view != null) {
                        c16987i.m6097a();
                    }
                }

                @Override // com.mopub.common.UrlHandler.ResultActions
                public final void urlHandlingFailed(String str2, UrlAction urlAction) {
                    m6153a();
                    NativeClickHandler.this.f60057c = false;
                }

                @Override // com.mopub.common.UrlHandler.ResultActions
                public final void urlHandlingSucceeded(String str2, UrlAction urlAction) {
                    m6153a();
                    NativeClickHandler.this.f60057c = false;
                }
            }).build().handleUrl(this.f60055a, str);
        }
    }

    public void setOnClickListener(View view, final ClickInterface clickInterface) {
        if (Preconditions.NoThrow.checkNotNull(view, "Cannot set click listener on a null view") && Preconditions.NoThrow.checkNotNull(clickInterface, "Cannot set click listener with a null ClickInterface")) {
            m6155a(view, new View.OnClickListener() { // from class: com.mopub.nativeads.NativeClickHandler.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    clickInterface.handleClick(view2);
                }
            });
        }
    }
}
