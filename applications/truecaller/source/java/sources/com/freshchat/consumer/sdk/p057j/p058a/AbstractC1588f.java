package com.freshchat.consumer.sdk.p057j.p058a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.widget.ImageView;
import com.freshchat.consumer.sdk.p053f.AbstractC1535a;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.p058a.C1585d;
import java.lang.ref.WeakReference;
/* renamed from: com.freshchat.consumer.sdk.j.a.f */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/a/f.class */
public abstract class AbstractC1588f {

    /* renamed from: bZ */
    private AbstractC1535a f4308bZ;

    /* renamed from: kc */
    private C1585d f4309kc;

    /* renamed from: kd */
    private C1585d.C1586a f4310kd;

    /* renamed from: ke */
    private Bitmap f4311ke;

    /* renamed from: kf */
    private boolean f4312kf = true;

    /* renamed from: kg */
    private boolean f4313kg = false;

    /* renamed from: kh */
    public boolean f4314kh = false;

    /* renamed from: ki */
    private final Object f4315ki = new Object();

    /* renamed from: kj */
    public Resources f4316kj;

    /* renamed from: com.freshchat.consumer.sdk.j.a.f$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/a/f$a.class */
    public static class C1589a extends BitmapDrawable {

        /* renamed from: kk */
        private final WeakReference<C1590b> f4317kk;

        public C1589a(Resources resources, Bitmap bitmap, C1590b c1590b) {
            super(resources, bitmap);
            this.f4317kk = new WeakReference<>(c1590b);
        }

        /* renamed from: fz */
        public C1590b m40382fz() {
            return this.f4317kk.get();
        }
    }

    /* renamed from: com.freshchat.consumer.sdk.j.a.f$b */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/a/f$b.class */
    public class C1590b extends AbstractC1568a<Object, Void, Bitmap> {
        private Object data;

        /* renamed from: gS */
        private final WeakReference<ImageView> f4318gS;

        public C1590b(ImageView imageView) {
            AbstractC1588f.this = r6;
            this.f4318gS = new WeakReference<>(imageView);
        }

        /* renamed from: fA */
        private ImageView m40379fA() {
            ImageView imageView = this.f4318gS.get();
            if (this == AbstractC1588f.m40399a(imageView)) {
                return imageView;
            }
            return null;
        }

        /* renamed from: b */
        public Bitmap doInBackground(Object... objArr) {
            Object obj = objArr[0];
            this.data = obj;
            String valueOf = String.valueOf(obj);
            synchronized (AbstractC1588f.this.f4315ki) {
                while (AbstractC1588f.this.f4314kh && !isCancelled()) {
                    try {
                        AbstractC1588f.this.f4315ki.wait();
                    } catch (InterruptedException e) {
                    }
                }
            }
            Bitmap m40413bI = (AbstractC1588f.this.f4309kc == null || isCancelled() || m40379fA() == null || AbstractC1588f.this.f4313kg) ? null : AbstractC1588f.this.f4309kc.m40413bI(valueOf);
            Bitmap bitmap = m40413bI;
            if (m40413bI == null) {
                bitmap = m40413bI;
                if (!isCancelled()) {
                    bitmap = m40413bI;
                    if (m40379fA() != null) {
                        bitmap = m40413bI;
                        if (!AbstractC1588f.this.f4313kg) {
                            bitmap = AbstractC1588f.this.mo40373d(objArr[0]);
                        }
                    }
                }
            }
            if (bitmap != null && AbstractC1588f.this.f4309kc != null) {
                AbstractC1588f.this.f4309kc.m40417a(valueOf, bitmap);
            }
            return bitmap;
        }

        public void onCancelled(Bitmap bitmap) {
            super.onCancelled((C1590b) bitmap);
            synchronized (AbstractC1588f.this.f4315ki) {
                AbstractC1588f.this.f4315ki.notifyAll();
            }
        }

        public void onPostExecute(Bitmap bitmap) {
            if (isCancelled() || AbstractC1588f.this.f4313kg) {
                bitmap = null;
            }
            ImageView m40379fA = m40379fA();
            if (bitmap == null || m40379fA == null) {
                AbstractC1588f.this.m40384fx();
                return;
            }
            C1613ai.m40284d("ImageWorker", "onPostExecute - setting bitmap");
            AbstractC1588f.this.m40398a(m40379fA, bitmap);
        }
    }

    /* renamed from: com.freshchat.consumer.sdk.j.a.f$c */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/a/f$c.class */
    public class C1591c extends AbstractC1568a<Object, Void, Void> {
        public C1591c() {
            AbstractC1588f.this = r4;
        }

        @Override // com.freshchat.consumer.sdk.p057j.p058a.AbstractC1568a
        public Void doInBackground(Object... objArr) {
            int intValue = ((Integer) objArr[0]).intValue();
            if (intValue == 0) {
                AbstractC1588f.this.mo40371fr();
                return null;
            } else if (intValue == 1) {
                AbstractC1588f.this.mo40372fp();
                return null;
            } else if (intValue == 2) {
                AbstractC1588f.this.mo40370fs();
                return null;
            } else if (intValue == 3) {
                AbstractC1588f.this.mo40369ft();
                return null;
            } else if (intValue != 4) {
                return null;
            } else {
                AbstractC1588f.this.m40383fy();
                return null;
            }
        }
    }

    public AbstractC1588f(Context context) {
        this.f4316kj = context.getResources();
    }

    /* renamed from: a */
    public static C1590b m40399a(ImageView imageView) {
        if (imageView != null) {
            Drawable drawable = imageView.getDrawable();
            if (!(drawable instanceof C1589a)) {
                return null;
            }
            return ((C1589a) drawable).m40382fz();
        }
        return null;
    }

    /* renamed from: a */
    public void m40398a(ImageView imageView, Bitmap bitmap) {
        if (this.f4312kf) {
            TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{new ColorDrawable(17170445), new BitmapDrawable(this.f4316kj, bitmap)});
            imageView.setImageDrawable(transitionDrawable);
            transitionDrawable.startTransition(200);
        } else {
            imageView.setImageBitmap(bitmap);
        }
        m40385fw();
    }

    /* renamed from: b */
    public static boolean m40390b(Object obj, ImageView imageView) {
        C1590b m40399a = m40399a(imageView);
        if (m40399a != null) {
            Object obj2 = m40399a.data;
            if (obj2 != null && obj2.equals(obj)) {
                return false;
            }
            m40399a.cancel(true);
            C1613ai.m40284d("ImageWorker", "cancelPotentialWork - cancelled work for " + obj);
            return true;
        }
        return true;
    }

    /* renamed from: fv */
    private void m40386fv() {
        AbstractC1535a abstractC1535a = this.f4308bZ;
        if (abstractC1535a != null) {
            abstractC1535a.mo40586aG();
        }
    }

    /* renamed from: fw */
    private void m40385fw() {
        AbstractC1535a abstractC1535a = this.f4308bZ;
        if (abstractC1535a != null) {
            abstractC1535a.mo40585aH();
        }
    }

    /* renamed from: fx */
    public void m40384fx() {
        AbstractC1535a abstractC1535a = this.f4308bZ;
        if (abstractC1535a != null) {
            abstractC1535a.mo40584aI();
        }
    }

    /* renamed from: a */
    public void m40397a(C1585d c1585d) {
        this.f4309kc = c1585d;
    }

    /* renamed from: a */
    public void m40394a(Object obj, ImageView imageView) {
        if (obj == null) {
            return;
        }
        Bitmap bitmap = null;
        C1585d c1585d = this.f4309kc;
        if (c1585d != null) {
            bitmap = c1585d.m40414bH(String.valueOf(obj));
        }
        if (bitmap != null) {
            imageView.setImageBitmap(bitmap);
        } else if (!m40390b(obj, imageView)) {
        } else {
            m40386fv();
            C1590b c1590b = new C1590b(imageView);
            imageView.setImageDrawable(new C1589a(this.f4316kj, this.f4311ke, c1590b));
            c1590b.m40467a(AbstractC1568a.f4241iL, obj);
        }
    }

    /* renamed from: a */
    public void m40393a(Object obj, ImageView imageView, AbstractC1535a abstractC1535a) {
        this.f4308bZ = abstractC1535a;
        m40394a(obj, imageView);
    }

    /* renamed from: c */
    public void m40389c(C1585d.C1586a c1586a) {
        this.f4310kd = c1586a;
        m40397a(C1585d.m40418a(c1586a));
        new C1591c().m40466a(1);
    }

    /* renamed from: d */
    public abstract Bitmap mo40373d(Object obj);

    /* renamed from: fp */
    public void mo40372fp() {
        C1585d c1585d = this.f4309kc;
        if (c1585d != null) {
            c1585d.m40410jX();
        }
    }

    /* renamed from: fr */
    public void mo40371fr() {
        C1585d c1585d = this.f4309kc;
        if (c1585d != null) {
            c1585d.clearCache();
        }
    }

    /* renamed from: fs */
    public void mo40370fs() {
        C1585d c1585d = this.f4309kc;
        if (c1585d != null) {
            c1585d.flush();
        }
    }

    /* renamed from: ft */
    public void mo40369ft() {
        C1585d c1585d = this.f4309kc;
        if (c1585d != null) {
            c1585d.close();
            this.f4309kc = null;
        }
    }

    /* renamed from: fy */
    public void m40383fy() {
        C1585d c1585d = this.f4309kc;
        if (c1585d != null) {
            c1585d.m40409jY();
            this.f4309kc = null;
        }
    }
}
