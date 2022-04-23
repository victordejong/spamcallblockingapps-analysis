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
import com.twitter.sdk.android.core.b;
import com.twitter.sdk.android.core.j;
import com.twitter.sdk.android.core.n;
import com.twitter.sdk.android.core.r;
import com.twitter.sdk.android.core.t;
import java.lang.ref.WeakReference;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/identity/TwitterLoginButton.class */
public class TwitterLoginButton extends Button {

    /* renamed from: a  reason: collision with root package name */
    final WeakReference<Activity> f35109a;

    /* renamed from: b  reason: collision with root package name */
    volatile h f35110b;

    /* renamed from: c  reason: collision with root package name */
    View.OnClickListener f35111c;

    /* renamed from: d  reason: collision with root package name */
    b<t> f35112d;

    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/identity/TwitterLoginButton$a.class */
    final class a implements View.OnClickListener {
        private a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (TwitterLoginButton.this.f35112d == null) {
                com.twitter.sdk.android.core.internal.b.a("Twitter", "Callback must not be null, did you call setCallback?");
            }
            Activity activity = TwitterLoginButton.this.f35109a.get();
            if (activity == null || activity.isFinishing()) {
                com.twitter.sdk.android.core.internal.b.a("Twitter", "TwitterLoginButton requires an activity. Override getActivity to provide the activity for this button.");
            }
            TwitterLoginButton.this.a().a(TwitterLoginButton.this.f35109a.get(), TwitterLoginButton.this.f35112d);
            if (TwitterLoginButton.this.f35111c != null) {
                TwitterLoginButton.this.f35111c.onClick(view);
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

    TwitterLoginButton(Context context, AttributeSet attributeSet, int i, h hVar) {
        super(context, attributeSet, i);
        Activity activity;
        if ((getContext() instanceof ContextThemeWrapper) && (((ContextThemeWrapper) getContext()).getBaseContext() instanceof Activity)) {
            activity = (Activity) ((ContextThemeWrapper) getContext()).getBaseContext();
        } else if (getContext() instanceof Activity) {
            activity = (Activity) getContext();
        } else if (isInEditMode()) {
            activity = null;
        } else {
            throw new IllegalStateException("TwitterLoginButton requires an activity. Override getActivity to provide the activity for this button.");
        }
        this.f35109a = new WeakReference<>(activity);
        this.f35110b = hVar;
        Resources resources = getResources();
        super.setCompoundDrawablesWithIntrinsicBounds(resources.getDrawable(j.c.tw__ic_logo_default), (Drawable) null, (Drawable) null, (Drawable) null);
        super.setCompoundDrawablePadding(resources.getDimensionPixelSize(j.b.tw__login_btn_drawable_padding));
        super.setText(j.f.tw__login_btn_txt);
        super.setTextColor(resources.getColor(j.a.tw__solid_white));
        super.setTextSize(0, resources.getDimensionPixelSize(j.b.tw__login_btn_text_size));
        super.setTypeface(Typeface.DEFAULT_BOLD);
        super.setPadding(resources.getDimensionPixelSize(j.b.tw__login_btn_left_padding), 0, resources.getDimensionPixelSize(j.b.tw__login_btn_right_padding), 0);
        super.setBackgroundResource(j.c.tw__login_btn);
        super.setOnClickListener(new a());
        if (Build.VERSION.SDK_INT >= 21) {
            super.setAllCaps(false);
        }
        if (!isInEditMode()) {
            try {
                r.a();
            } catch (IllegalStateException e) {
                n.c().c("Twitter", e.getMessage());
                setEnabled(false);
            }
        }
    }

    final h a() {
        if (this.f35110b == null) {
            synchronized (TwitterLoginButton.class) {
                try {
                    if (this.f35110b == null) {
                        this.f35110b = new h();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f35110b;
    }

    public void setCallback(b<t> bVar) {
        if (bVar != null) {
            this.f35112d = bVar;
            return;
        }
        throw new IllegalArgumentException("Callback cannot be null");
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f35111c = onClickListener;
    }
}
