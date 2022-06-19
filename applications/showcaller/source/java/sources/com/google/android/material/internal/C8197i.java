package com.google.android.material.internal;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;
import java.lang.ref.WeakReference;
import p078c.p084c.p085a.p096b.p105u.AbstractC1924f;
import p078c.p084c.p085a.p096b.p105u.C1920d;
/* renamed from: com.google.android.material.internal.i */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/i.class */
public class C8197i {

    /* renamed from: c */
    private float f37019c;

    /* renamed from: f */
    private C1920d f37022f;

    /* renamed from: a */
    private final TextPaint f37017a = new TextPaint(1);

    /* renamed from: b */
    private final AbstractC1924f f37018b = new C8198a();

    /* renamed from: d */
    private boolean f37020d = true;

    /* renamed from: e */
    private WeakReference<AbstractC8199b> f37021e = new WeakReference<>(null);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.internal.i$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/i$a.class */
    public class C8198a extends AbstractC1924f {
        C8198a() {
            C8197i.this = r4;
        }

        @Override // p078c.p084c.p085a.p096b.p105u.AbstractC1924f
        /* renamed from: a */
        public void mo4476a(int i) {
            C8197i.this.f37020d = true;
            AbstractC8199b abstractC8199b = (AbstractC8199b) C8197i.this.f37021e.get();
            if (abstractC8199b != null) {
                abstractC8199b.mo4474a();
            }
        }

        @Override // p078c.p084c.p085a.p096b.p105u.AbstractC1924f
        /* renamed from: b */
        public void mo4475b(Typeface typeface, boolean z) {
            if (z) {
                return;
            }
            C8197i.this.f37020d = true;
            AbstractC8199b abstractC8199b = (AbstractC8199b) C8197i.this.f37021e.get();
            if (abstractC8199b == null) {
                return;
            }
            abstractC8199b.mo4474a();
        }
    }

    /* renamed from: com.google.android.material.internal.i$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/i$b.class */
    public interface AbstractC8199b {
        /* renamed from: a */
        void mo4474a();

        int[] getState();

        boolean onStateChange(int[] iArr);
    }

    public C8197i(AbstractC8199b abstractC8199b) {
        m4480g(abstractC8199b);
    }

    /* renamed from: c */
    private float m4484c(CharSequence charSequence) {
        if (charSequence == null) {
            return 0.0f;
        }
        return this.f37017a.measureText(charSequence, 0, charSequence.length());
    }

    /* renamed from: d */
    public C1920d m4483d() {
        return this.f37022f;
    }

    /* renamed from: e */
    public TextPaint m4482e() {
        return this.f37017a;
    }

    /* renamed from: f */
    public float m4481f(String str) {
        if (!this.f37020d) {
            return this.f37019c;
        }
        float m4484c = m4484c(str);
        this.f37019c = m4484c;
        this.f37020d = false;
        return m4484c;
    }

    /* renamed from: g */
    public void m4480g(AbstractC8199b abstractC8199b) {
        this.f37021e = new WeakReference<>(abstractC8199b);
    }

    /* renamed from: h */
    public void m4479h(C1920d c1920d, Context context) {
        if (this.f37022f != c1920d) {
            this.f37022f = c1920d;
            if (c1920d != null) {
                c1920d.m28668k(context, this.f37017a, this.f37018b);
                AbstractC8199b abstractC8199b = this.f37021e.get();
                if (abstractC8199b != null) {
                    this.f37017a.drawableState = abstractC8199b.getState();
                }
                c1920d.m28669j(context, this.f37017a, this.f37018b);
                this.f37020d = true;
            }
            AbstractC8199b abstractC8199b2 = this.f37021e.get();
            if (abstractC8199b2 == null) {
                return;
            }
            abstractC8199b2.mo4474a();
            abstractC8199b2.onStateChange(abstractC8199b2.getState());
        }
    }

    /* renamed from: i */
    public void m4478i(boolean z) {
        this.f37020d = z;
    }

    /* renamed from: j */
    public void m4477j(Context context) {
        this.f37022f.m28669j(context, this.f37017a, this.f37018b);
    }
}
