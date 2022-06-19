package com.truecaller.flashsdk.p166ui;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.database.ContentObserver;
import android.graphics.PorterDuff;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.truecaller.flashsdk.C3909R;
import java.lang.ref.WeakReference;
import p193e.p194a.p1365y.p1382c.C21632c;
import p193e.p194a.p1365y.p1386d.C21719l;
/* renamed from: com.truecaller.flashsdk.ui.FlashButton */
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/FlashButton.class */
public class FlashButton extends FrameLayout implements View.OnClickListener {

    /* renamed from: o */
    public static final /* synthetic */ int f12022o = 0;

    /* renamed from: a */
    public final Handler f12023a;

    /* renamed from: b */
    public final ImageView f12024b;

    /* renamed from: c */
    public final Context f12025c;

    /* renamed from: d */
    public long f12026d;

    /* renamed from: e */
    public long f12027e;

    /* renamed from: f */
    public String f12028f;

    /* renamed from: g */
    public String f12029g;

    /* renamed from: h */
    public int f12030h;

    /* renamed from: i */
    public int f12031i;

    /* renamed from: j */
    public PorterDuff.Mode f12032j;

    /* renamed from: k */
    public PorterDuff.Mode f12033k;

    /* renamed from: l */
    public C3930b f12034l;

    /* renamed from: m */
    public View.OnClickListener f12035m;

    /* renamed from: n */
    public final Runnable f12036n;

    /* renamed from: com.truecaller.flashsdk.ui.FlashButton$a */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/FlashButton$a.class */
    public class RunnableC3929a implements Runnable {
        public RunnableC3929a() {
            FlashButton.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            FlashButton flashButton = FlashButton.this;
            flashButton.f12024b.setColorFilter(flashButton.f12030h, flashButton.f12032j);
            FlashButton.this.mo35321d(0);
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.FlashButton$b */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/FlashButton$b.class */
    public static class C3930b extends ContentObserver {

        /* renamed from: a */
        public final Uri f12038a;

        /* renamed from: b */
        public final WeakReference<FlashButton> f12039b;

        public C3930b(Uri uri, Handler handler, FlashButton flashButton) {
            super(handler);
            this.f12038a = uri;
            this.f12039b = new WeakReference<>(flashButton);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            onChange(z, this.f12038a);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            if (this.f12039b.get() != null) {
                FlashButton flashButton = this.f12039b.get();
                int i = FlashButton.f12022o;
                flashButton.m35375b();
            }
        }
    }

    public FlashButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FlashButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f12036n = new RunnableC3929a();
        FrameLayout.inflate(getContext(), getLayout(), this);
        setOnClickListener(this);
        this.f12025c = context;
        this.f12023a = new Handler();
        ImageView imageView = (ImageView) findViewById(C3909R.C3911id.flash_button_image);
        this.f12024b = imageView;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3909R.styleable.flash_button, i, 0);
        int color = obtainStyledAttributes.getColor(C3909R.styleable.flash_button_normalColor, -12303292);
        PorterDuff.Mode mode = obtainStyledAttributes.getInt(C3909R.styleable.flash_button_tintModeAccent, 0) != 1 ? PorterDuff.Mode.SRC_IN : PorterDuff.Mode.MULTIPLY;
        this.f12030h = color;
        this.f12032j = mode;
        imageView.setColorFilter(color, mode);
        int color2 = obtainStyledAttributes.getColor(C3909R.styleable.flash_button_disabledColor, -65536);
        PorterDuff.Mode mode2 = obtainStyledAttributes.getInt(C3909R.styleable.flash_button_tintModeProgress, 0) != 1 ? PorterDuff.Mode.SRC_IN : PorterDuff.Mode.MULTIPLY;
        this.f12031i = color2;
        this.f12033k = mode2;
        setButtonColor(obtainStyledAttributes.getColor(C3909R.styleable.flash_button_buttonColor, -16776961));
        obtainStyledAttributes.recycle();
        if (!isInEditMode()) {
            setVisibility(8);
        }
    }

    private Activity getActivity() {
        Context context;
        boolean z;
        Context context2 = getContext();
        while (true) {
            context = context2;
            z = context instanceof Activity;
            if (z || !(context instanceof ContextWrapper)) {
                break;
            }
            context2 = ((ContextWrapper) context).getBaseContext();
        }
        if (z) {
            return (Activity) context;
        }
        throw new RuntimeException("Unable to get Activity.");
    }

    /* renamed from: a */
    public void m35376a(long j, String str, String str2) {
        this.f12026d = j;
        this.f12029g = str;
        this.f12028f = str2;
        this.f12027e = C21632c.m9330b().mo9313e(Long.toString(this.f12026d)).f60487b;
        Uri withAppendedPath = Uri.withAppendedPath(C21719l.f60509a, Long.toString(this.f12026d));
        if (this.f12034l != null) {
            this.f12025c.getContentResolver().unregisterContentObserver(this.f12034l);
        }
        this.f12034l = new C3930b(withAppendedPath, this.f12023a, this);
        this.f12025c.getContentResolver().registerContentObserver(withAppendedPath, true, this.f12034l);
        setVisibility(0);
        m35375b();
    }

    /* renamed from: b */
    public final void m35375b() {
        this.f12027e = C21632c.m9330b().mo9313e(Long.toString(this.f12026d)).f60487b;
        long currentTimeMillis = DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL - (System.currentTimeMillis() - this.f12027e);
        this.f12024b.setColorFilter(this.f12030h, this.f12032j);
        if (currentTimeMillis <= 0) {
            mo35321d(0);
            return;
        }
        this.f12024b.setColorFilter(this.f12031i, this.f12033k);
        this.f12023a.removeCallbacks(this.f12036n);
        this.f12023a.postDelayed(this.f12036n, currentTimeMillis);
        mo35321d((int) currentTimeMillis);
    }

    /* renamed from: c */
    public boolean m35374c() {
        return this.f12026d != 0 && System.currentTimeMillis() - this.f12027e > DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL;
    }

    /* renamed from: d */
    public void mo35321d(int i) {
    }

    public int getLayout() {
        return C3909R.layout.com_flashsdk_flash_button;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (m35374c()) {
            C21632c.m9330b().mo9319K(getActivity(), this.f12026d, this.f12029g, this.f12028f);
            Bundle bundle = new Bundle();
            bundle.putString("flashContext", this.f12028f);
            C21632c.m9330b().mo9308j("FlashTapped", bundle);
        } else {
            C21632c.m9330b().mo9306l(getActivity(), this.f12026d, this.f12029g, this.f12028f, DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL - (System.currentTimeMillis() - this.f12027e));
        }
        View.OnClickListener onClickListener = this.f12035m;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f12036n;
        if (runnable != null) {
            this.f12023a.removeCallbacks(runnable);
        }
        if (this.f12034l != null) {
            this.f12025c.getContentResolver().unregisterContentObserver(this.f12034l);
        }
    }

    public void setAccentColor(int i) {
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        this.f12030h = i;
        this.f12032j = mode;
        this.f12024b.setColorFilter(i, mode);
    }

    public void setButtonColor(int i) {
    }

    public void setPostOnClickListener(View.OnClickListener onClickListener) {
        this.f12035m = onClickListener;
    }

    public void setProgressColor(int i) {
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        this.f12031i = i;
        this.f12033k = mode;
    }
}
