package com.callerid.block.p036d;

import com.callerid.block.bean.CollectInfo;
import com.callerid.block.main.EZCallApplication;
import com.lidroid.xutils.DbUtils;
import com.lidroid.xutils.exception.DbException;
import java.util.List;
/* renamed from: com.callerid.block.d.b */
/* loaded from: classes-dex2jar.jar:com/callerid/block/d/b.class */
public class C0945b {

    /* renamed from: b */
    private static C0945b f4298b;

    /* renamed from: a */
    private DbUtils f4299a;

    private C0945b() {
        try {
            this.f4299a = DbUtils.create(EZCallApplication.m10163c(), "collectuserinfo", 1, new a(this));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static C0945b m10479b() {
        if (f4298b == null) {
            f4298b = new C0945b();
        }
        return f4298b;
    }

    /* renamed from: a */
    public void m10480a() {
        try {
            this.f4299a.deleteAll(CollectInfo.class);
        } catch (DbException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public void m10478c(CollectInfo collectInfo) {
        try {
            this.f4299a.saveOrUpdate(collectInfo);
        } catch (DbException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    public List<CollectInfo> m10477d() {
        try {
            return this.f4299a.findAll(CollectInfo.class);
        } catch (DbException e) {
            e.printStackTrace();
            return null;
        }
    }
}
