package com.callerid.block.p036d;

import com.callerid.block.bean.EZSearchContacts;
import com.callerid.block.main.EZCallApplication;
import com.lidroid.xutils.DbUtils;
import com.lidroid.xutils.exception.DbException;
import com.lidroid.xutils.p086db.sqlite.Selector;
/* renamed from: com.callerid.block.d.d */
/* loaded from: classes-dex2jar.jar:com/callerid/block/d/d.class */
public class C0947d {

    /* renamed from: b */
    private static C0947d f4302b;

    /* renamed from: a */
    private DbUtils f4303a;

    private C0947d() {
        try {
            this.f4303a = DbUtils.create(EZCallApplication.m10163c(), "com.callid.search.vest", 5, new a(this));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static C0947d m10470b() {
        if (f4302b == null) {
            f4302b = new C0947d();
        }
        return f4302b;
    }

    /* renamed from: a */
    public void m10471a() {
        try {
            this.f4303a.deleteAll(EZSearchContacts.class);
        } catch (DbException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public void m10469c(EZSearchContacts eZSearchContacts) {
        try {
            this.f4303a.saveOrUpdate(eZSearchContacts);
        } catch (DbException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    public EZSearchContacts m10468d(String str) {
        EZSearchContacts eZSearchContacts;
        try {
            eZSearchContacts = (EZSearchContacts) this.f4303a.findFirst(Selector.from(EZSearchContacts.class).where("old_tel_number", "=", str));
        } catch (Exception e) {
            e.printStackTrace();
            eZSearchContacts = null;
        }
        return eZSearchContacts;
    }

    /* renamed from: e */
    public EZSearchContacts m10467e(String str, String str2) {
        EZSearchContacts eZSearchContacts;
        try {
            eZSearchContacts = (EZSearchContacts) this.f4303a.findFirst(Selector.from(EZSearchContacts.class).where("old_tel_number", "=", str).m2015or("old_tel_number", "=", str2));
        } catch (Exception e) {
            e.printStackTrace();
            eZSearchContacts = null;
        }
        return eZSearchContacts;
    }

    /* renamed from: f */
    public void m10466f(EZSearchContacts eZSearchContacts, String... strArr) {
        try {
            this.f4303a.update(eZSearchContacts, strArr);
        } catch (DbException e) {
            e.printStackTrace();
        }
    }
}
