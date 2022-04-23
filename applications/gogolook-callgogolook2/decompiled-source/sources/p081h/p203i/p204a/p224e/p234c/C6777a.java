package p081h.p203i.p204a.p224e.p234c;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.clearcut.zze;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.clearcut.zzr;
import java.util.ArrayList;
import java.util.TimeZone;
import javax.annotation.Nullable;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
import p081h.p203i.p204a.p224e.p235d.p236k.C6831h;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p249s.AbstractC7074f;
import p081h.p203i.p204a.p224e.p235d.p249s.C7077i;
import p081h.p203i.p204a.p224e.p259j.p266g.C7550b;
import p081h.p203i.p204a.p224e.p259j.p266g.C7649m5;
import p081h.p203i.p204a.p224e.p259j.p266g.C7670p5;
import p081h.p203i.p204a.p224e.p259j.p266g.C7709v2;
import p081h.p203i.p204a.p224e.p259j.p266g.C7712v5;
import p081h.p203i.p204a.p224e.p259j.p266g.EnumC7566c5;
/* renamed from: h.i.a.e.c.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/c/a.class */
public final class C6777a {

    /* renamed from: m */
    public static final C6805a.C6817g<C7670p5> f16653m = new C6805a.C6817g<>();

    /* renamed from: n */
    public static final C6805a.AbstractC6806a<C7670p5, Object> f16654n = new C6782b();
    @Deprecated

    /* renamed from: o */
    public static final C6805a<Object> f16655o = new C6805a<>("ClearcutLogger.API", f16654n, f16653m);

    /* renamed from: a */
    public final Context f16656a;

    /* renamed from: b */
    public final String f16657b;

    /* renamed from: c */
    public final int f16658c;

    /* renamed from: d */
    public String f16659d;

    /* renamed from: e */
    public int f16660e;

    /* renamed from: f */
    public String f16661f;

    /* renamed from: g */
    public final boolean f16662g;

    /* renamed from: h */
    public EnumC7566c5 f16663h;

    /* renamed from: i */
    public final AbstractC6783c f16664i;

    /* renamed from: j */
    public final AbstractC7074f f16665j;

    /* renamed from: k */
    public C6781d f16666k = new C6781d();

    /* renamed from: l */
    public final AbstractC6779b f16667l;

    /* renamed from: h.i.a.e.c.a$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/c/a$a.class */
    public class C6778a {

        /* renamed from: a */
        public int f16668a;

        /* renamed from: b */
        public String f16669b;

        /* renamed from: c */
        public String f16670c;

        /* renamed from: d */
        public String f16671d;

        /* renamed from: e */
        public EnumC7566c5 f16672e;

        /* renamed from: f */
        public boolean f16673f;

        /* renamed from: g */
        public final C7649m5 f16674g;

        /* renamed from: h */
        public boolean f16675h;

        public C6778a(C6777a aVar, byte[] bArr) {
            this(bArr, (AbstractC6780c) null);
        }

        public C6778a(byte[] bArr, AbstractC6780c cVar) {
            this.f16668a = C6777a.this.f16660e;
            this.f16669b = C6777a.this.f16659d;
            this.f16670c = C6777a.this.f16661f;
            C6777a aVar = C6777a.this;
            this.f16671d = null;
            this.f16672e = aVar.f16663h;
            this.f16673f = true;
            this.f16674g = new C7649m5();
            this.f16675h = false;
            this.f16670c = C6777a.this.f16661f;
            this.f16671d = null;
            this.f16674g.f17956v = C7550b.m20307a(C6777a.this.f16656a);
            this.f16674g.f17937c = C6777a.this.f16665j.currentTimeMillis();
            this.f16674g.f17938d = C6777a.this.f16665j.elapsedRealtime();
            C7649m5 m5Var = this.f16674g;
            C6781d unused = C6777a.this.f16666k;
            m5Var.f17950p = TimeZone.getDefault().getOffset(this.f16674g.f17937c) / 1000;
            if (bArr != null) {
                this.f16674g.f17945k = bArr;
            }
        }

        public /* synthetic */ C6778a(C6777a aVar, byte[] bArr, C6782b bVar) {
            this(aVar, bArr);
        }

        /* renamed from: a */
        public void m21915a() {
            if (!this.f16675h) {
                this.f16675h = true;
                zze zzeVar = new zze(new zzr(C6777a.this.f16657b, C6777a.this.f16658c, this.f16668a, this.f16669b, this.f16670c, this.f16671d, C6777a.this.f16662g, this.f16672e), this.f16674g, null, null, C6777a.m21929a((ArrayList<Integer>) null), null, C6777a.m21929a((ArrayList<Integer>) null), null, null, this.f16673f);
                if (C6777a.this.f16667l.mo19725a(zzeVar)) {
                    C6777a.this.f16664i.mo19749a(zzeVar);
                } else {
                    C6831h.m21816a(Status.f6510e, (AbstractC6825f) null);
                }
            } else {
                throw new IllegalStateException("do not reuse LogEventBuilder");
            }
        }
    }

    /* renamed from: h.i.a.e.c.a$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/c/a$b.class */
    public interface AbstractC6779b {
        /* renamed from: a */
        boolean mo19725a(zze zzeVar);
    }

    /* renamed from: h.i.a.e.c.a$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/c/a$c.class */
    public interface AbstractC6780c {
        /* renamed from: c */
        byte[] m21914c();
    }

    /* renamed from: h.i.a.e.c.a$d */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/c/a$d.class */
    public static final class C6781d {
    }

    public C6777a(Context context, int i, String str, String str2, String str3, boolean z, AbstractC6783c cVar, AbstractC7074f fVar, C6781d dVar, AbstractC6779b bVar) {
        this.f16660e = -1;
        this.f16663h = EnumC7566c5.DEFAULT;
        this.f16656a = context;
        this.f16657b = context.getPackageName();
        this.f16658c = m21932a(context);
        this.f16660e = -1;
        this.f16659d = str;
        this.f16661f = str2;
        this.f16662g = z;
        this.f16664i = cVar;
        this.f16665j = fVar;
        this.f16663h = EnumC7566c5.DEFAULT;
        this.f16667l = bVar;
        if (z) {
            C7021t.m21285a(str2 == null, "can't be anonymous with an upload account");
        }
    }

    /* renamed from: a */
    public static int m21932a(Context context) {
        int i = 0;
        try {
            i = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            Log.wtf("ClearcutLogger", "This can't happen.", e);
        }
        return i;
    }

    /* renamed from: a */
    public static C6777a m21931a(Context context, String str) {
        return new C6777a(context, -1, str, null, null, true, C7709v2.m19750a(context), C7077i.m21148a(), null, new C7712v5(context));
    }

    /* renamed from: a */
    public static int[] m21929a(ArrayList<Integer> arrayList) {
        if (arrayList == null) {
            return null;
        }
        int[] iArr = new int[arrayList.size()];
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            Integer num = arrayList.get(i);
            i++;
            iArr[i2] = num.intValue();
            i2++;
        }
        return iArr;
    }

    /* renamed from: a */
    public final C6778a m21928a(@Nullable byte[] bArr) {
        return new C6778a(this, bArr, (C6782b) null);
    }
}
