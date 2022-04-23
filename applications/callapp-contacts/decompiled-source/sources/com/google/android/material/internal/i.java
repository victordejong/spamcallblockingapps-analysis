package com.google.android.material.internal;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.h.d;
import com.google.android.material.h.f;
import java.lang.ref.WeakReference;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/i.class */
public final class i {

    /* renamed from: c  reason: collision with root package name */
    WeakReference<a> f30643c;

    /* renamed from: d  reason: collision with root package name */
    public d f30644d;
    private float f;

    /* renamed from: a  reason: collision with root package name */
    public final TextPaint f30641a = new TextPaint(1);
    private final f e = new f() { // from class: com.google.android.material.internal.i.1
        @Override // com.google.android.material.h.f
        public final void a(int i) {
            i.this.f30642b = true;
            a aVar = i.this.f30643c.get();
            if (aVar != null) {
                aVar.b();
            }
        }

        @Override // com.google.android.material.h.f
        public final void a(Typeface typeface, boolean z) {
            if (!z) {
                i.this.f30642b = true;
                a aVar = i.this.f30643c.get();
                if (aVar != null) {
                    aVar.b();
                }
            }
        }
    };

    /* renamed from: b  reason: collision with root package name */
    public boolean f30642b = true;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/i$a.class */
    public interface a {
        void b();

        int[] getState();

        boolean onStateChange(int[] iArr);
    }

    public i(a aVar) {
        this.f30643c = new WeakReference<>(null);
        this.f30643c = new WeakReference<>(aVar);
    }

    private float a(CharSequence charSequence) {
        return charSequence == null ? BitmapDescriptorFactory.HUE_RED : this.f30641a.measureText(charSequence, 0, charSequence.length());
    }

    public final float a(String str) {
        if (!this.f30642b) {
            return this.f;
        }
        float a2 = a((CharSequence) str);
        this.f = a2;
        this.f30642b = false;
        return a2;
    }

    public final void a(Context context) {
        this.f30644d.a(context, this.f30641a, this.e);
    }

    public final void a(d dVar, Context context) {
        if (this.f30644d != dVar) {
            this.f30644d = dVar;
            if (dVar != null) {
                dVar.b(context, this.f30641a, this.e);
                a aVar = this.f30643c.get();
                if (aVar != null) {
                    this.f30641a.drawableState = aVar.getState();
                }
                dVar.a(context, this.f30641a, this.e);
                this.f30642b = true;
            }
            a aVar2 = this.f30643c.get();
            if (aVar2 != null) {
                aVar2.b();
                aVar2.onStateChange(aVar2.getState());
            }
        }
    }
}
