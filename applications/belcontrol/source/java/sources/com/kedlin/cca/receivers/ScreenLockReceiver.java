package com.kedlin.cca.receivers;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.fragment.app.FragmentActivity;
import com.flexaspect.android.everycallcontrol.ui.activities.ComposeActivity;
import com.flexaspect.android.everycallcontrol.ui.activities.MainActivity;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/receivers/ScreenLockReceiver.class */
public class ScreenLockReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public static ArrayList<Object> f3752a = new ArrayList<>();

    /* renamed from: a */
    public static Activity m4331a() {
        Object[] array;
        ArrayList<Object> arrayList = f3752a;
        for (Object obj : arrayList.toArray(new Object[arrayList.size()])) {
            if (obj instanceof MainActivity) {
                return (Activity) obj;
            }
        }
        return f3752a.size() > 0 ? (Activity) f3752a.get(0) : null;
    }

    /* renamed from: b */
    public static void m4330b(Object obj) {
        if (f3752a.contains(obj)) {
            return;
        }
        f3752a.add(obj);
    }

    /* renamed from: c */
    public static void m4329c(Object obj) {
        if (!f3752a.contains(obj)) {
            return;
        }
        f3752a.remove(obj);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Object[] array;
        Activity activity;
        ArrayList<Object> arrayList = f3752a;
        for (Object obj : arrayList.toArray(new Object[arrayList.size()])) {
            if (obj instanceof FragmentActivity) {
                activity = (FragmentActivity) obj;
            } else {
                if (obj instanceof ComposeActivity) {
                    ((ComposeActivity) obj).k();
                } else if (obj instanceof Activity) {
                    activity = (Activity) obj;
                }
            }
            activity.finish();
        }
        ka1.m1419e();
    }
}
