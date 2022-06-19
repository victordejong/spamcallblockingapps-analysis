package p193e.p1451f.p1452a.p1457n.p1466q.p1471h;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import e.f.a.n.q.c;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.Queue;
import p193e.p1451f.p1452a.p1454l.C22252c;
import p193e.p1451f.p1452a.p1454l.C22253d;
import p193e.p1451f.p1452a.p1454l.C22254e;
import p193e.p1451f.p1452a.p1457n.AbstractC22269k;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.EnumC22259b;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22301b;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22303d;
import p193e.p1451f.p1452a.p1480t.C22619f;
import p193e.p1451f.p1452a.p1480t.C22623j;
/* renamed from: e.f.a.n.q.h.a */
/* loaded from: classes-dex2jar.jar:e/f/a/n/q/h/a.class */
public class C22534a implements AbstractC22269k<ByteBuffer, C22538c> {

    /* renamed from: f */
    public static final C22535a f62427f = new C22535a();

    /* renamed from: g */
    public static final C22536b f62428g = new C22536b();

    /* renamed from: a */
    public final Context f62429a;

    /* renamed from: b */
    public final List<ImageHeaderParser> f62430b;

    /* renamed from: c */
    public final C22536b f62431c;

    /* renamed from: d */
    public final C22535a f62432d;

    /* renamed from: e */
    public final C22537b f62433e;

    /* renamed from: e.f.a.n.q.h.a$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/q/h/a$a.class */
    public static class C22535a {
    }

    /* renamed from: e.f.a.n.q.h.a$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/q/h/a$b.class */
    public static class C22536b {

        /* renamed from: a */
        public final Queue<C22253d> f62434a = new ArrayDeque(0);

        public C22536b() {
            char[] cArr = C22623j.f62648a;
        }

        /* renamed from: a */
        public void m8157a(C22253d c22253d) {
            synchronized (this) {
                c22253d.f61849b = null;
                c22253d.f61850c = null;
                this.f62434a.offer(c22253d);
            }
        }
    }

    public C22534a(Context context, List<ImageHeaderParser> list, AbstractC22303d abstractC22303d, AbstractC22301b abstractC22301b) {
        C22536b c22536b = f62428g;
        C22535a c22535a = f62427f;
        this.f62429a = context.getApplicationContext();
        this.f62430b = list;
        this.f62432d = c22535a;
        this.f62433e = new C22537b(abstractC22303d, abstractC22301b);
        this.f62431c = c22536b;
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22269k
    /* renamed from: a */
    public boolean mo8147a(ByteBuffer byteBuffer, C22267i c22267i) throws IOException {
        ImageHeaderParser.ImageType imageType;
        ByteBuffer byteBuffer2 = byteBuffer;
        boolean z = false;
        if (!((Boolean) c22267i.m8361c(C22544i.f62468b)).booleanValue()) {
            List<ImageHeaderParser> list = this.f62430b;
            if (byteBuffer2 != null) {
                int size = list.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        imageType = ImageHeaderParser.ImageType.UNKNOWN;
                        break;
                    }
                    imageType = list.get(i).mo8176c(byteBuffer2);
                    if (imageType != ImageHeaderParser.ImageType.UNKNOWN) {
                        break;
                    }
                    i++;
                }
            } else {
                imageType = ImageHeaderParser.ImageType.UNKNOWN;
            }
            z = false;
            if (imageType == ImageHeaderParser.ImageType.GIF) {
                z = true;
            }
        }
        return z;
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22269k
    /* renamed from: b */
    public AbstractC22394w<C22538c> mo8146b(ByteBuffer byteBuffer, int i, int i2, C22267i c22267i) throws IOException {
        C22253d c22253d;
        ByteBuffer byteBuffer2 = byteBuffer;
        C22536b c22536b = this.f62431c;
        synchronized (c22536b) {
            C22253d poll = c22536b.f62434a.poll();
            c22253d = poll;
            if (poll == null) {
                c22253d = new C22253d();
            }
            c22253d.f61849b = null;
            Arrays.fill(c22253d.f61848a, (byte) 0);
            c22253d.f61850c = new C22252c();
            c22253d.f61851d = 0;
            ByteBuffer asReadOnlyBuffer = byteBuffer2.asReadOnlyBuffer();
            c22253d.f61849b = asReadOnlyBuffer;
            asReadOnlyBuffer.position(0);
            c22253d.f61849b.order(ByteOrder.LITTLE_ENDIAN);
        }
        try {
            return m8158c(byteBuffer2, i, i2, c22253d, c22267i);
        } finally {
            this.f62431c.m8157a(c22253d);
        }
    }

    /* renamed from: c */
    public final e m8158c(ByteBuffer byteBuffer, int i, int i2, C22253d c22253d, C22267i c22267i) {
        int i3 = C22619f.f62640b;
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            C22252c m8378b = c22253d.m8378b();
            if (m8378b.f61839c > 0 && m8378b.f61838b == 0) {
                Bitmap.Config config = c22267i.m8361c(C22544i.f62467a) == EnumC22259b.PREFER_RGB_565 ? Bitmap.Config.RGB_565 : Bitmap.Config.ARGB_8888;
                int min = Math.min(m8378b.f61843g / i2, m8378b.f61842f / i);
                int max = Math.max(1, min == 0 ? 0 : Integer.highestOneBit(min));
                Log.isLoggable("BufferGifDecoder", 2);
                C22535a c22535a = this.f62432d;
                C22537b c22537b = this.f62433e;
                Objects.requireNonNull(c22535a);
                C22254e c22254e = new C22254e(c22537b, m8378b, byteBuffer, max);
                c22254e.m8364i(config);
                c22254e.f61863k = (c22254e.f61863k + 1) % c22254e.f61864l.f61839c;
                Bitmap mo8370c = c22254e.mo8370c();
                if (mo8370c == null) {
                    if (!Log.isLoggable("BufferGifDecoder", 2)) {
                        return null;
                    }
                    C22619f.m8031a(elapsedRealtimeNanos);
                    return null;
                }
                e eVar = new e(new C22538c(this.f62429a, c22254e, c.b, i, i2, mo8370c));
                if (Log.isLoggable("BufferGifDecoder", 2)) {
                    C22619f.m8031a(elapsedRealtimeNanos);
                }
                return eVar;
            }
            if (!Log.isLoggable("BufferGifDecoder", 2)) {
                return null;
            }
            C22619f.m8031a(elapsedRealtimeNanos);
            return null;
        } catch (Throwable th) {
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                C22619f.m8031a(elapsedRealtimeNanos);
            }
            throw th;
        }
    }
}
