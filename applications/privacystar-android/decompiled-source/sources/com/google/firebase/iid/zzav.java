package com.google.firebase.iid;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.VisibleForTesting;
import android.support.p001v4.util.SimpleArrayMap;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.Queue;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzav.class */
public final class zzav {
    private static zzav zzcx;
    @GuardedBy("serviceClassNames")
    private final SimpleArrayMap<String, String> zzcy = new SimpleArrayMap<>();
    private Boolean zzcz = null;
    @VisibleForTesting
    final Queue<Intent> zzda = new ArrayDeque();
    @VisibleForTesting
    private final Queue<Intent> zzdb = new ArrayDeque();

    private zzav() {
    }

    public static PendingIntent zza(Context context, int i, Intent intent, int i2) {
        return PendingIntent.getBroadcast(context, i, zza(context, "com.google.firebase.MESSAGING_EVENT", intent), 1073741824);
    }

    private static Intent zza(Context context, String str, Intent intent) {
        Intent intent2 = new Intent(context, FirebaseInstanceIdReceiver.class);
        intent2.setAction(str);
        intent2.putExtra("wrapped_intent", intent);
        return intent2;
    }

    public static zzav zzai() {
        zzav zzavVar;
        synchronized (zzav.class) {
            try {
                if (zzcx == null) {
                    zzcx = new zzav();
                }
                zzavVar = zzcx;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzavVar;
    }

    public static void zzb(Context context, Intent intent) {
        context.sendBroadcast(zza(context, "com.google.firebase.INSTANCE_ID_EVENT", intent));
    }

    public static void zzc(Context context, Intent intent) {
        context.sendBroadcast(zza(context, "com.google.firebase.MESSAGING_EVENT", intent));
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0183 A[Catch: IllegalStateException -> 0x01ac, SecurityException -> 0x01df, TRY_LEAVE, TryCatch #4 {IllegalStateException -> 0x01ac, SecurityException -> 0x01df, blocks: (B:43:0x015d, B:46:0x0165, B:50:0x0170, B:52:0x017a, B:54:0x0183, B:55:0x018c, B:58:0x019e), top: B:76:0x015d }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x018c A[Catch: IllegalStateException -> 0x01ac, SecurityException -> 0x01df, TRY_ENTER, TryCatch #4 {IllegalStateException -> 0x01ac, SecurityException -> 0x01df, blocks: (B:43:0x015d, B:46:0x0165, B:50:0x0170, B:52:0x017a, B:54:0x0183, B:55:0x018c, B:58:0x019e), top: B:76:0x015d }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x019e A[Catch: IllegalStateException -> 0x01ac, SecurityException -> 0x01df, TRY_ENTER, TRY_LEAVE, TryCatch #4 {IllegalStateException -> 0x01ac, SecurityException -> 0x01df, blocks: (B:43:0x015d, B:46:0x0165, B:50:0x0170, B:52:0x017a, B:54:0x0183, B:55:0x018c, B:58:0x019e), top: B:76:0x015d }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01aa A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzd(android.content.Context r6, android.content.Intent r7) {
        /*
            Method dump skipped, instructions count: 498
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.zzav.zzd(android.content.Context, android.content.Intent):int");
    }

    public final Intent zzaj() {
        return this.zzdb.poll();
    }

    public final int zzb(Context context, String str, Intent intent) {
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            String valueOf = String.valueOf(str);
            Log.d("FirebaseInstanceId", valueOf.length() != 0 ? "Starting service: ".concat(valueOf) : new String("Starting service: "));
        }
        char c = 65535;
        int hashCode = str.hashCode();
        if (hashCode != -842411455) {
            if (hashCode == 41532704 && str.equals("com.google.firebase.MESSAGING_EVENT")) {
                c = 1;
            }
        } else if (str.equals("com.google.firebase.INSTANCE_ID_EVENT")) {
            c = 0;
        }
        switch (c) {
            case 0:
                this.zzda.offer(intent);
                break;
            case 1:
                this.zzdb.offer(intent);
                break;
            default:
                String valueOf2 = String.valueOf(str);
                Log.w("FirebaseInstanceId", valueOf2.length() != 0 ? "Unknown service action: ".concat(valueOf2) : new String("Unknown service action: "));
                return 500;
        }
        Intent intent2 = new Intent(str);
        intent2.setPackage(context.getPackageName());
        return zzd(context, intent2);
    }
}
