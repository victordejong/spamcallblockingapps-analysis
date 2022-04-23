package com.asus.laterhandle;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/asus/laterhandle/b.class */
public final class b {

    /* loaded from: classes-dex2jar.jar:com/asus/laterhandle/b$a.class */
    public interface a {
    }

    public static View a(Activity activity) {
        return activity != null ? activity.getWindow().getDecorView() : null;
    }

    public static boolean a(Context context) {
        boolean z = false;
        if (context.getPackageManager().queryBroadcastReceivers(new Intent("com.asus.task.intent.ACTION_LATER"), 0).size() > 0) {
            z = true;
        }
        return z;
    }

    public static boolean a(Context context, View view, Bundle bundle, Intent intent) {
        boolean z;
        if (context == null || !a(context)) {
            Log.i("DoItLater", "Do it later is not supported and callback intent cannot be null");
            z = false;
        } else {
            z = view != null ? new e(context, view).a(bundle, intent) : new d(context, bundle, null, intent).a();
        }
        return z;
    }
}
