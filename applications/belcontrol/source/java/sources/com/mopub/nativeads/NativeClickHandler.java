package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.Preconditions;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.VisibleForTesting;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/NativeClickHandler.class */
public class NativeClickHandler {

    /* renamed from: a */
    public final Context f5240a;

    /* renamed from: b */
    public final String f5241b;

    /* renamed from: c */
    public boolean f5242c;

    /* renamed from: com.mopub.nativeads.NativeClickHandler$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/NativeClickHandler$a.class */
    public class View$OnClickListenerC1201a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ ClickInterface f5243a;

        public View$OnClickListenerC1201a(NativeClickHandler nativeClickHandler, ClickInterface clickInterface) {
            this.f5243a = clickInterface;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f5243a.handleClick(view);
        }
    }

    /* renamed from: com.mopub.nativeads.NativeClickHandler$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/NativeClickHandler$b.class */
    public class C1202b implements UrlHandler.ResultActions {

        /* renamed from: a */
        public final /* synthetic */ View f5244a;

        /* renamed from: b */
        public final /* synthetic */ ci1 f5245b;

        public C1202b(View view, ci1 ci1Var) {
            NativeClickHandler.this = r4;
            this.f5244a = view;
            this.f5245b = ci1Var;
        }

        /* renamed from: a */
        public final void m3284a() {
            if (this.f5244a != null) {
                this.f5245b.m5330b();
            }
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingFailed(String str, UrlAction urlAction) {
            m3284a();
            NativeClickHandler.this.f5242c = false;
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingSucceeded(String str, UrlAction urlAction) {
            m3284a();
            NativeClickHandler.this.f5242c = false;
        }
    }

    public NativeClickHandler(Context context) {
        this(context, null);
    }

    public NativeClickHandler(Context context, String str) {
        Preconditions.checkNotNull(context);
        this.f5240a = context.getApplicationContext();
        this.f5241b = str;
    }

    @VisibleForTesting
    /* renamed from: b */
    public void m3286b(String str, View view, ci1 ci1Var) {
        if (!Preconditions.NoThrow.checkNotNull(str, "Cannot open a null click destination url")) {
            return;
        }
        Preconditions.checkNotNull(ci1Var);
        if (this.f5242c) {
            return;
        }
        this.f5242c = true;
        if (view != null) {
            ci1Var.m5331a(view);
        }
        UrlHandler.Builder builder = new UrlHandler.Builder();
        if (!TextUtils.isEmpty(this.f5241b)) {
            builder.withDspCreativeId(this.f5241b);
        }
        builder.withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).withResultActions(new C1202b(view, ci1Var)).build().handleUrl(this.f5240a, str);
    }

    /* renamed from: c */
    public final void m3285c(View view, View.OnClickListener onClickListener) {
        view.setOnClickListener(onClickListener);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                m3285c(viewGroup.getChildAt(i), onClickListener);
            }
        }
    }

    public void clearOnClickListener(View view) {
        if (!Preconditions.NoThrow.checkNotNull(view, "Cannot clear click listener from a null view")) {
            return;
        }
        m3285c(view, null);
    }

    public void openClickDestinationUrl(String str, View view) {
        m3286b(str, view, new ci1(this.f5240a));
    }

    public void setOnClickListener(View view, ClickInterface clickInterface) {
        if (Preconditions.NoThrow.checkNotNull(view, "Cannot set click listener on a null view") && Preconditions.NoThrow.checkNotNull(clickInterface, "Cannot set click listener with a null ClickInterface")) {
            m3285c(view, new View$OnClickListenerC1201a(this, clickInterface));
        }
    }
}
