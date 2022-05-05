package com.privacystar.core.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.telephony.TelephonyManager;
import java.util.ArrayList;
import java.util.Iterator;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/receiver/CallBroadcastReceiver.class */
public class CallBroadcastReceiver extends BroadcastReceiver {
    private static ArrayList<CallResponder> onStart = new ArrayList<>();
    private static ArrayList<CallResponder> onEnd = new ArrayList<>();
    private static ArrayList<CallResponder> onRing = new ArrayList<>();
    private static ArrayList<CallResponder> onAll = new ArrayList<>();

    @FunctionalInterface
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/receiver/CallBroadcastReceiver$CallResponder.class */
    public interface CallResponder {
        void act(String str, String str2);
    }

    public static void addOnAllResponder(CallResponder callResponder) {
        onAll.add(callResponder);
    }

    public static void addOnIdleResponder(CallResponder callResponder) {
        onEnd.add(callResponder);
    }

    public static void addOnOffHookResponder(CallResponder callResponder) {
        onStart.add(callResponder);
    }

    public static void addOnRingResponder(CallResponder callResponder) {
        onRing.add(callResponder);
    }

    private void notify(ArrayList<CallResponder> arrayList, String str, String str2) {
        Iterator<CallResponder> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().act(str, str2);
        }
    }

    private void notifyAll(String str, String str2) {
        Timber.m28v("Notifying [%d] responder%s for all events.", Integer.valueOf(onAll.size()), onAll.size() == 1 ? "" : "s");
        notify(onAll, str, str2);
    }

    private void notifyOnEnd(String str) {
        Timber.m28v("Notifying [%d] responder%s for idle.", Integer.valueOf(onEnd.size()), onEnd.size() == 1 ? "" : "s");
        notify(onEnd, TelephonyManager.EXTRA_STATE_IDLE, str);
    }

    private void notifyOnRing(String str) {
        Timber.m28v("Notifying [%d] responder%s for ringing.", Integer.valueOf(onRing.size()), onRing.size() == 1 ? "" : "s");
        notify(onRing, TelephonyManager.EXTRA_STATE_RINGING, str);
    }

    private void notifyOnStart(String str) {
        Timber.m28v("Notifying [%d] responder%s for off-hook.", Integer.valueOf(onStart.size()), onStart.size() == 1 ? "" : "s");
        notify(onStart, TelephonyManager.EXTRA_STATE_OFFHOOK, str);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Timber.m28v("Received new intent action '%s'", intent.getAction());
        if (intent.getAction() != null && intent.getAction().equals("android.intent.action.PHONE_STATE")) {
            String stringExtra = intent.getStringExtra("state");
            String stringExtra2 = intent.getStringExtra("incoming_number");
            if (stringExtra2 != null) {
                Timber.m28v("New call state with number '%s'. Call state is '%s'", stringExtra2, stringExtra);
                notifyAll(stringExtra, stringExtra2);
                if (TelephonyManager.EXTRA_STATE_RINGING.equals(stringExtra)) {
                    notifyOnRing(stringExtra2);
                } else if (TelephonyManager.EXTRA_STATE_OFFHOOK.equals(stringExtra)) {
                    notifyOnStart(stringExtra2);
                } else if (TelephonyManager.EXTRA_STATE_IDLE.equals(stringExtra)) {
                    notifyOnEnd(stringExtra2);
                } else {
                    Timber.m25w("Received Call Broadcast from system without intent EXTRA_STATE set.", new Object[0]);
                }
            }
        }
    }
}
