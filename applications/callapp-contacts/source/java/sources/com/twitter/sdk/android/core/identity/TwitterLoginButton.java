package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.Button;
import com.twitter.sdk.android.core.AbstractC17206b;
import com.twitter.sdk.android.core.C17270j;
import com.twitter.sdk.android.core.C17282n;
import com.twitter.sdk.android.core.C17288r;
import com.twitter.sdk.android.core.C17292t;
import com.twitter.sdk.android.core.internal.C17243b;
import java.lang.ref.WeakReference;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/identity/TwitterLoginButton.class */
public class TwitterLoginButton extends Button {

    /* renamed from: a */
    final WeakReference<Activity> f60954a;

    /* renamed from: b */
    volatile C17229h f60955b;

    /* renamed from: c */
    View.OnClickListener f60956c;

    /* renamed from: d */
    AbstractC17206b<C17292t> f60957d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.twitter.sdk.android.core.identity.TwitterLoginButton$a */
    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/identity/TwitterLoginButton$a.class */
    public final class View$OnClickListenerC17217a implements View.OnClickListener {
        private View$OnClickListenerC17217a() {
            TwitterLoginButton.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (TwitterLoginButton.this.f60957d == null) {
                C17243b.m5675a("Twitter", "Callback must not be null, did you call setCallback?");
            }
            Activity activity = TwitterLoginButton.this.f60954a.get();
            if (activity == null || activity.isFinishing()) {
                C17243b.m5675a("Twitter", "TwitterLoginButton requires an activity. Override getActivity to provide the activity for this button.");
            }
            TwitterLoginButton.this.m5706a().m5690a(TwitterLoginButton.this.f60954a.get(), TwitterLoginButton.this.f60957d);
            if (TwitterLoginButton.this.f60956c != null) {
                TwitterLoginButton.this.f60956c.onClick(view);
            }
        }
    }

    public TwitterLoginButton(Context context) {
        this(context, null);
    }

    public TwitterLoginButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842824);
    }

    public TwitterLoginButton(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, null);
    }

    TwitterLoginButton(Context context, AttributeSet attributeSet, int i, C17229h c17229h) {
        super(context, attributeSet, i);
        Activity activity;
        if ((getContext() instanceof ContextThemeWrapper) && (((ContextThemeWrapper) getContext()).getBaseContext() instanceof Activity)) {
            activity = (Activity) ((ContextThemeWrapper) getContext()).getBaseContext();
        } else if (getContext() instanceof Activity) {
            activity = (Activity) getContext();
        } else if (!isInEditMode()) {
            throw new IllegalStateException("TwitterLoginButton requires an activity. Override getActivity to provide the activity for this button.");
        } else {
            activity = null;
        }
        this.f60954a = new WeakReference<>(activity);
        this.f60955b = c17229h;
        Resources resources = getResources();
        super.setCompoundDrawablesWithIntrinsicBounds(resources.getDrawable(C17270j.C17273c.tw__ic_logo_default), (Drawable) null, (Drawable) null, (Drawable) null);
        super.setCompoundDrawablePadding(resources.getDimensionPixelSize(C17270j.C17272b.tw__login_btn_drawable_padding));
        super.setText(C17270j.C17276f.tw__login_btn_txt);
        super.setTextColor(resources.getColor(C17270j.C17271a.tw__solid_white));
        super.setTextSize(0, resources.getDimensionPixelSize(C17270j.C17272b.tw__login_btn_text_size));
        super.setTypeface(Typeface.DEFAULT_BOLD);
        super.setPadding(resources.getDimensionPixelSize(C17270j.C17272b.tw__login_btn_left_padding), 0, resources.getDimensionPixelSize(C17270j.C17272b.tw__login_btn_right_padding), 0);
        super.setBackgroundResource(C17270j.C17273c.tw__login_btn);
        super.setOnClickListener(new View$OnClickListenerC17217a());
        if (Build.VERSION.SDK_INT >= 21) {
            super.setAllCaps(false);
        }
        if (!isInEditMode()) {
            try {
                C17288r.m5626a();
            } catch (IllegalStateException e) {
                C17282n.m5628c().mo5711c("Twitter", e.getMessage());
                setEnabled(false);
            }
        }
    }

    /* renamed from: a */
    final C17229h m5706a() {
        if (this.f60955b == null) {
            synchronized (TwitterLoginButton.class) {
                try {
                    if (this.f60955b == null) {
                        this.f60955b = new C17229h();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f60955b;
    }

    public void setCallback(AbstractC17206b<C17292t> abstractC17206b) {
        if (abstractC17206b != null) {
            this.f60957d = abstractC17206b;
            return;
        }
        throw new IllegalArgumentException("Callback cannot be null");
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f60956c = onClickListener;
    }
}
