package p107g9;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.p012v4.media.C0082b;
import android.widget.ImageView;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import p107g9.C2953s;
import p107g9.C2964v;
import p193o8.C3944c;
/* renamed from: g9.w */
/* loaded from: classes2-dex2jar.jar:g9/w.class */
public class C2967w {

    /* renamed from: d */
    public static final AtomicInteger f9979d = new AtomicInteger();

    /* renamed from: a */
    public final C2953s f9980a;

    /* renamed from: b */
    public final C2964v.C2966b f9981b;

    /* renamed from: c */
    public int f9982c;

    public C2967w(C2953s c2953s, Uri uri, int i) {
        this.f9980a = c2953s;
        this.f9981b = new C2964v.C2966b(uri, i, c2953s.f9932k);
    }

    /* renamed from: a */
    public final Drawable m2809a() {
        int i = this.f9982c;
        if (i != 0) {
            return this.f9980a.f9925d.getDrawable(i);
        }
        return null;
    }

    /* renamed from: b */
    public void m2808b(ImageView imageView, AbstractC2932e abstractC2932e) {
        Bitmap m2819f;
        long nanoTime = System.nanoTime();
        C2929d0.m2842a();
        if (imageView != null) {
            C2964v.C2966b c2966b = this.f9981b;
            if (!((c2966b.f9972a == null && c2966b.f9973b == 0) ? false : true)) {
                C2953s c2953s = this.f9980a;
                Objects.requireNonNull(c2953s);
                c2953s.m2824a(imageView);
                C2961t.m2815c(imageView, m2809a());
                return;
            }
            int andIncrement = f9979d.getAndIncrement();
            C2964v.C2966b c2966b2 = this.f9981b;
            if (c2966b2.f9978g == 0) {
                c2966b2.f9978g = 2;
            }
            Uri uri = c2966b2.f9972a;
            int i = c2966b2.f9973b;
            C2964v c2964v = new C2964v(uri, i, null, c2966b2.f9976e, c2966b2.f9974c, c2966b2.f9975d, false, false, 0, false, 0.0f, 0.0f, 0.0f, false, false, c2966b2.f9977f, c2966b2.f9978g, null);
            c2964v.f9954a = andIncrement;
            c2964v.f9955b = nanoTime;
            if (this.f9980a.f9934m) {
                C2929d0.m2838e("Main", "created", c2964v.m2811d(), c2964v.toString());
            }
            Objects.requireNonNull((C2953s.AbstractC2959e.C2960a) this.f9980a.f9923b);
            StringBuilder sb = C2929d0.f9877a;
            if (uri != null) {
                String uri2 = uri.toString();
                sb.ensureCapacity(uri2.length() + 50);
                sb.append(uri2);
            } else {
                sb.ensureCapacity(50);
                sb.append(i);
            }
            sb.append('\n');
            if (c2964v.f9965l != 0.0f) {
                sb.append("rotation:");
                sb.append(c2964v.f9965l);
                if (c2964v.f9968o) {
                    sb.append('@');
                    sb.append(c2964v.f9966m);
                    sb.append('x');
                    sb.append(c2964v.f9967n);
                }
                sb.append('\n');
            }
            if (c2964v.m2814a()) {
                sb.append("resize:");
                sb.append(c2964v.f9959f);
                sb.append('x');
                sb.append(c2964v.f9960g);
                sb.append('\n');
            }
            if (c2964v.f9961h) {
                sb.append("centerCrop:");
                sb.append(c2964v.f9962i);
                sb.append('\n');
            } else if (c2964v.f9963j) {
                sb.append("centerInside");
                sb.append('\n');
            }
            List<AbstractC2919b0> list = c2964v.f9958e;
            if (list != null) {
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    sb.append(c2964v.f9958e.get(i2).mo1592b());
                    sb.append('\n');
                }
            }
            String sb2 = sb.toString();
            C2929d0.f9877a.setLength(0);
            if (!C0082b.m8761a(0) || (m2819f = this.f9980a.m2819f(sb2)) == null) {
                C2961t.m2815c(imageView, m2809a());
                this.f9980a.m2822c(new C2943l(this.f9980a, imageView, c2964v, 0, 0, 0, null, sb2, null, abstractC2932e, false));
                return;
            }
            C2953s c2953s2 = this.f9980a;
            Objects.requireNonNull(c2953s2);
            c2953s2.m2824a(imageView);
            C2953s c2953s3 = this.f9980a;
            Context context = c2953s3.f9925d;
            C2953s.EnumC2958d enumC2958d = C2953s.EnumC2958d.MEMORY;
            C2961t.m2816b(imageView, context, m2819f, enumC2958d, false, c2953s3.f9933l);
            if (this.f9980a.f9934m) {
                C2929d0.m2838e("Main", "completed", c2964v.m2811d(), "from " + enumC2958d);
            }
            if (abstractC2932e == null) {
                return;
            }
            abstractC2932e.m2836b();
            return;
        }
        throw new IllegalArgumentException("Target must not be null.");
    }

    /* renamed from: c */
    public C2967w m2807c(int i) {
        if (i != 0) {
            this.f9982c = i;
            return this;
        }
        throw new IllegalArgumentException("Placeholder image resource invalid.");
    }

    /* renamed from: d */
    public C2967w m2806d(AbstractC2919b0 abstractC2919b0) {
        C2964v.C2966b c2966b = this.f9981b;
        Objects.requireNonNull(c2966b);
        if (((C3944c) abstractC2919b0).mo1592b() != null) {
            if (c2966b.f9976e == null) {
                c2966b.f9976e = new ArrayList(2);
            }
            c2966b.f9976e.add(abstractC2919b0);
            return this;
        }
        throw new IllegalArgumentException("Transformation key must not be null.");
    }
}
