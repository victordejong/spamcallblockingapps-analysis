package com.callerid.block.p036d;

import com.callerid.block.bean.EZBlackList;
import com.callerid.block.bean.WhatsAppBean;
import com.callerid.block.main.EZCallApplication;
import com.lidroid.xutils.DbUtils;
import com.lidroid.xutils.p086db.sqlite.Selector;
import java.util.List;
/* renamed from: com.callerid.block.d.e */
/* loaded from: classes-dex2jar.jar:com/callerid/block/d/e.class */
public class C0948e {

    /* renamed from: b */
    private static C0948e f4304b;

    /* renamed from: a */
    private DbUtils f4305a;

    private C0948e() {
        try {
            this.f4305a = DbUtils.create(EZCallApplication.m10163c(), "whatsapp_call_number", 1, new a(this));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static C0948e m10465a() {
        if (f4304b == null) {
            f4304b = new C0948e();
        }
        return f4304b;
    }

    /* renamed from: b */
    public WhatsAppBean m10464b(String str) {
        try {
            return (WhatsAppBean) this.f4305a.findFirst(Selector.from(WhatsAppBean.class).where(EZBlackList.NUMBER, "=", str));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: c */
    public List<WhatsAppBean> m10463c() {
        try {
            return this.f4305a.findAll(WhatsAppBean.class);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: d */
    public void m10462d(WhatsAppBean whatsAppBean) {
        try {
            this.f4305a.saveOrUpdate(whatsAppBean);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: e */
    public void m10461e(WhatsAppBean whatsAppBean, String... strArr) {
        try {
            this.f4305a.update(whatsAppBean, strArr);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
