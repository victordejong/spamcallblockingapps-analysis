package com.google.android.gms.iid;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Looper;
import android.support.p001v4.util.ArrayMap;
import android.util.Base64;
import android.util.Log;
import com.apptentive.android.sdk.model.ApptentiveMessage;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.privacystar.core.data.sqlite.p008db.subscription.SubscriptionContract;
import java.io.IOException;
import java.security.KeyPair;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import java.util.concurrent.TimeUnit;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/InstanceID.class */
public class InstanceID {
    public static final String ERROR_MAIN_THREAD = "MAIN_THREAD";
    public static final String ERROR_MISSING_INSTANCEID_SERVICE = "MISSING_INSTANCEID_SERVICE";
    public static final String ERROR_SERVICE_NOT_AVAILABLE = "SERVICE_NOT_AVAILABLE";
    public static final String ERROR_TIMEOUT = "TIMEOUT";
    private static Map<String, InstanceID> zzbq = new ArrayMap();
    private static long zzbr = TimeUnit.DAYS.toSeconds(7);
    private static zzak zzbs;
    private static zzaf zzbt;
    private static String zzbu;
    private String zzbv;
    private Context zzk;

    private InstanceID(Context context, String str) {
        this.zzbv = "";
        this.zzk = context.getApplicationContext();
        this.zzbv = str;
    }

    @Deprecated
    public static InstanceID getInstance(Context context) {
        return getInstance(context, null);
    }

    @KeepForSdk
    public static InstanceID getInstance(Context context, Bundle bundle) {
        String string;
        InstanceID instanceID;
        synchronized (InstanceID.class) {
            if (bundle == null) {
                string = "";
            } else {
                try {
                    string = bundle.getString("subtype");
                } catch (Throwable th) {
                    throw th;
                }
            }
            String str = string;
            if (string == null) {
                str = "";
            }
            Context applicationContext = context.getApplicationContext();
            if (zzbs == null) {
                String packageName = applicationContext.getPackageName();
                StringBuilder sb = new StringBuilder(String.valueOf(packageName).length() + 73);
                sb.append("Instance ID SDK is deprecated, ");
                sb.append(packageName);
                sb.append(" should update to use Firebase Instance ID");
                Log.w("InstanceID", sb.toString());
                zzbs = new zzak(applicationContext);
                zzbt = new zzaf(applicationContext);
            }
            zzbu = Integer.toString(zzg(applicationContext));
            InstanceID instanceID2 = zzbq.get(str);
            instanceID = instanceID2;
            if (instanceID2 == null) {
                instanceID = new InstanceID(applicationContext, str);
                zzbq.put(str, instanceID);
            }
        }
        return instanceID;
    }

    private final KeyPair getKeyPair() {
        return zzbs.zzj(this.zzbv).getKeyPair();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzd(KeyPair keyPair) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(keyPair.getPublic().getEncoded());
            digest[0] = (byte) ((digest[0] & 15) + 112);
            return Base64.encodeToString(digest, 0, 8, 11);
        } catch (NoSuchAlgorithmException e) {
            Log.w("InstanceID", "Unexpected error, device missing required algorithms");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzg(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 38);
            sb.append("Never happens: can't find own package ");
            sb.append(valueOf);
            Log.w("InstanceID", sb.toString());
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzh(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 38);
            sb.append("Never happens: can't find own package ");
            sb.append(valueOf);
            Log.w("InstanceID", sb.toString());
            return null;
        }
    }

    public static zzak zzn() {
        return zzbs;
    }

    @Deprecated
    public void deleteInstanceID() throws IOException {
        zzd("*", "*", null);
        zzm();
    }

    @Deprecated
    public void deleteToken(String str, String str2) throws IOException {
        zzd(str, str2, null);
    }

    @Deprecated
    public long getCreationTime() {
        return zzbs.zzj(this.zzbv).getCreationTime();
    }

    @Deprecated
    public String getId() {
        return zzd(getKeyPair());
    }

    @KeepForSdk
    public String getSubtype() {
        return this.zzbv;
    }

    @Deprecated
    public String getToken(String str, String str2) throws IOException {
        return getToken(str, str2, null);
    }

    @Deprecated
    public String getToken(String str, String str2, Bundle bundle) throws IOException {
        String str3;
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException("MAIN_THREAD");
        }
        String str4 = null;
        String str5 = zzbs.get("appVersion");
        boolean z = true;
        if (str5 != null) {
            if (!str5.equals(zzbu)) {
                z = true;
            } else {
                String str6 = zzbs.get("lastToken");
                if (str6 == null) {
                    z = true;
                } else {
                    z = (System.currentTimeMillis() / 1000) - Long.valueOf(Long.parseLong(str6)).longValue() > zzbr;
                }
            }
        }
        if (!z) {
            str4 = zzbs.zze(this.zzbv, str, str2);
        }
        if (str4 == null) {
            Bundle bundle2 = bundle;
            if (bundle == null) {
                bundle2 = new Bundle();
            }
            String zze = zze(str, str2, bundle2);
            str3 = zze;
            if (zze != null) {
                zzbs.zzd(this.zzbv, str, str2, zze, zzbu);
                return zze;
            }
        } else {
            str3 = str4;
        }
        return str3;
    }

    public final void zzd(String str, String str2, Bundle bundle) throws IOException {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException("MAIN_THREAD");
        }
        zzbs.zzf(this.zzbv, str, str2);
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        bundle2.putString(ApptentiveMessage.KEY_SENDER, str);
        if (str2 != null) {
            bundle2.putString("scope", str2);
        }
        bundle2.putString(SubscriptionContract.SubscriptionEntry.TABLE_NAME, str);
        bundle2.putString("delete", "1");
        bundle2.putString("X-delete", "1");
        bundle2.putString("subtype", "".equals(this.zzbv) ? str : this.zzbv);
        if (!"".equals(this.zzbv)) {
            str = this.zzbv;
        }
        bundle2.putString("X-subtype", str);
        zzaf.zzi(zzbt.zzd(bundle2, getKeyPair()));
    }

    public final String zze(String str, String str2, Bundle bundle) throws IOException {
        if (str2 != null) {
            bundle.putString("scope", str2);
        }
        bundle.putString(ApptentiveMessage.KEY_SENDER, str);
        String str3 = "".equals(this.zzbv) ? str : this.zzbv;
        if (!bundle.containsKey("legacy.register")) {
            bundle.putString(SubscriptionContract.SubscriptionEntry.TABLE_NAME, str);
            bundle.putString("subtype", str3);
            bundle.putString("X-subscription", str);
            bundle.putString("X-subtype", str3);
        }
        String zzi = zzaf.zzi(zzbt.zzd(bundle, getKeyPair()));
        if (!"RST".equals(zzi) && !zzi.startsWith("RST|")) {
            return zzi;
        }
        InstanceIDListenerService.zzd(this.zzk, zzbs);
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzm() {
        zzbs.zzk(this.zzbv);
    }
}
