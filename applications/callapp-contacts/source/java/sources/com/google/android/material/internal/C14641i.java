package com.google.android.material.internal;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.p371h.AbstractC14603f;
import com.google.android.material.p371h.C14599d;
import java.lang.ref.WeakReference;
/* renamed from: com.google.android.material.internal.i */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/i.class */
public final class C14641i {

    /* renamed from: c */
    WeakReference<AbstractC14643a> f53428c;

    /* renamed from: d */
    public C14599d f53429d;

    /* renamed from: f */
    private float f53431f;

    /* renamed from: a */
    public final TextPaint f53426a = new TextPaint(1);

    /* renamed from: e */
    private final AbstractC14603f f53430e = new AbstractC14603f() { // from class: com.google.android.material.internal.i.1
        @Override // com.google.android.material.p371h.AbstractC14603f
        /* renamed from: a */
        public final void mo10516a(int i) {
            C14641i.this.f53427b = true;
            AbstractC14643a abstractC14643a = C14641i.this.f53428c.get();
            if (abstractC14643a != null) {
                abstractC14643a.mo10370b();
            }
        }

        @Override // com.google.android.material.p371h.AbstractC14603f
        /* renamed from: a */
        public final void mo10515a(Typeface typeface, boolean z) {
            if (z) {
                return;
            }
            C14641i.this.f53427b = true;
            AbstractC14643a abstractC14643a = C14641i.this.f53428c.get();
            if (abstractC14643a == null) {
                return;
            }
            abstractC14643a.mo10370b();
        }
    };

    /* renamed from: b */
    public boolean f53427b = true;

    /* renamed from: com.google.android.material.internal.i$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/i$a.class */
    public interface AbstractC14643a {
        /* renamed from: b */
        void mo10370b();

        int[] getState();

        boolean onStateChange(int[] iArr);
    }

    public C14641i(AbstractC14643a abstractC14643a) {
        this.f53428c = new WeakReference<>(null);
        this.f53428c = new WeakReference<>(abstractC14643a);
    }

    /* renamed from: a */
    private float m10518a(CharSequence charSequence) {
        return charSequence == null ? BitmapDescriptorFactory.HUE_RED : this.f53426a.measureText(charSequence, 0, charSequence.length());
    }

    /* renamed from: a */
    public final float m10517a(String str) {
        if (!this.f53427b) {
            return this.f53431f;
        }
        float m10518a = m10518a((CharSequence) str);
        this.f53431f = m10518a;
        this.f53427b = false;
        return m10518a;
    }

    /* renamed from: a */
    public final void m10520a(Context context) {
        this.f53429d.m10645a(context, this.f53426a, this.f53430e);
    }

    /* renamed from: a */
    public final void m10519a(C14599d c14599d, Context context) {
        if (this.f53429d != c14599d) {
            this.f53429d = c14599d;
            if (c14599d != null) {
                c14599d.m10641b(context, this.f53426a, this.f53430e);
                AbstractC14643a abstractC14643a = this.f53428c.get();
                if (abstractC14643a != null) {
                    this.f53426a.drawableState = abstractC14643a.getState();
                }
                c14599d.m10645a(context, this.f53426a, this.f53430e);
                this.f53427b = true;
            }
            AbstractC14643a abstractC14643a2 = this.f53428c.get();
            if (abstractC14643a2 == null) {
                return;
            }
            abstractC14643a2.mo10370b();
            abstractC14643a2.onStateChange(abstractC14643a2.getState());
        }
    }
}
