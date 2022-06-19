package p193e.p1432d.p1443e.p1444x;

import android.graphics.Bitmap;
import android.support.annotation.GuardedBy;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.widget.ImageView;
import p193e.p1432d.p1443e.AbstractC22184o;
import p193e.p1432d.p1443e.C22174f;
import p193e.p1432d.p1443e.C22182l;
import p193e.p1432d.p1443e.C22183n;
import p193e.p1432d.p1443e.C22190q;
import p193e.p1432d.p1443e.C22198w;
/* renamed from: e.d.e.x.g */
/* loaded from: classes-dex2jar.jar:e/d/e/x/g.class */
public class C22211g extends AbstractC22184o<Bitmap> {
    public static final float DEFAULT_IMAGE_BACKOFF_MULT = 2.0f;
    public static final int DEFAULT_IMAGE_MAX_RETRIES = 2;
    public static final int DEFAULT_IMAGE_TIMEOUT_MS = 1000;
    private static final Object sDecodeLock = new Object();
    private final Bitmap.Config mDecodeConfig;
    @GuardedBy("mLock")
    @Nullable
    private C22190q.AbstractC22192b<Bitmap> mListener;
    private final Object mLock;
    private final int mMaxHeight;
    private final int mMaxWidth;
    private final ImageView.ScaleType mScaleType;

    @Deprecated
    public C22211g(String str, C22190q.AbstractC22192b<Bitmap> abstractC22192b, int i, int i2, Bitmap.Config config, C22190q.AbstractC22191a abstractC22191a) {
        this(str, abstractC22192b, i, i2, ImageView.ScaleType.CENTER_INSIDE, config, abstractC22191a);
    }

    public C22211g(String str, C22190q.AbstractC22192b<Bitmap> abstractC22192b, int i, int i2, ImageView.ScaleType scaleType, Bitmap.Config config, @Nullable C22190q.AbstractC22191a abstractC22191a) {
        super(0, str, abstractC22191a);
        this.mLock = new Object();
        setRetryPolicy(new C22174f(1000, 2, 2.0f));
        this.mListener = abstractC22192b;
        this.mDecodeConfig = config;
        this.mMaxWidth = i;
        this.mMaxHeight = i2;
        this.mScaleType = scaleType;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x00a7, code lost:
        if (r0.getHeight() > r0) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private p193e.p1432d.p1443e.C22190q<android.graphics.Bitmap> doParse(p193e.p1432d.p1443e.C22182l r7) {
        /*
            Method dump skipped, instructions count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1432d.p1443e.p1444x.C22211g.doParse(e.d.e.l):e.d.e.q");
    }

    @VisibleForTesting
    public static int findBestSampleSize(int i, int i2, int i3, int i4) {
        float f = 1.0f;
        while (true) {
            float f2 = f;
            float f3 = 2.0f * f2;
            if (f3 <= Math.min(i / i3, i2 / i4)) {
                f = f3;
            } else {
                return (int) f2;
            }
        }
    }

    private static int getResizedDimension(int i, int i2, int i3, int i4, ImageView.ScaleType scaleType) {
        if (i == 0 && i2 == 0) {
            return i3;
        }
        if (scaleType == ImageView.ScaleType.FIT_XY) {
            return i == 0 ? i3 : i;
        } else if (i == 0) {
            return (int) (i3 * (i2 / i4));
        } else if (i2 == 0) {
            return i;
        } else {
            double d = i4 / i3;
            if (scaleType == ImageView.ScaleType.CENTER_CROP) {
                double d2 = i2;
                if (i * d < d2) {
                    i = (int) (d2 / d);
                }
                return i;
            }
            double d3 = i2;
            if (i * d > d3) {
                i = (int) (d3 / d);
            }
            return i;
        }
    }

    @Override // p193e.p1432d.p1443e.AbstractC22184o
    public void cancel() {
        super.cancel();
        synchronized (this.mLock) {
            this.mListener = null;
        }
    }

    public void deliverResponse(Bitmap bitmap) {
        C22190q.AbstractC22192b<Bitmap> abstractC22192b;
        synchronized (this.mLock) {
            abstractC22192b = this.mListener;
        }
        if (abstractC22192b != null) {
            abstractC22192b.onResponse(bitmap);
        }
    }

    @Override // p193e.p1432d.p1443e.AbstractC22184o
    public AbstractC22184o.EnumC22187c getPriority() {
        return AbstractC22184o.EnumC22187c.LOW;
    }

    @Override // p193e.p1432d.p1443e.AbstractC22184o
    public C22190q<Bitmap> parseNetworkResponse(C22182l c22182l) {
        C22190q<Bitmap> doParse;
        synchronized (sDecodeLock) {
            try {
                doParse = doParse(c22182l);
            } catch (OutOfMemoryError e) {
                C22198w.m8484a("Caught OOM for %d byte image, url=%s", Integer.valueOf(c22182l.f61632b.length), getUrl());
                return new C22190q<>(new C22183n(e));
            }
        }
        return doParse;
    }
}
