package p193e.p194a.p1399z.p1403l;

import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.View;
import android.widget.ImageView;
import androidx.core.widget.NestedScrollView;
import s1.z.c.l;
/* renamed from: e.a.z.l.b */
/* loaded from: classes11-dex2jar.jar:e/a/z/l/b.class */
public class C21842b extends AbstractC21841a {

    /* renamed from: l */
    public final NestedScrollView f60723l;

    /* renamed from: m */
    public long f60724m;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C21842b(p1727n3.p1849n.AbstractC26865f r11, android.view.View r12) {
        /*
            r10 = this;
            r0 = r11
            r1 = r12
            r2 = 5
            r3 = 0
            r4 = 0
            java.lang.Object[] r0 = androidx.databinding.ViewDataBinding.mapBindings(r0, r1, r2, r3, r4)
            r13 = r0
            r0 = r10
            r1 = r11
            r2 = r12
            r3 = 0
            r4 = r13
            r5 = 4
            r4 = r4[r5]
            com.google.android.material.button.MaterialButton r4 = (com.google.android.material.button.MaterialButton) r4
            r5 = r13
            r6 = 1
            r5 = r5[r6]
            android.widget.ImageView r5 = (android.widget.ImageView) r5
            r6 = r13
            r7 = 3
            r6 = r6[r7]
            android.widget.TextView r6 = (android.widget.TextView) r6
            r7 = r13
            r8 = 2
            r7 = r7[r8]
            android.widget.TextView r7 = (android.widget.TextView) r7
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            r0 = r10
            r1 = -1
            r0.f60724m = r1
            r0 = r10
            com.google.android.material.button.MaterialButton r0 = r0.f60713a
            r1 = 0
            r0.setTag(r1)
            r0 = r10
            android.widget.ImageView r0 = r0.f60714b
            r1 = 0
            r0.setTag(r1)
            r0 = r13
            r1 = 0
            r0 = r0[r1]
            androidx.core.widget.NestedScrollView r0 = (androidx.core.widget.NestedScrollView) r0
            r11 = r0
            r0 = r10
            r1 = r11
            r0.f60723l = r1
            r0 = r11
            r1 = 0
            r0.setTag(r1)
            r0 = r10
            android.widget.TextView r0 = r0.f60715c
            r1 = 0
            r0.setTag(r1)
            r0 = r10
            android.widget.TextView r0 = r0.f60716d
            r1 = 0
            r0.setTag(r1)
            r0 = r10
            r1 = r12
            r0.setRootTag(r1)
            r0 = r10
            monitor-enter(r0)
            r0 = r10
            r1 = 64
            r0.f60724m = r1     // Catch: java.lang.Throwable -> L75
            r0 = r10
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L75
            r0 = r10
            r0.requestRebind()
            return
        L75:
            r11 = move-exception
            r0 = r10
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L75
            r0 = r11
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1399z.p1403l.C21842b.<init>(n3.n.f, android.view.View):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1399z.p1403l.AbstractC21841a
    /* renamed from: a */
    public void mo9012a(CharSequence charSequence) {
        this.f60719g = charSequence;
        synchronized (this) {
            this.f60724m |= 2;
        }
        notifyPropertyChanged(6);
        C21842b.super.requestRebind();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1399z.p1403l.AbstractC21841a
    /* renamed from: b */
    public void mo9011b(Integer num) {
        this.f60717e = num;
        synchronized (this) {
            this.f60724m |= 1;
        }
        notifyPropertyChanged(8);
        C21842b.super.requestRebind();
    }

    @Override // p193e.p194a.p1399z.p1403l.AbstractC21841a
    /* renamed from: c */
    public void mo9010c(View.OnClickListener onClickListener) {
        this.f60720h = onClickListener;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1399z.p1403l.AbstractC21841a
    /* renamed from: d */
    public void mo9009d(View.OnClickListener onClickListener) {
        this.f60721i = onClickListener;
        synchronized (this) {
            this.f60724m |= 16;
        }
        notifyPropertyChanged(11);
        C21842b.super.requestRebind();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1399z.p1403l.AbstractC21841a
    /* renamed from: e */
    public void mo9008e(CharSequence charSequence) {
        this.f60722j = charSequence;
        synchronized (this) {
            this.f60724m |= 32;
        }
        notifyPropertyChanged(14);
        C21842b.super.requestRebind();
    }

    public void executeBindings() {
        long j;
        synchronized (this) {
            j = this.f60724m;
            this.f60724m = 0L;
        }
        Integer num = this.f60717e;
        CharSequence charSequence = this.f60719g;
        CharSequence charSequence2 = this.f60718f;
        View.OnClickListener onClickListener = this.f60721i;
        CharSequence charSequence3 = this.f60722j;
        if ((80 & j) != 0) {
            this.f60713a.setOnClickListener(onClickListener);
        }
        if ((j & 96) != 0) {
            MediaSessionCompat.m43194u1(this.f60713a, charSequence3);
        }
        if ((65 & j) != 0) {
            ImageView imageView = this.f60714b;
            l.e(imageView, "imageView");
            if (num != null) {
                imageView.setImageResource(num.intValue());
            } else {
                imageView.setImageDrawable(null);
            }
        }
        if ((66 & j) != 0) {
            MediaSessionCompat.m43194u1(this.f60715c, charSequence);
        }
        if ((68 & j) != 0) {
            MediaSessionCompat.m43194u1(this.f60716d, charSequence2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1399z.p1403l.AbstractC21841a
    /* renamed from: f */
    public void mo9007f(CharSequence charSequence) {
        this.f60718f = charSequence;
        synchronized (this) {
            this.f60724m |= 4;
        }
        notifyPropertyChanged(16);
        C21842b.super.requestRebind();
    }

    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f60724m != 0;
        }
    }

    public void invalidateAll() {
        synchronized (this) {
            this.f60724m = 64L;
        }
        requestRebind();
    }

    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    public boolean setVariable(int i, Object obj) {
        boolean z;
        if (8 == i) {
            mo9011b((Integer) obj);
        } else if (6 == i) {
            mo9012a((CharSequence) obj);
        } else if (16 == i) {
            mo9007f((CharSequence) obj);
        } else if (10 == i) {
            this.f60720h = (View.OnClickListener) obj;
        } else if (11 == i) {
            mo9009d((View.OnClickListener) obj);
        } else if (14 != i) {
            z = false;
            return z;
        } else {
            mo9008e((CharSequence) obj);
        }
        z = true;
        return z;
    }
}
