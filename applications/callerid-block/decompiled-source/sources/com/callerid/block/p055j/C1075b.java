package com.callerid.block.p055j;

import com.callerid.block.bean.ParserIpBean;
import com.callerid.block.main.EZCallApplication;
import com.lidroid.xutils.DbUtils;
import java.util.List;
/* renamed from: com.callerid.block.j.b */
/* loaded from: classes-dex2jar.jar:com/callerid/block/j/b.class */
public class C1075b {

    /* renamed from: b */
    private static C1075b f4545b;

    /* renamed from: a */
    private DbUtils f4546a;

    private C1075b() {
        try {
            this.f4546a = DbUtils.create(EZCallApplication.m10163c(), "parseripdb", 1, new a(this));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static C1075b m10216a() {
        if (f4545b == null) {
            f4545b = new C1075b();
        }
        return f4545b;
    }

    /* renamed from: b */
    public ParserIpBean m10215b() {
        ParserIpBean parserIpBean;
        try {
            List findAll = this.f4546a.findAll(ParserIpBean.class);
            parserIpBean = null;
            if (findAll != null) {
                parserIpBean = null;
                if (findAll.size() > 0) {
                    parserIpBean = (ParserIpBean) findAll.get(0);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            parserIpBean = null;
        }
        return parserIpBean;
    }

    /* renamed from: c */
    public void m10214c(ParserIpBean parserIpBean) {
        try {
            ParserIpBean b = m10215b();
            if (b == null) {
                this.f4546a.saveOrUpdate(parserIpBean);
            } else {
                b.setTrue_ip(parserIpBean.getTrue_ip());
                b.setCountry(parserIpBean.getCountry());
                b.setCountry_full(parserIpBean.getCountry_full());
                b.setState(parserIpBean.getState());
                b.setState_full(parserIpBean.getState_full());
                b.setCity(parserIpBean.getCity());
                this.f4546a.update(b, "true_ip", "country", "country_full", "state", "state_full", "city");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
