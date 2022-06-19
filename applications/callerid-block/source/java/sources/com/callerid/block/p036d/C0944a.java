package com.callerid.block.p036d;

import com.callerid.block.bean.AdContent;
import com.callerid.block.main.EZCallApplication;
import com.lidroid.xutils.DbUtils;
import com.lidroid.xutils.p086db.sqlite.Selector;
/* renamed from: com.callerid.block.d.a */
/* loaded from: classes-dex2jar.jar:com/callerid/block/d/a.class */
public class C0944a {

    /* renamed from: b */
    private static C0944a f4296b;

    /* renamed from: a */
    private DbUtils f4297a;

    private C0944a() {
        try {
            this.f4297a = DbUtils.create(EZCallApplication.m10163c(), "com.block.adcontent", 1, new a(this));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public static C0944a m10482c() {
        if (f4296b == null) {
            f4296b = new C0944a();
        }
        return f4296b;
    }

    /* renamed from: a */
    public boolean m10484a() {
        boolean z;
        try {
            AdContent adContent = (AdContent) this.f4297a.findFirst(Selector.from(AdContent.class).where("adname", "=", "firstname"));
            z = true;
            if (adContent != null) {
                z = adContent.isSelected();
            }
        } catch (Exception e) {
            e.printStackTrace();
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public void m10483b() {
        try {
            AdContent adContent = (AdContent) this.f4297a.findFirst(Selector.from(AdContent.class).where("adname", "=", "firstname"));
            if (adContent != null) {
                adContent.setSelected(false);
                this.f4297a.update(adContent, "isSelected");
            } else {
                AdContent adContent2 = new AdContent();
                adContent2.setAdname("firstname");
                adContent2.setSelected(false);
                this.f4297a.saveOrUpdate(adContent2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    public void m10481d() {
        try {
            AdContent adContent = (AdContent) this.f4297a.findFirst(Selector.from(AdContent.class).where("adname", "=", "firstname"));
            if (adContent != null) {
                adContent.setSelected(true);
                this.f4297a.update(adContent, "isSelected");
            } else {
                AdContent adContent2 = new AdContent();
                adContent2.setAdname("firstname");
                adContent2.setSelected(true);
                this.f4297a.saveOrUpdate(adContent2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
