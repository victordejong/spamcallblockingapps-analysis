package com.callerid.block.mvc.controller;

import com.callerid.block.p036d.C0946c;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/SuggestNameActivity$c.class */
class SuggestNameActivity$c implements Runnable {

    /* renamed from: b */
    final /* synthetic */ String f4706b;

    SuggestNameActivity$c(SuggestNameActivity suggestNameActivity, String str) {
        this.f4706b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        C0946c.m10474c().m10473d(this.f4706b);
    }
}
