package com.callerid.block.mvc.controller;

import android.os.AsyncTask;
import java.util.TimerTask;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/EZDialActivity$g.class */
class EZDialActivity$g extends TimerTask {

    /* renamed from: b */
    final /* synthetic */ EZDialActivity f4635b;

    EZDialActivity$g(EZDialActivity eZDialActivity) {
        this.f4635b = eZDialActivity;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        try {
            String sb = EZDialActivity.q0(this.f4635b).toString();
            String str = sb;
            if (sb.indexOf("#") != -1) {
                str = sb.replace('#', ' ');
            }
            String str2 = str;
            if (str.indexOf(45) != -1) {
                str2 = str.replaceAll("-", "");
            }
            new EZDialActivity$f(this.f4635b, str2).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
