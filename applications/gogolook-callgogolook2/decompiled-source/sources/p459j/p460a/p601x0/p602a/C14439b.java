package p459j.p460a.p601x0.p602a;

import gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject;
import java.util.HashSet;
import java.util.List;
import p459j.p460a.p541n0.C13041b;
import p459j.p460a.p541n0.C13193p;
/* renamed from: j.a.x0.a.b */
/* loaded from: classes3-dex2jar.jar:j/a/x0/a/b.class */
public class C14439b extends AbstractC14442e {

    /* renamed from: D */
    public List<BlockLogRealmObject> f32293D = null;

    /* renamed from: E */
    public BlockLogRealmObject f32294E = null;

    /* renamed from: F */
    public int f32295F = 0;

    public C14439b() {
        m1336L();
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: A */
    public boolean mo1289A() {
        return true;
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: B */
    public boolean mo1333B() {
        List<BlockLogRealmObject> list = this.f32293D;
        if (list == null || list.isEmpty()) {
            return false;
        }
        this.f32295F = 0;
        this.f32294E = this.f32293D.get(this.f32295F);
        return true;
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: C */
    public boolean mo1332C() {
        List<BlockLogRealmObject> list = this.f32293D;
        if (list == null || this.f32295F >= list.size() - 1) {
            this.f32295F++;
            return false;
        }
        this.f32295F++;
        this.f32294E = this.f32293D.get(this.f32295F);
        return true;
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: D */
    public void mo1299D() {
        int i = this.f32308h;
        if (i == 2 || i == 3) {
            this.f32293D = C13041b.m4727a(m1310l(), m1314h());
        } else if (i == 4 || i == 5) {
            this.f32293D = C13041b.m4721b(m1310l(), m1312j());
        }
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: E */
    public HashSet<Long> mo1331E() {
        List<BlockLogRealmObject> a = C13041b.m4723a(C13193p.m4437a(new String[0]), C13193p.m4438a(new Object[0]), C13193p.m4439a(new C13193p.EnumC13194a[0]), null, null);
        if (a == null || a.isEmpty()) {
            return null;
        }
        HashSet<Long> hashSet = new HashSet<>();
        for (BlockLogRealmObject blockLogRealmObject : a) {
            hashSet.add(Long.valueOf(blockLogRealmObject.getId()));
        }
        return hashSet;
    }

    /* renamed from: L */
    public void m1336L() {
        this.f32310j = "id";
        this.f32312l = "_number";
        this.f32314n = null;
        this.f32316p = null;
        this.f32318r = "_createtime";
        this.f32320t = null;
        this.f32322v = "_kind";
        this.f32324x = null;
        this.f32326z = "_content";
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: a */
    public int mo1286a(int i) {
        if (i != 1) {
            return i != 2 ? 240 : 33;
        }
        return 17;
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: a */
    public boolean mo1324a() {
        List<BlockLogRealmObject> list = this.f32293D;
        return list != null && list.size() > 0;
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: b */
    public void mo1295b() {
        this.f32293D = null;
        this.f32295F = -1;
        this.f32294E = null;
        super.mo1295b();
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: c */
    public long mo1318c() {
        return m1321a(mo1292p());
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: d */
    public String mo1294d() {
        BlockLogRealmObject blockLogRealmObject = this.f32294E;
        return blockLogRealmObject != null ? blockLogRealmObject.get_content() : "";
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: e */
    public int mo1316e() {
        List<BlockLogRealmObject> list = this.f32293D;
        return list != null ? list.size() : 0;
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: f */
    public long mo1293f() {
        BlockLogRealmObject blockLogRealmObject = this.f32294E;
        return blockLogRealmObject != null ? blockLogRealmObject.get_createtime() : -1L;
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: g */
    public int mo1315g() {
        return 0;
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: n */
    public String mo1308n() {
        return m1317c(mo1292p());
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: o */
    public int mo1285o() {
        return 0;
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: p */
    public String mo1292p() {
        BlockLogRealmObject blockLogRealmObject = this.f32294E;
        return blockLogRealmObject != null ? blockLogRealmObject.get_number() : "";
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: q */
    public int mo1307q() {
        return this.f32295F;
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: r */
    public String[] mo1284r() {
        return new String[]{this.f32310j, this.f32312l, this.f32322v, this.f32326z, this.f32318r};
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: t */
    public int mo1305t() {
        BlockLogRealmObject blockLogRealmObject = this.f32294E;
        return blockLogRealmObject != null ? blockLogRealmObject.get_kind() : 0;
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: u */
    public long mo1304u() {
        BlockLogRealmObject blockLogRealmObject = this.f32294E;
        return blockLogRealmObject != null ? blockLogRealmObject.getId() : -1L;
    }
}
