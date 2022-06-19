package p193e.p194a.p1221t.p1222a;

import android.database.Cursor;
import android.os.CancellationSignal;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25650g;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1751c0.p1754h0.C25655d;
import s1.w.d;
/* renamed from: e.a.t.a.f */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/f.class */
public final class C20280f implements AbstractC20279e {

    /* renamed from: a */
    public final AbstractC25677q f57068a;

    /* renamed from: e.a.t.a.f$a */
    /* loaded from: classes5-dex2jar.jar:e/a/t/a/f$a.class */
    public class CallableC20281a implements Callable<List<C20305t>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f57069a;

        public CallableC20281a(C25686y c25686y) {
            C20280f.this = r4;
            this.f57069a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<C20305t> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C20280f.this.f57068a, this.f57069a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "id");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "shortname");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "emoji");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    arrayList.add(new C20305t(m3090b.getInt(m43237g0), m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03)));
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f57069a.m3057l();
            }
        }
    }

    /* renamed from: e.a.t.a.f$b */
    /* loaded from: classes5-dex2jar.jar:e/a/t/a/f$b.class */
    public class CallableC20282b implements Callable<List<C20305t>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f57071a;

        public CallableC20282b(C25686y c25686y) {
            C20280f.this = r4;
            this.f57071a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<C20305t> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C20280f.this.f57068a, this.f57071a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "id");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "shortname");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "emoji");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    arrayList.add(new C20305t(m3090b.getInt(m43237g0), m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03)));
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f57071a.m3057l();
            }
        }
    }

    /* renamed from: e.a.t.a.f$c */
    /* loaded from: classes5-dex2jar.jar:e/a/t/a/f$c.class */
    public class CallableC20283c implements Callable<List<String>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f57073a;

        public CallableC20283c(C25686y c25686y) {
            C20280f.this = r4;
            this.f57073a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<String> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C20280f.this.f57068a, this.f57073a, false, null);
            try {
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    arrayList.add(m3090b.isNull(0) ? null : m3090b.getString(0));
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f57073a.m3057l();
            }
        }
    }

    public C20280f(AbstractC25677q abstractC25677q) {
        this.f57068a = abstractC25677q;
    }

    @Override // p193e.p194a.p1221t.p1222a.AbstractC20279e
    /* renamed from: a */
    public Object mo11283a(List<String> list, d<? super List<C20305t>> dVar) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT * FROM shortnames WHERE emoji IN (");
        int size = list.size();
        C25655d.m3086a(sb, size);
        sb.append(") GROUP BY emoji");
        C25686y m3059j = C25686y.m3059j(sb.toString(), size + 0);
        int i = 1;
        for (String str : list) {
            if (str == null) {
                m3059j.mo2648y0(i);
            } else {
                m3059j.mo2651f0(i, str);
            }
            i++;
        }
        return C25650g.m3095b(this.f57068a, false, new CancellationSignal(), new CallableC20282b(m3059j), dVar);
    }

    @Override // p193e.p194a.p1221t.p1222a.AbstractC20279e
    /* renamed from: b */
    public Object mo11282b(String str, int i, d<? super List<String>> dVar) {
        C25686y m3059j = C25686y.m3059j("SELECT DISTINCT emoji FROM keywords WHERE keyword LIKE ? ORDER BY id LIMIT ?", 2);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        m3059j.mo2650l0(2, i);
        return C25650g.m3095b(this.f57068a, false, new CancellationSignal(), new CallableC20283c(m3059j), dVar);
    }

    @Override // p193e.p194a.p1221t.p1222a.AbstractC20279e
    /* renamed from: c */
    public Object mo11281c(String str, int i, d<? super List<C20305t>> dVar) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM shortnames WHERE shortname LIKE ? GROUP BY emoji ORDER BY id LIMIT ?", 2);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        m3059j.mo2650l0(2, i);
        return C25650g.m3095b(this.f57068a, false, new CancellationSignal(), new CallableC20281a(m3059j), dVar);
    }
}
