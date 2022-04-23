package com.callerid.block.main;

import com.callerid.block.util.C1199n0;
/* loaded from: classes-dex2jar.jar:com/callerid/block/main/BaseActivity$a.class */
class BaseActivity$a implements Runnable {

    /* renamed from: b */
    final /* synthetic */ String f4574b;

    /* renamed from: c */
    final /* synthetic */ BaseActivity f4575c;

    BaseActivity$a(BaseActivity baseActivity, String str) {
        this.f4575c = baseActivity;
        this.f4574b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        C1199n0.m9666s1(this.f4575c.getApplicationContext(), this.f4574b);
    }
}
