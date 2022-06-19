package com.firebase.jobdispatcher;

import android.os.AsyncTask;
/* loaded from: classes-dex2jar.jar:com/firebase/jobdispatcher/SimpleJobService$b.class */
public class SimpleJobService$b extends AsyncTask<Void, Void, Integer> {

    /* renamed from: a */
    public final SimpleJobService f2717a;

    /* renamed from: b */
    public final zp0 f2718b;

    public SimpleJobService$b(SimpleJobService simpleJobService, zp0 zp0Var) {
        this.f2717a = simpleJobService;
        this.f2718b = zp0Var;
    }

    /* renamed from: a */
    public Integer doInBackground(Void... voidArr) {
        return Integer.valueOf(this.f2717a.i(this.f2718b));
    }

    /* renamed from: b */
    public void onPostExecute(Integer num) {
        SimpleJobService simpleJobService = this.f2717a;
        zp0 zp0Var = this.f2718b;
        boolean z = true;
        if (num.intValue() != 1) {
            z = false;
        }
        SimpleJobService.g(simpleJobService, zp0Var, z);
    }
}
