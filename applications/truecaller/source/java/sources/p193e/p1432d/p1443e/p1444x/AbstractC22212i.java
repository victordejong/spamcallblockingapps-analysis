package p193e.p1432d.p1443e.p1444x;

import android.support.annotation.GuardedBy;
import android.support.annotation.Nullable;
import android.util.Log;
import com.google.android.gms.internal.ads.zzwo;
import java.io.UnsupportedEncodingException;
import p193e.p1432d.p1443e.AbstractC22184o;
import p193e.p1432d.p1443e.C22182l;
import p193e.p1432d.p1443e.C22190q;
import p193e.p1432d.p1443e.C22198w;
/* renamed from: e.d.e.x.i */
/* loaded from: classes-dex2jar.jar:e/d/e/x/i.class */
public abstract class AbstractC22212i<T> extends AbstractC22184o<T> {
    public static final String PROTOCOL_CHARSET = "utf-8";
    private static final String PROTOCOL_CONTENT_TYPE = String.format("application/json; charset=%s", PROTOCOL_CHARSET);
    @GuardedBy("mLock")
    @Nullable
    private C22190q.AbstractC22192b<T> mListener;
    private final Object mLock;
    @Nullable
    private final String mRequestBody;

    public AbstractC22212i(int i, String str, @Nullable String str2, C22190q.AbstractC22192b<T> abstractC22192b, @Nullable C22190q.AbstractC22191a abstractC22191a) {
        super(i, str, abstractC22191a);
        this.mLock = new Object();
        this.mListener = abstractC22192b;
        this.mRequestBody = str2;
    }

    @Deprecated
    public AbstractC22212i(String str, String str2, C22190q.AbstractC22192b<T> abstractC22192b, C22190q.AbstractC22191a abstractC22191a) {
        this(-1, str, str2, abstractC22192b, abstractC22191a);
    }

    @Override // p193e.p1432d.p1443e.AbstractC22184o
    public void cancel() {
        super.cancel();
        synchronized (this.mLock) {
            this.mListener = null;
        }
    }

    @Override // p193e.p1432d.p1443e.AbstractC22184o
    public void deliverResponse(T t) {
        C22190q.AbstractC22192b<T> abstractC22192b;
        synchronized (this.mLock) {
            abstractC22192b = this.mListener;
        }
        if (abstractC22192b != null) {
            abstractC22192b.onResponse(t);
        }
    }

    @Override // p193e.p1432d.p1443e.AbstractC22184o
    public byte[] getBody() {
        byte[] bArr = null;
        try {
            String str = this.mRequestBody;
            if (str != null) {
                bArr = str.getBytes(PROTOCOL_CHARSET);
            }
            return bArr;
        } catch (UnsupportedEncodingException e) {
            Log.wtf(zzwo.zza, C22198w.m8484a("Unsupported Encoding while trying to get the bytes of %s using %s", this.mRequestBody, PROTOCOL_CHARSET));
            return null;
        }
    }

    @Override // p193e.p1432d.p1443e.AbstractC22184o
    public String getBodyContentType() {
        return PROTOCOL_CONTENT_TYPE;
    }

    @Override // p193e.p1432d.p1443e.AbstractC22184o
    @Deprecated
    public byte[] getPostBody() {
        return getBody();
    }

    @Override // p193e.p1432d.p1443e.AbstractC22184o
    @Deprecated
    public String getPostBodyContentType() {
        return getBodyContentType();
    }

    @Override // p193e.p1432d.p1443e.AbstractC22184o
    public abstract C22190q<T> parseNetworkResponse(C22182l c22182l);
}
