package com.asus.snapcall;

import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.Toast;
import com.android.contacts.a.b;
import com.asus.blocklist.g;
/* loaded from: classes-dex2jar.jar:com/asus/snapcall/a.class */
public final class a extends AsyncTask<Void, Integer, Boolean> {

    /* renamed from: a  reason: collision with root package name */
    private final int f3086a = 10;

    /* renamed from: b  reason: collision with root package name */
    private final int f3087b = 0;
    private final int c = 1;
    private Context d;
    private boolean e;
    private String f;

    public a(Context context, boolean z, String str) {
        this.d = context;
        this.e = z;
        if (str == null) {
            this.f = null;
        } else if (g.a(str)) {
            this.f = str;
        } else {
            this.f = c.a(context, str);
        }
        Log.d("SnapCallLogAsyncTask", "[Handle][constructor] isOutGoing = " + z + ", number = " + com.asus.a.a.c(str));
    }

    /* JADX WARN: Removed duplicated region for block: B:121:0x0411  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean a(android.content.Context r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 1065
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.snapcall.a.a(android.content.Context, java.lang.String):boolean");
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ Boolean doInBackground(Void[] voidArr) {
        boolean z;
        Log.d("SnapCallLogAsyncTask", "[Handle][doInBackground] mIsOutGoing = " + this.e);
        if (c.b(this.d, this.f)) {
            Log.d("SnapCallLogAsyncTask", "[Handle][doInBackground] Case snap number");
            z = Boolean.valueOf(a(this.d, this.f));
        } else {
            z = false;
        }
        return z;
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(Boolean bool) {
        Boolean bool2 = bool;
        Log.d("SnapCallLogAsyncTask", "[Handle][onPostExecute], result return " + bool2);
        if (bool2.booleanValue()) {
            b.a();
            b.a(17, this.d, "Activation", "Snap call proportion", "Snap calls", null);
            return;
        }
        b.a();
        b.a(17, this.d, "Activation", "Snap call proportion", "Other calls", null);
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onProgressUpdate(Integer[] numArr) {
        switch (numArr[0].intValue()) {
            case 0:
                if (this.e) {
                    Toast.makeText(this.d, this.d.getString(2131756186), 0).show();
                    return;
                } else {
                    Toast.makeText(this.d, this.d.getString(2131756187), 0).show();
                    return;
                }
            case 1:
                Toast.makeText(this.d, this.d.getString(2131756185), 0).show();
                return;
            default:
                return;
        }
    }
}
