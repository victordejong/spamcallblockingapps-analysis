package com.allinone.callerid.util;

import android.content.Context;
import com.allinone.callerid.bean.CustomBlock;
import com.allinone.callerid.bean.EZBlackList;
import com.allinone.callerid.bean.ShortCut;
import com.allinone.callerid.main.EZCallApplication;
import java.util.ArrayList;
import java.util.List;
import org.xutils.DbManager;
/* renamed from: com.allinone.callerid.util.m */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/m.class */
public class C3800m {

    /* renamed from: a */
    private Context f12048a;

    /* renamed from: b */
    private DbManager f12049b;

    /* renamed from: c */
    private DbManager f12050c;

    public C3800m(Context context) {
        this.f12048a = context;
        try {
            this.f12049b = C3788k.m24138a().m24137b();
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            this.f12050c = C3795l.m24112a().m24111b();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: a */
    public void m24108a() {
        try {
            List findAll = this.f12049b.selector(EZBlackList.class).findAll();
            if (findAll == null || findAll.size() <= 0) {
                return;
            }
            this.f12049b.delete(findAll);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public void m24107b() {
        try {
            List findAll = this.f12050c.selector(CustomBlock.class).where(ShortCut.NUMBER, "!=", "").findAll();
            if (findAll == null || findAll.size() <= 0) {
                return;
            }
            this.f12050c.delete(findAll);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public void m24106c(String str) {
        try {
            EZBlackList eZBlackList = (EZBlackList) this.f12049b.selector(EZBlackList.class).where(ShortCut.NUMBER, "=", str).findFirst();
            if (eZBlackList == null) {
                return;
            }
            this.f12049b.delete(eZBlackList);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    public void m24105d(String str) {
        try {
            List findAll = this.f12049b.selector(EZBlackList.class).where(ShortCut.NUMBER, "=", str).m235or(ShortCut.NUMBER, "=", C3767h1.m24249g(EZCallApplication.m26146c(), str, C3806p.m24083d(EZCallApplication.m26146c()).getCountry_code())).findAll();
            if (findAll == null || findAll.size() <= 0) {
                return;
            }
            this.f12049b.delete(findAll);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: e */
    public void m24104e(String str) {
        try {
            List findAll = this.f12050c.selector(CustomBlock.class).where(ShortCut.NUMBER, "=", str).findAll();
            if (findAll == null || findAll.size() <= 0) {
                return;
            }
            this.f12050c.delete(findAll);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.util.List] */
    /* renamed from: f */
    public List<CustomBlock> m24103f() {
        ArrayList arrayList = new ArrayList();
        try {
            arrayList = this.f12050c.selector(CustomBlock.class).orderBy("_id", true).findAll();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.util.List] */
    /* renamed from: g */
    public List<CustomBlock> m24102g(int i) {
        ArrayList arrayList = new ArrayList();
        try {
            arrayList = this.f12050c.selector(CustomBlock.class).where("type", "=", String.valueOf(i)).findAll();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return arrayList;
    }

    /* renamed from: h */
    public List<EZBlackList> m24101h() {
        try {
            ArrayList arrayList = new ArrayList();
            List findAll = this.f12049b.selector(EZBlackList.class).orderBy("_id", true).findAll();
            if (findAll != null && findAll.size() > 0) {
                for (int i = 0; i < findAll.size(); i++) {
                    EZBlackList eZBlackList = (EZBlackList) findAll.get(i);
                    if (eZBlackList.getIs_myblock() != null && "true".equals(eZBlackList.getIs_myblock())) {
                        arrayList.add(eZBlackList);
                    }
                }
            }
            return arrayList;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: i */
    public Boolean m24100i(String str, String str2) {
        try {
            if (((CustomBlock) this.f12050c.selector(CustomBlock.class).where(ShortCut.NUMBER, "=", str).and("type", "=", str2).findFirst()) != null) {
                return Boolean.TRUE;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Boolean.FALSE;
    }

    /* renamed from: j */
    public Boolean m24099j(String str) {
        Boolean bool;
        String m24249g = C3767h1.m24249g(EZCallApplication.m26146c(), str, C3806p.m24083d(EZCallApplication.m26146c()).getCountry_code());
        Boolean bool2 = Boolean.FALSE;
        try {
            EZBlackList eZBlackList = (EZBlackList) this.f12049b.selector(EZBlackList.class).where(ShortCut.NUMBER, "=", str).m235or(ShortCut.NUMBER, "=", m24249g).findFirst();
            bool = bool2;
            if (eZBlackList != null) {
                bool = bool2;
                if (eZBlackList.getIs_myblock() != null) {
                    bool = bool2;
                    if ("true".equals(eZBlackList.getIs_myblock())) {
                        bool = Boolean.TRUE;
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            bool = bool2;
        }
        return bool;
    }

    /* renamed from: k */
    public Boolean m24098k(String str) {
        try {
            List findAll = this.f12050c.selector(CustomBlock.class).where("type", "=", str).findAll();
            if (findAll != null && findAll.size() > 0) {
                return Boolean.TRUE;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Boolean.FALSE;
    }

    /* renamed from: l */
    public void m24097l(EZBlackList eZBlackList) {
        try {
            this.f12049b.save(eZBlackList);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: m */
    public void m24096m(String str, int i) {
        CustomBlock customBlock = new CustomBlock();
        customBlock.setNumber(str);
        customBlock.setType(i);
        try {
            List findAll = this.f12050c.selector(CustomBlock.class).where(ShortCut.NUMBER, "=", customBlock.getNumber()).and("type", "=", Integer.valueOf(customBlock.getType())).findAll();
            if (findAll != null && findAll.size() != 0) {
                return;
            }
            this.f12050c.save(customBlock);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: n */
    public void m24095n(EZBlackList eZBlackList) {
        try {
            this.f12049b.update(eZBlackList, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
