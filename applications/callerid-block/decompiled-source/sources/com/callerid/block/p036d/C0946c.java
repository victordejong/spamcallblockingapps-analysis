package com.callerid.block.p036d;

import com.callerid.block.bean.EZBlackList;
import com.callerid.block.bean.NumberContent;
import com.callerid.block.main.EZCallApplication;
import com.lidroid.xutils.DbUtils;
import com.lidroid.xutils.exception.DbException;
import com.lidroid.xutils.p086db.sqlite.Selector;
/* renamed from: com.callerid.block.d.c */
/* loaded from: classes-dex2jar.jar:com/callerid/block/d/c.class */
public class C0946c {

    /* renamed from: b */
    private static C0946c f4300b;

    /* renamed from: a */
    private DbUtils f4301a;

    private C0946c() {
        try {
            this.f4301a = DbUtils.create(EZCallApplication.m10163c(), "reportnumberdb", 2, new a(this));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public static C0946c m10474c() {
        if (f4300b == null) {
            f4300b = new C0946c();
        }
        return f4300b;
    }

    /* renamed from: a */
    public boolean m10476a(String str) {
        boolean z;
        try {
            NumberContent numberContent = (NumberContent) this.f4301a.findFirst(Selector.from(NumberContent.class).where(EZBlackList.NUMBER, "=", str));
            z = true;
            if (numberContent != null) {
                z = true;
                if (numberContent.is_reported()) {
                    z = true;
                    if (System.currentTimeMillis() - numberContent.getReported_time() < 86400000) {
                        z = false;
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public boolean m10475b(String str) {
        boolean z;
        try {
            NumberContent numberContent = (NumberContent) this.f4301a.findFirst(Selector.from(NumberContent.class).where(EZBlackList.NUMBER, "=", str));
            z = true;
            if (numberContent != null) {
                z = System.currentTimeMillis() > numberContent.getSuggest_time();
            }
        } catch (Exception e) {
            e.printStackTrace();
            z = true;
        }
        return z;
    }

    /* renamed from: d */
    public void m10473d(String str) {
        try {
            NumberContent numberContent = (NumberContent) this.f4301a.findFirst(Selector.from(NumberContent.class).where(EZBlackList.NUMBER, "=", str));
            if (numberContent != null) {
                numberContent.setSuggest_time(System.currentTimeMillis() + 43200000);
                this.f4301a.update(numberContent, "suggest_time");
            } else {
                NumberContent numberContent2 = new NumberContent();
                numberContent2.setNumber(str);
                numberContent2.setSuggest_time(System.currentTimeMillis() + 43200000);
                this.f4301a.saveOrUpdate(numberContent2);
            }
        } catch (DbException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: e */
    public void m10472e(String str) {
        try {
            NumberContent numberContent = (NumberContent) this.f4301a.findFirst(Selector.from(NumberContent.class).where(EZBlackList.NUMBER, "=", str));
            if (numberContent != null) {
                numberContent.setIs_reported(true);
                this.f4301a.update(numberContent, "is_reported");
                numberContent.setReported_time(System.currentTimeMillis());
                this.f4301a.update(numberContent, "reported_time");
            } else {
                NumberContent numberContent2 = new NumberContent();
                numberContent2.setNumber(str);
                numberContent2.setIs_reported(true);
                numberContent2.setReported_time(System.currentTimeMillis());
                this.f4301a.saveOrUpdate(numberContent2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
