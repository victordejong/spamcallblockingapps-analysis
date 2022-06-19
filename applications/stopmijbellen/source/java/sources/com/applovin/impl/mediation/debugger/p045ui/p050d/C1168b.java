package com.applovin.impl.mediation.debugger.p045ui.p050d;

import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.TextView;
/* renamed from: com.applovin.impl.mediation.debugger.ui.d.b */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/ui/d/b.class */
public class C1168b {

    /* renamed from: a */
    public TextView f4220a;

    /* renamed from: b */
    public TextView f4221b;

    /* renamed from: c */
    public ImageView f4222c;

    /* renamed from: d */
    public ImageView f4223d;

    /* renamed from: e */
    private C1169c f4224e;

    /* renamed from: f */
    private int f4225f;

    /* renamed from: a */
    public int m6260a() {
        return this.f4225f;
    }

    /* renamed from: a */
    public void m6259a(int i) {
        this.f4225f = i;
    }

    /* renamed from: a */
    public void m6258a(C1169c c1169c) {
        this.f4224e = c1169c;
        this.f4220a.setText(c1169c.m6247k());
        this.f4220a.setTextColor(c1169c.m6245n());
        if (this.f4221b != null) {
            if (!TextUtils.isEmpty(c1169c.mo6253c_())) {
                this.f4221b.setTypeface(null, 0);
                this.f4221b.setVisibility(0);
                this.f4221b.setText(c1169c.mo6253c_());
                this.f4221b.setTextColor(c1169c.mo6254c());
                if (c1169c.mo6252d_()) {
                    this.f4221b.setTypeface(null, 1);
                }
            } else {
                this.f4221b.setVisibility(8);
            }
        }
        if (this.f4222c != null) {
            if (c1169c.mo6251e() > 0) {
                this.f4222c.setImageResource(c1169c.mo6251e());
                this.f4222c.setColorFilter(c1169c.m6244o());
                this.f4222c.setVisibility(0);
            } else {
                this.f4222c.setVisibility(8);
            }
        }
        if (this.f4223d != null) {
            if (c1169c.mo6213f() <= 0) {
                this.f4223d.setVisibility(8);
                return;
            }
            this.f4223d.setImageResource(c1169c.mo6213f());
            this.f4223d.setColorFilter(c1169c.mo6212g());
            this.f4223d.setVisibility(0);
        }
    }

    /* renamed from: b */
    public C1169c m6257b() {
        return this.f4224e;
    }
}
