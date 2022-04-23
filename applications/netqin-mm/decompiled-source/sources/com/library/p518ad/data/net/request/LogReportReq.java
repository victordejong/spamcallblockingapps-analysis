package com.library.p518ad.data.net.request;

import android.app.Application;
import java.net.URLEncoder;
import java.util.ArrayList;
import p131c.p396i.p397a.C6489a;
import p131c.p396i.p397a.p399f.p401b.p402f.C6538a;
import p131c.p396i.p397a.p417j.C6617d;
import p131c.p396i.p397a.p417j.C6618e;
/* renamed from: com.library.ad.data.net.request.LogReportReq */
/* loaded from: classes2-dex2jar.jar:com/library/ad/data/net/request/LogReportReq.class */
public class LogReportReq extends C6538a {
    public String act;

    /* renamed from: di */
    public String f33153di = m5302a();

    public LogReportReq(String str) {
        super("adLog/", "");
        this.act = str;
    }

    /* renamed from: a */
    public final String m5302a() {
        Application b = C6489a.m20718b();
        ArrayList arrayList = new ArrayList();
        arrayList.add(C6617d.m20357a());
        arrayList.add(Long.valueOf(C6489a.f20204a));
        arrayList.add(C6489a.m20718b().getPackageName());
        arrayList.add(C6617d.m20349c());
        arrayList.add(Integer.valueOf(C6617d.m20351b()));
        arrayList.add(C6617d.m20336l());
        arrayList.add(Integer.valueOf(C6617d.m20337k()));
        arrayList.add(C6617d.m20338j());
        arrayList.add(C6617d.m20335m());
        arrayList.add(C6617d.m20347d());
        arrayList.add(Integer.valueOf(!C6618e.m20334a().m20329a("key_is_new_user", true).booleanValue()));
        arrayList.add(C6617d.m20355a(b));
        arrayList.add(C6617d.m20350b(b));
        arrayList.add(C6617d.m20348c(b));
        arrayList.add(C6617d.m20343f());
        arrayList.add(C6489a.f20205b);
        arrayList.add("1");
        arrayList.add(C6617d.m20345e());
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < arrayList.size(); i++) {
            stringBuffer.append(URLEncoder.encode(String.valueOf(arrayList.get(i))));
            if (i < arrayList.size() - 1) {
                stringBuffer.append(":");
            }
        }
        return stringBuffer.toString();
    }
}
