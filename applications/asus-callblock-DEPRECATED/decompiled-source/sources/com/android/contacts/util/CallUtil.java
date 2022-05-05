package com.android.contacts.util;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Point;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Looper;
import android.telecom.PhoneAccountHandle;
import android.util.Log;
import android.widget.Toast;
import com.android.contacts.dialpad.b;
import com.android.contacts.interactions.j;
import com.android.vcard.VCardConfig;
import com.asus.prefersim.a;
import com.asus.prefersim.c;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/CallUtil.class */
public class CallUtil {
    private static final String ACTION_TOUCH_DIALER = "com.android.phone.action.TOUCH_DIALER";
    public static final String CALL_ORIGIN_DIALTACTS = "com.android.contacts.activities.DialtactsActivity";
    private static final String TAG = "CallUtil";
    private static List<IsLockListener> listeners = new ArrayList();

    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/CallUtil$IsLockListener.class */
    public interface IsLockListener {
        void afterFinished();
    }

    private static void CountDown() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.android.contacts.util.CallUtil.1
            /* JADX WARN: Type inference failed for: r0v0, types: [com.android.contacts.util.CallUtil$1$1] */
            @Override // java.lang.Runnable
            public final void run() {
                new CountDownTimer(2000L, 1000L) { // from class: com.android.contacts.util.CallUtil.1.1
                    @Override // android.os.CountDownTimer
                    public void onFinish() {
                        b.f1010a = false;
                        Log.v(CallUtil.TAG, "unlock mode, time's up ");
                        if (CallUtil.listeners.size() > 0) {
                            for (IsLockListener isLockListener : CallUtil.listeners) {
                                isLockListener.afterFinished();
                            }
                        }
                    }

                    @Override // android.os.CountDownTimer
                    public void onTick(long j) {
                        Log.v(CallUtil.TAG, "lock mode , timer count down");
                    }
                }.start();
            }
        });
    }

    public static void addIsLockListener(IsLockListener isLockListener) {
        listeners.add(isLockListener);
    }

    public static void clearIsLockListener() {
        listeners.clear();
    }

    public static Intent getCallIntent(Uri uri) {
        return getCallIntent(uri, (String) null, (PhoneAccountHandle) null);
    }

    public static Intent getCallIntent(Uri uri, PhoneAccountHandle phoneAccountHandle) {
        return getCallIntent(uri, (String) null, phoneAccountHandle);
    }

    public static Intent getCallIntent(Uri uri, String str, PhoneAccountHandle phoneAccountHandle) {
        return getCallIntent(uri, str, phoneAccountHandle, 0);
    }

    public static Intent getCallIntent(Uri uri, String str, PhoneAccountHandle phoneAccountHandle, int i) {
        Intent intent = new Intent("android.intent.action.CALL", uri);
        intent.putExtra("android.telecom.extra.START_CALL_WITH_VIDEO_STATE", i);
        if (str != null) {
            intent.putExtra(PhoneConstants.EXTRA_CALL_ORIGIN, str);
        }
        if (phoneAccountHandle != null) {
            intent.putExtra("android.telecom.extra.PHONE_ACCOUNT_HANDLE", phoneAccountHandle);
        }
        return intent;
    }

    public static Intent getCallIntent(String str) {
        return getCallIntent(str, (String) null, (PhoneAccountHandle) null);
    }

    public static Intent getCallIntent(String str, PhoneAccountHandle phoneAccountHandle) {
        return getCallIntent(str, (String) null, phoneAccountHandle);
    }

    public static Intent getCallIntent(String str, String str2) {
        return getCallIntent(getCallUri(str), str2, (PhoneAccountHandle) null);
    }

    public static Intent getCallIntent(String str, String str2, PhoneAccountHandle phoneAccountHandle) {
        return getCallIntent(getCallUri(str), str2, phoneAccountHandle);
    }

    public static String getCallOrigin(Intent intent) {
        return !isDialIntent(intent) ? CALL_ORIGIN_DIALTACTS : null;
    }

    public static Uri getCallUri(String str) {
        return isUriNumber(str) ? Uri.fromParts(Constants.SCHEME_SIP, str, null) : Uri.fromParts(Constants.SCHEME_TEL, str, null);
    }

    public static Intent getVideoCallIntent(String str, PhoneAccountHandle phoneAccountHandle) {
        return getVideoCallIntent(str, null, phoneAccountHandle);
    }

    public static Intent getVideoCallIntent(String str, String str2) {
        return getCallIntent(getCallUri(str), str2, null, 3);
    }

    public static Intent getVideoCallIntent(String str, String str2, PhoneAccountHandle phoneAccountHandle) {
        return getCallIntent(getCallUri(str), str2, phoneAccountHandle, 3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003c, code lost:
        if (com.android.contacts.util.Constants.SCHEME_TEL.equals(r0.getScheme()) == false) goto L_0x003f;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isDialIntent(android.content.Intent r3) {
        /*
            r0 = 1
            r4 = r0
            r0 = r3
            java.lang.String r0 = r0.getAction()
            r5 = r0
            r0 = r4
            r6 = r0
            java.lang.String r0 = "android.intent.action.DIAL"
            r1 = r5
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x001d
            java.lang.String r0 = "com.android.phone.action.TOUCH_DIALER"
            r1 = r5
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x001f
            r0 = r4
            r6 = r0
        L_0x001d:
            r0 = r6
            return r0
        L_0x001f:
            java.lang.String r0 = "android.intent.action.VIEW"
            r1 = r5
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x003f
            r0 = r3
            android.net.Uri r0 = r0.getData()
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L_0x003f
            r0 = r4
            r6 = r0
            java.lang.String r0 = "tel"
            r1 = r3
            java.lang.String r1 = r1.getScheme()
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x001d
        L_0x003f:
            r0 = 0
            r6 = r0
            goto L_0x001d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.util.CallUtil.isDialIntent(android.content.Intent):boolean");
    }

    public static boolean isUriNumber(String str) {
        return str != null && (str.contains("@") || str.contains("%40"));
    }

    public static void startActivityWithErrorToast(Context context, Intent intent) {
        startActivityWithErrorToast(context, intent, 2131755026);
    }

    public static void startActivityWithErrorToast(Context context, Intent intent, int i) {
        try {
            if (!"android.intent.action.CALL".equals(intent.getAction())) {
                ImplicitIntentsUtil.startActivityInAppIfPossible(context, intent);
            } else if (!b.f1010a) {
                b.f1010a = true;
                CountDown();
                Point point = j.a().f1478a;
                Log.d(TAG, "Point: (" + point.x + ", " + point.y + ")");
                if (!(point.x == 0 && point.y == 0)) {
                    Bundle bundle = new Bundle();
                    bundle.putParcelable("touchPoint", point);
                    intent.putExtra("android.telecom.extra.OUTGOING_CALL_EXTRAS", bundle);
                }
                try {
                    ((Activity) context).startActivityForResult(intent, 0);
                } catch (ClassCastException e) {
                    e.printStackTrace();
                    intent.setFlags(VCardConfig.FLAG_REFRAIN_QP_TO_NAME_PROPERTIES);
                    ImplicitIntentsUtil.startActivityOutsideApp(context, intent);
                }
            } else {
                Log.d(TAG, "lock mode, thrown away intent");
            }
        } catch (ActivityNotFoundException e2) {
            e2.printStackTrace();
            Toast.makeText(context, i, 0).show();
        }
    }

    public static void startDialActivity(Context context, Intent intent) {
        boolean hasExtra = intent.hasExtra("android.telecom.extra.PHONE_ACCOUNT_HANDLE");
        boolean booleanExtra = intent.getBooleanExtra("EXTRA_REPLY_FROM_CALL_LOG", false);
        boolean booleanExtra2 = intent.getBooleanExtra("EXTRA_CALL_IN_EZMODE", false);
        if ("android.intent.action.CALL_PRIVILEGED".equals(intent.getAction())) {
            intent.setAction("android.intent.action.CALL");
            intent.setComponent(null);
        }
        if (booleanExtra) {
            intent.removeExtra("EXTRA_REPLY_FROM_CALL_LOG");
        }
        if (booleanExtra2) {
            intent.removeExtra("EXTRA_CALL_IN_EZMODE");
        }
        if (!c.a(context) || ((hasExtra && !booleanExtra) || booleanExtra2 || intent.getDataString() == null)) {
            startActivityWithErrorToast(context, intent);
            return;
        }
        try {
            new a(0).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, context, intent);
        } catch (Exception e) {
            Log.d(TAG, "set Prefer Sim Call task error: " + e.toString());
        }
    }
}
