package p193e.p194a.p1114o5;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import java.io.InputStream;
import java.io.OutputStream;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.o5.n1 */
/* loaded from: classes15-dex2jar.jar:e/a/o5/n1.class */
public final class C19063n1 {

    /* renamed from: a */
    public static final C19063n1 f53240a = new C19063n1();

    /* renamed from: e.a.o5.n1$a */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/n1$a.class */
    public static abstract class AbstractC19064a {

        /* renamed from: a */
        public final int f53241a;

        /* renamed from: b */
        public final String f53242b;

        /* renamed from: c */
        public final String f53243c;

        /* renamed from: d */
        public final int f53244d;

        /* renamed from: e */
        public final boolean f53245e;

        /* renamed from: e.a.o5.n1$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/o5/n1$a$a.class */
        public static final class C19065a extends AbstractC19064a {

            /* renamed from: f */
            public static final C19065a f53246f = new C19065a();

            public C19065a() {
                super((int) C2752R.raw.tc_flash_tone, "Truecaller Flash", "Truecaller Flash", 1, false, (f) null);
            }
        }

        /* renamed from: e.a.o5.n1$a$b */
        /* loaded from: classes15-dex2jar.jar:e/a/o5/n1$a$b.class */
        public static final class C19066b extends AbstractC19064a {

            /* renamed from: f */
            public static final C19066b f53247f = new C19066b();

            public C19066b() {
                super((int) C2752R.raw.tc_message_tone, "Truecaller Message", "Truecaller Message", 2, false, 16);
            }
        }

        /* renamed from: e.a.o5.n1$a$c */
        /* loaded from: classes15-dex2jar.jar:e/a/o5/n1$a$c.class */
        public static final class C19067c extends AbstractC19064a {

            /* renamed from: f */
            public static final C19067c f53248f = new C19067c();

            public C19067c() {
                super((int) C2752R.raw.tc_ringtone, "Truecaller Ringtone", "Truecaller Ringtone", 1, false, 16);
            }
        }

        public AbstractC19064a(int i, String str, String str2, int i2, boolean z, int i3) {
            z = (i3 & 16) != 0 ? true : z;
            this.f53241a = i;
            this.f53242b = str;
            this.f53243c = str2;
            this.f53244d = i2;
            this.f53245e = z;
        }

        public AbstractC19064a(int i, String str, String str2, int i2, boolean z, f fVar) {
            this.f53241a = i;
            this.f53242b = str;
            this.f53243c = str2;
            this.f53244d = i2;
            this.f53245e = z;
        }
    }

    @e(c = "com.truecaller.util.RingtoneUtils$copyRingtone$ringtoneUri$1$1", f = "RingtoneUtils.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.o5.n1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/n1$b.class */
    public static final class C19068b extends i implements p<i0, d<? super Uri>, Object> {

        /* renamed from: e */
        public final /* synthetic */ ContentValues f53249e;

        /* renamed from: f */
        public final /* synthetic */ AbstractC19064a f53250f;

        /* renamed from: g */
        public final /* synthetic */ String f53251g;

        /* renamed from: h */
        public final /* synthetic */ String f53252h;

        /* renamed from: i */
        public final /* synthetic */ d f53253i;

        /* renamed from: j */
        public final /* synthetic */ Context f53254j;

        /* renamed from: k */
        public final /* synthetic */ Uri f53255k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19068b(ContentValues contentValues, d dVar, AbstractC19064a abstractC19064a, String str, String str2, d dVar2, Context context, Uri uri) {
            super(2, dVar);
            this.f53249e = contentValues;
            this.f53250f = abstractC19064a;
            this.f53251g = str;
            this.f53252h = str2;
            this.f53253i = dVar2;
            this.f53254j = context;
            this.f53255k = uri;
        }

        /* renamed from: i */
        public final d<s> m14154i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C19068b(this.f53249e, dVar, this.f53250f, this.f53251g, this.f53252h, this.f53253i, this.f53254j, this.f53255k);
        }

        /* renamed from: k */
        public final Object m14153k(Object obj, Object obj2) {
            return m14154i(obj, (d) obj2).m14152s(s.a);
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: s */
        public final Object m14152s(Object obj) {
            OutputStream openOutputStream;
            C25225a.m3932a3(obj);
            InputStream openRawResource = this.f53254j.getResources().openRawResource(this.f53250f.f53241a);
            try {
                Context context = this.f53254j;
                l.d(openRawResource, "inputStream");
                Uri uri = this.f53255k;
                l.d(uri, "uri");
                ContentValues contentValues = this.f53249e;
                l.e(context, AnalyticsConstants.CONTEXT);
                l.e(openRawResource, "source");
                l.e(uri, "destinationUri");
                l.e(contentValues, "values");
                Context applicationContext = context.getApplicationContext();
                l.d(applicationContext, "context.applicationContext");
                ContentResolver contentResolver = applicationContext.getContentResolver();
                Uri insert = contentResolver.insert(uri, contentValues);
                if (insert == null || (openOutputStream = contentResolver.openOutputStream(insert)) == null) {
                    insert = null;
                } else {
                    l.d(openOutputStream, "outputStream");
                    C19291g.m13574X1(openRawResource, openOutputStream);
                    C25225a.m4016G(openOutputStream, null);
                }
                C25225a.m4016G(openRawResource, null);
                return insert;
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        }
    }

    @e(c = "com.truecaller.util.RingtoneUtils", f = "RingtoneUtils.kt", l = {83, 106}, m = "copyRingtone")
    /* renamed from: e.a.o5.n1$c */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/n1$c.class */
    public static final class C19069c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f53256d;

        /* renamed from: e */
        public int f53257e;

        /* renamed from: g */
        public Object f53259g;

        /* renamed from: h */
        public Object f53260h;

        /* renamed from: i */
        public Object f53261i;

        /* renamed from: j */
        public Object f53262j;

        /* renamed from: k */
        public Object f53263k;

        /* renamed from: l */
        public Object f53264l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19069c(d dVar) {
            super(dVar);
            C19063n1.this = r4;
        }

        /* renamed from: s */
        public final Object m14151s(Object obj) {
            this.f53256d = obj;
            this.f53257e |= Integer.MIN_VALUE;
            return C19063n1.this.m14155a(null, null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0332  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m14155a(android.content.Context r12, p193e.p194a.p1114o5.C19063n1.AbstractC19064a r13, s1.w.d<? super android.net.Uri> r14) {
        /*
            Method dump skipped, instructions count: 828
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1114o5.C19063n1.m14155a(android.content.Context, e.a.o5.n1$a, s1.w.d):java.lang.Object");
    }
}
