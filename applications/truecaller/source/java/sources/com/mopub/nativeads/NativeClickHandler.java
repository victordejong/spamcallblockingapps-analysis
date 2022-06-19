package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.Preconditions;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import e.n.d.j;
import e.n.d.o;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/NativeClickHandler.class */
public class NativeClickHandler {

    /* renamed from: a */
    public final Context f9111a;

    /* renamed from: b */
    public final String f9112b;

    /* renamed from: c */
    public boolean f9113c;

    /* renamed from: com.mopub.nativeads.NativeClickHandler$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/NativeClickHandler$a.class */
    public class View$OnClickListenerC2709a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ ClickInterface f9114a;

        public View$OnClickListenerC2709a(NativeClickHandler nativeClickHandler, ClickInterface clickInterface) {
            this.f9114a = clickInterface;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f9114a.handleClick(view);
        }
    }

    public NativeClickHandler(Context context) {
        this(context, null);
    }

    public NativeClickHandler(Context context, String str) {
        Preconditions.checkNotNull(context);
        this.f9111a = context.getApplicationContext();
        this.f9112b = str;
    }

    /* renamed from: a */
    public final void m36181a(View view, View.OnClickListener onClickListener) {
        view.setOnClickListener(onClickListener);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                m36181a(viewGroup.getChildAt(i), onClickListener);
            }
        }
    }

    public void clearOnClickListener(View view) {
        if (!Preconditions.NoThrow.checkNotNull(view, "Cannot clear click listener from a null view")) {
            return;
        }
        m36181a(view, null);
    }

    public void openClickDestinationUrl(String str, View view) {
        o oVar = new o(this.f9111a);
        if (!Preconditions.NoThrow.checkNotNull(str, "Cannot open a null click destination url")) {
            return;
        }
        Preconditions.checkNotNull(oVar);
        if (this.f9113c) {
            return;
        }
        this.f9113c = true;
        if (view != null) {
            oVar.a(view);
        }
        UrlHandler.Builder builder = new UrlHandler.Builder();
        if (!TextUtils.isEmpty(this.f9112b)) {
            builder.withDspCreativeId(this.f9112b);
        }
        builder.withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).withResultActions(new j(this, view, oVar)).build().handleUrl(this.f9111a, str);
    }

    public void setOnClickListener(View view, ClickInterface clickInterface) {
        if (Preconditions.NoThrow.checkNotNull(view, "Cannot set click listener on a null view") && Preconditions.NoThrow.checkNotNull(clickInterface, "Cannot set click listener with a null ClickInterface")) {
            m36181a(view, new View$OnClickListenerC2709a(this, clickInterface));
        }
    }
}
