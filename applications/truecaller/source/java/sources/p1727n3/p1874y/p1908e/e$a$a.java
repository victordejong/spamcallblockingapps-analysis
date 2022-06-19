package p1727n3.p1874y.p1908e;

import android.os.Handler;
import android.os.Message;
import java.util.ArrayList;
import java.util.Iterator;
import n3.y.e.e;
import p1727n3.p1874y.p1908e.C27513d;
/* renamed from: n3.y.e.e$a$a */
/* loaded from: classes-dex2jar.jar:n3/y/e/e$a$a.class */
public class e$a$a implements Handler.Callback {

    /* renamed from: a */
    public final e.a.b f77504a;

    /* renamed from: c */
    public e$a$d f77506c;

    /* renamed from: g */
    public final /* synthetic */ e.a f77510g;

    /* renamed from: b */
    public boolean f77505b = false;

    /* renamed from: d */
    public final e$a$d[] f77507d = new e$a$d[8];

    /* renamed from: e */
    public final ArrayList<C27513d.C27515c> f77508e = new ArrayList<>();

    /* renamed from: f */
    public final Handler f77509f = new Handler(this);

    public e$a$a(e.a aVar, e.a.b bVar) {
        this.f77510g = aVar;
        this.f77504a = bVar;
    }

    /* renamed from: a */
    public final void m168a(int i) {
        if (i == 0) {
            return;
        }
        Iterator<e$a$d> it = m166c(i).iterator();
        while (it.hasNext()) {
            e$a$d next = it.next();
            next.f77515e.clear();
            next.f77512b.m171c("");
            next.m163b();
        }
    }

    /* renamed from: b */
    public final void m167b() {
        this.f77505b = false;
        Iterator<C27513d.C27515c> it = this.f77508e.iterator();
        while (it.hasNext()) {
            m165d(it.next());
        }
        this.f77508e.clear();
    }

    /* renamed from: c */
    public final ArrayList<e$a$d> m166c(int i) {
        e$a$d e_a_d;
        ArrayList<e$a$d> arrayList = new ArrayList<>();
        for (int i2 = 0; i2 < 8; i2++) {
            if (((1 << i2) & i) != 0 && (e_a_d = this.f77507d[i2]) != null) {
                arrayList.add(e_a_d);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0143, code lost:
        if (r0 > 1.0f) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0161, code lost:
        if (r0 > 1.0f) goto L40;
     */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0293  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0312  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0340  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x036e  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m165d(p1727n3.p1874y.p1908e.C27513d.C27515c r9) {
        /*
            Method dump skipped, instructions count: 1750
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1908e.e$a$a.m165d(n3.y.e.d$c):void");
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            m167b();
            return true;
        } else if (i != 2) {
            return false;
        } else {
            m168a(255);
            return true;
        }
    }
}
