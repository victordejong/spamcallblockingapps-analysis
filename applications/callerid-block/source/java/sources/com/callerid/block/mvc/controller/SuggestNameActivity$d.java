package com.callerid.block.mvc.controller;

import com.callerid.block.bean.EZBlackList;
import com.callerid.block.bean.EZSearchContacts;
import com.callerid.block.p036d.C0947d;
import com.callerid.block.util.C1216t0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/SuggestNameActivity$d.class */
public class SuggestNameActivity$d implements Runnable {

    /* renamed from: b */
    final /* synthetic */ String f4707b;

    /* renamed from: c */
    final /* synthetic */ String f4708c;

    /* renamed from: d */
    final /* synthetic */ SuggestNameActivity f4709d;

    /* renamed from: com.callerid.block.mvc.controller.SuggestNameActivity$d$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/SuggestNameActivity$d$a.class */
    class RunnableC1108a implements Runnable {
        RunnableC1108a() {
            SuggestNameActivity$d.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C1216t0.m9570h0(SuggestNameActivity$d.this.f4709d.getApplicationContext());
        }
    }

    SuggestNameActivity$d(SuggestNameActivity suggestNameActivity, String str, String str2) {
        this.f4709d = suggestNameActivity;
        this.f4707b = str;
        this.f4708c = str2;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            EZSearchContacts m10468d = C0947d.m10470b().m10468d(this.f4707b);
            if (m10468d != null) {
                m10468d.setName(this.f4708c);
                C0947d.m10470b().m10466f(m10468d, EZBlackList.NAME);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.f4709d.runOnUiThread(new RunnableC1108a());
    }
}
