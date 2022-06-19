package p193e.p194a.p195a.p244k.p253d0;

import android.content.ContentResolver;
import android.graphics.BitmapFactory;
import android.net.Uri;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.tenor.android.core.constant.ContentFormat;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.GifEntity;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p195a.p244k.p252c0.C6671a;
import p193e.p194a.p372b0.p430q.AbstractC8571b;
import s1.f0.r;
import s1.k;
import s1.p;
import s1.s;
import s1.z.b.l;
import s1.z.c.f;
import s1.z.c.m;
import u3.a0;
import u3.e0;
import u3.g0;
import u3.j0;
import u3.k0;
import u3.l0;
import u3.p0.c;
import u3.z;
/* renamed from: e.a.a.k.d0.b */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/d0/b.class */
public final class C6674b implements AbstractC6673a {

    /* renamed from: a */
    public final ContentResolver f22018a;

    /* renamed from: b */
    public final e0 f22019b;

    /* renamed from: c */
    public final AbstractC8571b f22020c;

    /* renamed from: e.a.a.k.d0.b$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/d0/b$a.class */
    public static final class C6675a extends m implements l<OutputStream, s> {

        /* renamed from: b */
        public final /* synthetic */ l0 f22021b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6675a(l0 l0Var) {
            super(1);
            this.f22021b = l0Var;
        }

        /* renamed from: d */
        public Object m30586d(Object obj) {
            OutputStream outputStream = (OutputStream) obj;
            s1.z.c.l.e(outputStream, "out");
            C25225a.m3960U(this.f22021b.b(), outputStream, 0, 2);
            return s.a;
        }
    }

    public C6674b(ContentResolver contentResolver, e0 e0Var, AbstractC8571b abstractC8571b) {
        s1.z.c.l.e(contentResolver, "contentResolver");
        s1.z.c.l.e(e0Var, "httpClient");
        s1.z.c.l.e(abstractC8571b, "attachmentStoreHelper");
        this.f22018a = contentResolver;
        this.f22019b = e0Var;
        this.f22020c = abstractC8571b;
    }

    @Override // p193e.p194a.p195a.p244k.p253d0.AbstractC6673a
    /* renamed from: a */
    public Entity mo30590a(GifEntity gifEntity) {
        a0 a0Var;
        s1.z.c.l.e(gifEntity, "entity");
        String str = gifEntity.f13309A;
        s1.z.c.l.f(str, "$this$toHttpUrlOrNull");
        try {
            s1.z.c.l.f(str, "$this$toHttpUrl");
            a0.a aVar = new a0.a();
            aVar.f((a0) null, str);
            a0Var = aVar.b();
        } catch (IllegalArgumentException e) {
            a0Var = null;
        }
        GifEntity gifEntity2 = null;
        if (a0Var != null) {
            long j = gifEntity.f13306a;
            Uri uri = Uri.EMPTY;
            s1.z.c.l.d(uri, "Uri.EMPTY");
            Entity mo30589b = mo30589b(new C6671a(-1L, j, a0Var, uri, 0L, gifEntity.f13307b, gifEntity.f13349x));
            gifEntity2 = null;
            if (mo30589b instanceof GifEntity) {
                GifEntity gifEntity3 = (GifEntity) mo30589b;
                String str2 = gifEntity.f13309A;
                s1.z.c.l.e(str2, "newSource");
                long j2 = gifEntity3.f13306a;
                String str3 = gifEntity3.f13307b;
                int i = gifEntity3.f13308c;
                String uri2 = gifEntity3.f13173i.toString();
                s1.z.c.l.d(uri2, "content.toString()");
                gifEntity2 = new GifEntity(j2, str3, i, uri2, gifEntity3.f13347v, gifEntity3.f13348w, gifEntity3.f13174j, gifEntity3.f13175k, gifEntity3.f13349x, str2);
            }
        }
        return gifEntity2;
    }

    @Override // p193e.p194a.p195a.p244k.p253d0.AbstractC6673a
    /* renamed from: b */
    public Entity mo30589b(C6671a c6671a) {
        BinaryEntity binaryEntity;
        s1.z.c.l.e(c6671a, "item");
        k0 k0Var = null;
        k0 k0Var2 = null;
        try {
            try {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                ArrayList arrayList = new ArrayList(20);
                a0 a0Var = c6671a.f22009c;
                s1.z.c.l.f(a0Var, "url");
                Object[] array = arrayList.toArray(new String[0]);
                if (array == null) {
                    throw new p("null cannot be cast to non-null type kotlin.Array<T>");
                }
                k0 execute = this.f22019b.a(new g0(a0Var, "GET", new z((String[]) array, (f) null), (j0) null, c.y(linkedHashMap))).execute();
                l0 l0Var = execute.h;
                if (!execute.j() || l0Var == null) {
                    Entity m30588c = execute.e != 2 ? m30588c(c6671a, 2) : m30588c(c6671a, 3);
                    try {
                        execute.close();
                    } catch (IOException e) {
                    }
                    return m30588c;
                }
                String str = c6671a.f22012f;
                s1.z.c.l.e(str, "contentType");
                if (r.n("tenor/gif", str, true)) {
                    k m15256L0 = C18334g0.m15256L0(this.f22020c, c6671a.f22008b, c6671a.f22012f, false, 0, new C6675a(l0Var), 8, null);
                    binaryEntity = ((Number) m15256L0.b).longValue() == 0 ? m30588c(c6671a, 2) : m30587d(((Number) m15256L0.b).longValue(), c6671a.f22008b, (Uri) m15256L0.a, c6671a.f22009c);
                } else {
                    binaryEntity = m30588c(c6671a, 2);
                }
                try {
                    execute.close();
                } catch (IOException e2) {
                }
                return binaryEntity;
            } catch (Exception e3) {
                AssertionUtil.reportThrowableButNeverCrash(e3);
                Entity m30588c2 = m30588c(c6671a, 2);
                if (0 != 0) {
                    try {
                        k0Var.close();
                    } catch (IOException e4) {
                    }
                }
                return m30588c2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    k0Var2.close();
                } catch (IOException e5) {
                }
            }
            throw th;
        }
    }

    /* renamed from: c */
    public final Entity m30588c(C6671a c6671a, int i) {
        return Entity.C4195a.m35041b(Entity.f13305h, c6671a.f22008b, "application/octet-stream", i, c6671a.f22010d, -1, -1, -1, c6671a.f22011e, false, null, null, null, null, 0, null, null, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 261888);
    }

    /* renamed from: d */
    public final BinaryEntity m30587d(long j, long j2, Uri uri, a0 a0Var) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            try {
                BitmapFactory.decodeStream(this.f22018a.openInputStream(uri), null, options);
            } catch (IOException e) {
            }
        } catch (IOException e2) {
        }
        String uri2 = uri.toString();
        s1.z.c.l.d(uri2, "uri.toString()");
        int i = options.outWidth;
        int i2 = options.outHeight;
        Uri uri3 = Uri.EMPTY;
        s1.z.c.l.d(uri3, "Uri.EMPTY");
        return new GifEntity(j2, ContentFormat.IMAGE_GIF, 0, uri2, i, i2, false, j, uri3, a0Var.j);
    }
}
