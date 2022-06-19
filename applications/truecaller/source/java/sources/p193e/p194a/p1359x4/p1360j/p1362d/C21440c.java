package p193e.p194a.p1359x4.p1360j.p1362d;

import android.database.Cursor;
import android.os.CancellationSignal;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.truecaller.searchwarnings.data.SearchWarningDTO;
import java.util.List;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.AbstractC25646c0;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25650g;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import p193e.p194a.p1049l4.C17422k;
import s1.s;
import s1.w.d;
import s1.z.b.l;
/* renamed from: e.a.x4.j.d.c */
/* loaded from: classes13-dex2jar.jar:e/a/x4/j/d/c.class */
public final class C21440c implements AbstractC21439b {

    /* renamed from: a */
    public final AbstractC25677q f59924a;

    /* renamed from: b */
    public final AbstractC25663k<SearchWarningDTO> f59925b;

    /* renamed from: c */
    public final AbstractC25646c0 f59926c;

    /* renamed from: e.a.x4.j.d.c$a */
    /* loaded from: classes13-dex2jar.jar:e/a/x4/j/d/c$a.class */
    public class C21441a extends AbstractC25663k<SearchWarningDTO> {
        public C21441a(C21440c c21440c, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, SearchWarningDTO searchWarningDTO) {
            SearchWarningDTO searchWarningDTO2 = searchWarningDTO;
            if (searchWarningDTO2.getId() == null) {
                abstractC26154f.mo2648y0(1);
            } else {
                abstractC26154f.mo2651f0(1, searchWarningDTO2.getId());
            }
            if (searchWarningDTO2.getHeader() == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2651f0(2, searchWarningDTO2.getHeader());
            }
            if (searchWarningDTO2.getMessage() == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2651f0(3, searchWarningDTO2.getMessage());
            }
            if (searchWarningDTO2.getBackgroundColor() == null) {
                abstractC26154f.mo2648y0(4);
            } else {
                abstractC26154f.mo2651f0(4, searchWarningDTO2.getBackgroundColor());
            }
            if (searchWarningDTO2.getForegroundColor() == null) {
                abstractC26154f.mo2648y0(5);
            } else {
                abstractC26154f.mo2651f0(5, searchWarningDTO2.getForegroundColor());
            }
            if (searchWarningDTO2.getIconUrl() == null) {
                abstractC26154f.mo2648y0(6);
            } else {
                abstractC26154f.mo2651f0(6, searchWarningDTO2.getIconUrl());
            }
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `search_warnings` (`_id`,`header`,`message`,`backgroundColor`,`foregroundColor`,`iconUrl`) VALUES (?,?,?,?,?,?)";
        }
    }

    /* renamed from: e.a.x4.j.d.c$b */
    /* loaded from: classes13-dex2jar.jar:e/a/x4/j/d/c$b.class */
    public class C21442b extends AbstractC25646c0 {
        public C21442b(C21440c c21440c, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM search_warnings";
        }
    }

    /* renamed from: e.a.x4.j.d.c$c */
    /* loaded from: classes13-dex2jar.jar:e/a/x4/j/d/c$c.class */
    public class CallableC21443c implements Callable<s> {

        /* renamed from: a */
        public final /* synthetic */ List f59927a;

        public CallableC21443c(List list) {
            C21440c.this = r4;
            this.f59927a = list;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            C21440c.this.f59924a.beginTransaction();
            try {
                C21440c.this.f59925b.insert(this.f59927a);
                C21440c.this.f59924a.setTransactionSuccessful();
                return s.a;
            } finally {
                C21440c.this.f59924a.endTransaction();
            }
        }
    }

    /* renamed from: e.a.x4.j.d.c$d */
    /* loaded from: classes13-dex2jar.jar:e/a/x4/j/d/c$d.class */
    public class C21444d implements l<d<? super s>, Object> {

        /* renamed from: a */
        public final /* synthetic */ List f59929a;

        public C21444d(List list) {
            C21440c.this = r4;
            this.f59929a = list;
        }

        /* renamed from: d */
        public Object m9722d(Object obj) {
            return C17422k.m16045x(C21440c.this, this.f59929a, (d) obj);
        }
    }

    /* renamed from: e.a.x4.j.d.c$e */
    /* loaded from: classes13-dex2jar.jar:e/a/x4/j/d/c$e.class */
    public class CallableC21445e implements Callable<SearchWarningDTO> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f59931a;

        public CallableC21445e(C25686y c25686y) {
            C21440c.this = r4;
            this.f59931a = c25686y;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public SearchWarningDTO call() throws Exception {
            SearchWarningDTO searchWarningDTO = null;
            String str = null;
            Cursor m3090b = C25653b.m3090b(C21440c.this.f59924a, this.f59931a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "_id");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "header");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "message");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "backgroundColor");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "foregroundColor");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "iconUrl");
                if (m3090b.moveToFirst()) {
                    String string = m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0);
                    String string2 = m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02);
                    String string3 = m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03);
                    String string4 = m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04);
                    String string5 = m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05);
                    if (!m3090b.isNull(m43237g06)) {
                        str = m3090b.getString(m43237g06);
                    }
                    searchWarningDTO = new SearchWarningDTO(string, string2, string3, string4, string5, str);
                }
                m3090b.close();
                this.f59931a.m3057l();
                return searchWarningDTO;
            } catch (Throwable th) {
                m3090b.close();
                this.f59931a.m3057l();
                throw th;
            }
        }
    }

    public C21440c(AbstractC25677q abstractC25677q) {
        this.f59924a = abstractC25677q;
        this.f59925b = new C21441a(this, abstractC25677q);
        this.f59926c = new C21442b(this, abstractC25677q);
    }

    @Override // p193e.p194a.p1359x4.p1360j.p1362d.AbstractC21439b
    /* renamed from: b */
    public Object mo9725b(List<SearchWarningDTO> list, d<? super s> dVar) {
        return C25650g.m3094c(this.f59924a, true, new CallableC21443c(list), dVar);
    }

    @Override // p193e.p194a.p1359x4.p1360j.p1362d.AbstractC21439b
    /* renamed from: c */
    public Object mo9724c(List<SearchWarningDTO> list, d<? super s> dVar) {
        return MediaSessionCompat.m43284M1(this.f59924a, new C21444d(list), dVar);
    }

    @Override // p193e.p194a.p1359x4.p1360j.p1362d.AbstractC21439b
    /* renamed from: d */
    public Object mo9723d(String str, d<? super SearchWarningDTO> dVar) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM search_warnings WHERE _id = ?", 1);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        return C25650g.m3095b(this.f59924a, false, new CancellationSignal(), new CallableC21445e(m3059j), dVar);
    }
}
