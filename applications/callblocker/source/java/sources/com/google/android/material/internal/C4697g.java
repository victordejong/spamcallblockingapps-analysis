package com.google.android.material.internal;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;
import com.google.android.material.p156n.AbstractC4723f;
import com.google.android.material.p156n.C4719d;
import java.lang.ref.WeakReference;
/* renamed from: com.google.android.material.internal.g */
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/g.class */
public class C4697g {

    /* renamed from: c */
    private float f20381c;

    /* renamed from: f */
    private C4719d f20384f;

    /* renamed from: a */
    private final TextPaint f20379a = new TextPaint(1);

    /* renamed from: b */
    private final AbstractC4723f f20380b = new AbstractC4723f() { // from class: com.google.android.material.internal.g.1
        @Override // com.google.android.material.p156n.AbstractC4723f
        /* renamed from: a */
        public void mo2764a(int i) {
            C4697g.this.f20382d = true;
            AbstractC4699a abstractC4699a = (AbstractC4699a) C4697g.this.f20383e.get();
            if (abstractC4699a != null) {
                abstractC4699a.mo2833e();
            }
        }

        @Override // com.google.android.material.p156n.AbstractC4723f
        /* renamed from: a */
        public void mo2763a(Typeface typeface, boolean z) {
            if (z) {
                return;
            }
            C4697g.this.f20382d = true;
            AbstractC4699a abstractC4699a = (AbstractC4699a) C4697g.this.f20383e.get();
            if (abstractC4699a == null) {
                return;
            }
            abstractC4699a.mo2833e();
        }
    };

    /* renamed from: d */
    private boolean f20382d = true;

    /* renamed from: e */
    private WeakReference<AbstractC4699a> f20383e = new WeakReference<>(null);

    /* renamed from: com.google.android.material.internal.g$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/g$a.class */
    public interface AbstractC4699a {
        /* renamed from: e */
        void mo2833e();

        int[] getState();

        boolean onStateChange(int[] iArr);
    }

    public C4697g(AbstractC4699a abstractC4699a) {
        m2841a(abstractC4699a);
    }

    /* renamed from: a */
    private float m2837a(CharSequence charSequence) {
        return charSequence == null ? 0.0f : this.f20379a.measureText(charSequence, 0, charSequence.length());
    }

    /* renamed from: a */
    public float m2836a(String str) {
        float f;
        if (!this.f20382d) {
            f = this.f20381c;
        } else {
            this.f20381c = m2837a((CharSequence) str);
            this.f20382d = false;
            f = this.f20381c;
        }
        return f;
    }

    /* renamed from: a */
    public TextPaint m2843a() {
        return this.f20379a;
    }

    /* renamed from: a */
    public void m2842a(Context context) {
        this.f20384f.m2769b(context, this.f20379a, this.f20380b);
    }

    /* renamed from: a */
    public void m2841a(AbstractC4699a abstractC4699a) {
        this.f20383e = new WeakReference<>(abstractC4699a);
    }

    /* renamed from: a */
    public void m2838a(C4719d c4719d, Context context) {
        if (this.f20384f != c4719d) {
            this.f20384f = c4719d;
            if (c4719d != null) {
                c4719d.m2768c(context, this.f20379a, this.f20380b);
                AbstractC4699a abstractC4699a = this.f20383e.get();
                if (abstractC4699a != null) {
                    this.f20379a.drawableState = abstractC4699a.getState();
                }
                c4719d.m2769b(context, this.f20379a, this.f20380b);
                this.f20382d = true;
            }
            AbstractC4699a abstractC4699a2 = this.f20383e.get();
            if (abstractC4699a2 == null) {
                return;
            }
            abstractC4699a2.mo2833e();
            abstractC4699a2.onStateChange(abstractC4699a2.getState());
        }
    }

    /* renamed from: a */
    public void m2835a(boolean z) {
        this.f20382d = z;
    }

    /* renamed from: b */
    public C4719d m2834b() {
        return this.f20384f;
    }
}
