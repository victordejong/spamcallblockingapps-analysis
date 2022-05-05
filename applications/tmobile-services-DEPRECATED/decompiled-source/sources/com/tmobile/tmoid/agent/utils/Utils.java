package com.tmobile.tmoid.agent.utils;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Binder;
import android.os.Build;
import android.os.Parcel;
import android.provider.Settings;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import com.tmobile.tmoid.helperlib.CommunicationException;
import com.tmobile.tmoid.helperlib.ServerErrorException;
import com.tmobile.tmoid.helperlib.sit.eap.EapAkaUtil;
import com.tmobile.tmoid.helperlib.util.Log;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.NotSerializableException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.commons.cli.HelpFormatter;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/agent/utils/Utils.class */
public class Utils {

    /* renamed from: a */
    private static final String f14700a = "TMO-Agent." + Utils.class.getSimpleName();

    /* renamed from: b */
    private static AtomicInteger f14701b = new AtomicInteger();

    /* renamed from: a */
    public static String m5076a(Context context) {
        try {
            String d = m5073d(context);
            String str = d.substring(0, 8) + HelpFormatter.DEFAULT_OPT_PREFIX + d.substring(8, 14) + "-0";
            String str2 = "urn:gsma:imei:" + str;
            Log.m4654d(f14700a, "Device ID: " + d + ", Computed dashed device ID: " + str + ", Final ID: " + str2);
            return Base64.encodeToString(str2.getBytes(), 0).trim();
        } catch (IllegalArgumentException | NullPointerException | SecurityException e) {
            Log.m4652e(f14700a, "Unable to get Device Id: " + e.getMessage());
            throw e;
        }
    }

    @TargetApi(21)
    /* renamed from: b */
    public static String m5075b(Context context) {
        String g = m5070g(context);
        String str = 0 + g + "@" + EapAkaUtil.m4978b(g);
        Log.m4654d(f14700a, "imsiEap: " + str);
        return str;
    }

    /* renamed from: c */
    public static int m5074c() {
        return f14701b.incrementAndGet();
    }

    @SuppressLint({"HardwareIds"})
    /* renamed from: d */
    private static String m5073d(Context context) {
        String str;
        SharedPreferences sharedPreferences = context.getSharedPreferences("PREF_DEVICE_ID", 0);
        String str2 = null;
        String string = sharedPreferences.getString("PREF_DEVICE_ID", null);
        String str3 = string;
        if (string == null) {
            try {
                str = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
            } catch (Exception e) {
                str = null;
            }
            String str4 = str;
            if (str == null) {
                try {
                    str4 = Settings.Secure.getString(context.getContentResolver(), "android_id");
                } catch (Exception e2) {
                    str4 = null;
                }
            }
            if (str4 == null) {
                try {
                    str2 = UUID.randomUUID().toString().replaceAll(HelpFormatter.DEFAULT_OPT_PREFIX, "").substring(0, 16);
                } catch (Exception e3) {
                }
            } else {
                str2 = str4;
            }
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.putString("PREF_DEVICE_ID", str2);
            edit.apply();
            str3 = str2;
        }
        return str3;
    }

    /* renamed from: e */
    public static String m5072e(Context context) {
        String str;
        try {
            str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).packageName;
        } catch (Exception e) {
            Log.m4653d(f14700a, "Exception: ", e);
            str = null;
        }
        String str2 = f14700a;
        Log.m4654d(str2, "packageName: " + str);
        return str;
    }

    /* renamed from: f */
    public static String m5071f(Context context) {
        String nameForUid = context.getPackageManager().getNameForUid(Binder.getCallingUid());
        String str = f14700a;
        Log.m4654d(str, "packageName: " + nameForUid);
        return nameForUid;
    }

    /* renamed from: g */
    private static String m5070g(Context context) {
        try {
            String h = Build.VERSION.SDK_INT > 28 ? m5069h(context) : ((TelephonyManager) context.getSystemService("phone")).getSubscriberId();
            String str = f14700a;
            Log.m4654d(str, "Subscriber Id: " + h);
            return h;
        } catch (NullPointerException | SecurityException e) {
            String str2 = f14700a;
            Log.m4652e(str2, "Unable to get Subscriber Id: " + e.getMessage());
            throw e;
        }
    }

    @SuppressLint({"MissingPermission", "NewApi"})
    /* renamed from: h */
    private static String m5069h(Context context) throws NullPointerException {
        String iccId;
        List<SubscriptionInfo> activeSubscriptionInfoList = ((SubscriptionManager) context.getSystemService(SubscriptionManager.class)).getActiveSubscriptionInfoList();
        if (activeSubscriptionInfoList == null || activeSubscriptionInfoList.isEmpty()) {
            throw new NullPointerException("Empty subscriptions list!");
        }
        SubscriptionInfo subscriptionInfo = activeSubscriptionInfoList.get(0);
        if (!TextUtils.isEmpty(subscriptionInfo.getIccId())) {
            int mcc = subscriptionInfo.getMcc();
            int mnc = subscriptionInfo.getMnc();
            return (String.valueOf(mcc) + String.valueOf(mnc) + (iccId.substring(7, 9) + iccId.substring(11, 18))).substring(0, 15);
        }
        throw new NullPointerException("Unable to get ICCID!");
    }

    /* renamed from: i */
    public static Throwable m5068i(Parcel parcel) {
        Throwable th;
        int readInt = parcel.readInt();
        if (readInt != 0) {
            byte[] bArr = new byte[readInt];
            try {
                parcel.readByteArray(bArr);
                th = (Throwable) new ObjectInputStream(new ByteArrayInputStream(bArr)).readObject();
            } catch (Exception e) {
                th = new CommunicationException(e);
            }
        } else {
            th = null;
        }
        return th;
    }

    /* renamed from: j */
    public static void m5067j(Throwable th, Parcel parcel) {
        if (th != null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                try {
                    objectOutputStream.writeObject(th);
                } catch (NotSerializableException e) {
                    ServerErrorException serverErrorException = new ServerErrorException(-1);
                    serverErrorException.setError(th.getMessage());
                    objectOutputStream.writeObject(serverErrorException);
                }
                objectOutputStream.close();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                parcel.writeInt(byteArray.length);
                parcel.writeByteArray(byteArray);
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
        } else {
            parcel.writeInt(0);
        }
    }
}
