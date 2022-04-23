package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.widget.RelativeLayout;
import com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicBoolean;
@SuppressLint({"ViewConstructor"})
/* renamed from: com.flurry.sdk.fb */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/fb.class */
public class C3065fb extends AbstractC3066fc {

    /* renamed from: e */
    public static final String f4866e = C3065fb.class.getSimpleName();

    /* renamed from: g */
    public boolean f4868g;

    /* renamed from: i */
    public float f4869i;

    /* renamed from: f */
    public int f4867f = 0;

    /* renamed from: j */
    public AtomicBoolean f4870j = new AtomicBoolean(false);

    public C3065fb(Context context, AbstractC3518x xVar, AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a aVar) {
        super(context, xVar, aVar);
        this.f4868g = false;
        this.f4869i = 0.0f;
        if (((AbstractC3066fc) this).f4874c == null) {
            ((AbstractC3066fc) this).f4874c = new C3088fj(context);
        }
        C3088fj fjVar = ((AbstractC3066fc) this).f4874c;
        if (fjVar != null) {
            fjVar.f4969a = this;
        }
        setAutoPlay(xVar.mo32279k().f4111b.f4147b.f4454t);
        C3021eh b = xVar.mo32279k().m33532b();
        setVideoUri(m33158c(b != null ? C3452lf.m32439a(b.m33276a()) : null));
        C3021eh b2 = xVar.mo32279k().m33532b();
        String str = null;
        if (b2 != null) {
            String b3 = b2.m33272b();
            str = null;
            if (!TextUtils.isEmpty(b3)) {
                str = C3452lf.m32439a(b3);
            }
        }
        this.f4868g = !TextUtils.isEmpty(str);
        int i = xVar.mo32279k().f4111b.f4147b.f4432A;
        this.f4869i = xVar.mo32279k().f4111b.f4147b.f4433B / 100.0f;
    }

    @Override // com.flurry.sdk.AbstractC3066fc
    /* renamed from: a */
    public final void mo33166a(int i) {
        super.mo33166a(i);
        if (!this.f4870j.get()) {
            String str = f4866e;
            C3356jq.m32615a(3, str, "Showing progress bar again. Cant play video as its not prepared yet." + this.f4870j.get());
            showProgressDialog();
        }
    }

    @Override // com.flurry.sdk.AbstractC3066fc, com.flurry.sdk.C3088fj.AbstractC3092a
    /* renamed from: a */
    public final void mo33122a(String str) {
        setAutoPlay(getAdObject().mo32279k().f4111b.f4147b.f4454t);
        super.mo33122a(str);
        this.f4870j.set(true);
        String str2 = f4866e;
        C3356jq.m32615a(3, str2, "Video prepared onVideoPrepared." + this.f4870j.get());
    }

    @Override // com.flurry.sdk.AbstractC3066fc, com.flurry.sdk.C3088fj.AbstractC3092a
    /* renamed from: a */
    public final void mo33121a(String str, float f, float f2) {
        super.mo33121a(str, f, f2);
        if (f2 > 3000.0f) {
            this.f4867f = this.f4868g ? this.f4867f | 4 : this.f4867f;
        }
        if (f2 > 3.0f) {
            this.f4867f |= 2;
            this.f4867f &= -9;
        }
        long j = getAdController().f4111b.f4147b.f4446l;
        if (f > 15000.0f) {
            j = getAdController().f4111b.f4147b.f4447m;
        }
        if (f2 > ((float) j)) {
            this.f4867f |= 1;
        }
        C3076ff e = getAdController().m33525e();
        float f3 = this.f4869i;
        if (f3 > 0.0f && f2 >= f3 * f && !e.f4901i) {
            C3356jq.m32615a(3, f4866e, "Reward granted: ");
            getAdController().m33525e().f4901i = true;
            m33165a(EnumC2874bi.EV_REWARD_GRANTED, Collections.emptyMap());
        }
        if (!this.f4870j.get()) {
            this.f4870j.set(true);
        }
    }

    @Override // com.flurry.sdk.AbstractC3066fc, com.flurry.sdk.C3088fj.AbstractC3092a
    /* renamed from: b */
    public final void mo33119b() {
        this.f4867f &= -9;
        super.mo33119b();
    }

    @Override // com.flurry.sdk.AbstractC3066fc, com.flurry.sdk.C3088fj.AbstractC3092a
    /* renamed from: b */
    public final void mo33118b(String str) {
        super.mo33118b(str);
        if (this.f4869i == 0.0f) {
            m33165a(EnumC2874bi.EV_REWARD_GRANTED, Collections.emptyMap());
        }
    }

    @Override // com.flurry.sdk.AbstractC3066fc
    /* renamed from: c */
    public final void mo33160c() {
        super.mo33160c();
        this.f4870j.set(false);
        String str = f4866e;
        C3356jq.m32615a(3, str, "Video prepared suspendVideo." + this.f4870j.get());
    }

    @Override // com.flurry.sdk.AbstractC3066fc, com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw
    public void cleanupLayout() {
        super.cleanupLayout();
        this.f4870j.set(false);
        String str = f4866e;
        C3356jq.m32615a(3, str, "Video prepared cleanupLayout." + this.f4870j.get());
    }

    @Override // com.flurry.sdk.AbstractC3066fc
    public int getViewParams() {
        if (this.f4867f == 0) {
            this.f4867f = getAdController().m33525e().f4902j;
        }
        return this.f4867f;
    }

    @Override // com.flurry.sdk.AbstractC3066fc, com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw
    public void initLayout() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        addView(((AbstractC3066fc) this).f4874c.f4972d, layoutParams);
        showProgressDialog();
    }

    @Override // com.flurry.sdk.AbstractC3066fc
    public void setAutoPlay(boolean z) {
        super.setAutoPlay(z);
        if (getAdController().m33525e().f4893a <= 3) {
            this.f4867f = z ? this.f4867f : this.f4867f | 8;
        }
    }
}
