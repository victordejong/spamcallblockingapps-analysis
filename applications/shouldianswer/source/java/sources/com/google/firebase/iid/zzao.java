package com.google.firebase.iid;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.util.Log;
import androidx.p014c.C0387g;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.iid.zzf;
import java.util.concurrent.ExecutionException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzao.class */
final class zzao {
    private static int zza;
    private static PendingIntent zzb;
    private final Context zzd;
    private final zzai zze;
    private Messenger zzg;
    private zzf zzh;
    private final C0387g<String, TaskCompletionSource<Bundle>> zzc = new C0387g<>();
    private Messenger zzf = new Messenger(new zzar(this, Looper.getMainLooper()));

    public zzao(Context context, zzai zzaiVar) {
        this.zzd = context;
        this.zze = zzaiVar;
    }

    private static String zza() {
        String num;
        synchronized (zzao.class) {
            try {
                int i = zza;
                zza = i + 1;
                num = Integer.toString(i);
            } catch (Throwable th) {
                throw th;
            }
        }
        return num;
    }

    private static void zza(Context context, Intent intent) {
        synchronized (zzao.class) {
            try {
                if (zzb == null) {
                    Intent intent2 = new Intent();
                    intent2.setPackage("com.google.example.invalidpackage");
                    zzb = PendingIntent.getBroadcast(context, 0, intent2, 0);
                }
                intent.putExtra("app", zzb);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zza(Message message) {
        if (message == null || !(message.obj instanceof Intent)) {
            Log.w("FirebaseInstanceId", "Dropping invalid message");
            return;
        }
        Intent intent = (Intent) message.obj;
        intent.setExtrasClassLoader(new zzf.zza());
        if (intent.hasExtra("google.messenger")) {
            Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
            if (parcelableExtra instanceof zzf) {
                this.zzh = (zzf) parcelableExtra;
            }
            if (parcelableExtra instanceof Messenger) {
                this.zzg = (Messenger) parcelableExtra;
            }
        }
        Intent intent2 = (Intent) message.obj;
        String action = intent2.getAction();
        if (!"com.google.android.c2dm.intent.REGISTRATION".equals(action)) {
            if (!Log.isLoggable("FirebaseInstanceId", 3)) {
                return;
            }
            String valueOf = String.valueOf(action);
            Log.d("FirebaseInstanceId", valueOf.length() != 0 ? "Unexpected response action: ".concat(valueOf) : new String("Unexpected response action: "));
            return;
        }
        String stringExtra = intent2.getStringExtra("registration_id");
        String str = stringExtra;
        if (stringExtra == null) {
            str = intent2.getStringExtra("unregistered");
        }
        if (str != null) {
            Matcher matcher = Pattern.compile("\\|ID\\|([^|]+)\\|:?+(.*)").matcher(str);
            if (!matcher.matches()) {
                if (!Log.isLoggable("FirebaseInstanceId", 3)) {
                    return;
                }
                String valueOf2 = String.valueOf(str);
                Log.d("FirebaseInstanceId", valueOf2.length() != 0 ? "Unexpected response string: ".concat(valueOf2) : new String("Unexpected response string: "));
                return;
            }
            String group = matcher.group(1);
            String group2 = matcher.group(2);
            Bundle extras = intent2.getExtras();
            extras.putString("registration_id", group2);
            zza(group, extras);
            return;
        }
        String stringExtra2 = intent2.getStringExtra("error");
        if (stringExtra2 == null) {
            String valueOf3 = String.valueOf(intent2.getExtras());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf3).length() + 49);
            sb.append("Unexpected response, no error or registration id ");
            sb.append(valueOf3);
            Log.w("FirebaseInstanceId", sb.toString());
            return;
        }
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            String valueOf4 = String.valueOf(stringExtra2);
            Log.d("FirebaseInstanceId", valueOf4.length() != 0 ? "Received InstanceID error ".concat(valueOf4) : new String("Received InstanceID error "));
        }
        if (!stringExtra2.startsWith("|")) {
            synchronized (this.zzc) {
                for (int i = 0; i < this.zzc.size(); i++) {
                    zza(this.zzc.m6811b(i), intent2.getExtras());
                }
            }
            return;
        }
        String[] split = stringExtra2.split("\\|");
        if (split.length <= 2 || !"ID".equals(split[1])) {
            String valueOf5 = String.valueOf(stringExtra2);
            Log.w("FirebaseInstanceId", valueOf5.length() != 0 ? "Unexpected structured response ".concat(valueOf5) : new String("Unexpected structured response "));
            return;
        }
        String str2 = split[2];
        String str3 = split[3];
        String str4 = str3;
        if (str3.startsWith(":")) {
            str4 = str3.substring(1);
        }
        zza(str2, intent2.putExtra("error", str4).getExtras());
    }

    private final void zza(String str, Bundle bundle) {
        synchronized (this.zzc) {
            TaskCompletionSource<Bundle> remove = this.zzc.remove(str);
            if (remove != null) {
                remove.setResult(bundle);
                return;
            }
            String valueOf = String.valueOf(str);
            Log.w("FirebaseInstanceId", valueOf.length() != 0 ? "Missing callback for ".concat(valueOf) : new String("Missing callback for "));
        }
    }

    private final Bundle zzb(Bundle bundle) {
        Bundle zzc = zzc(bundle);
        Bundle bundle2 = zzc;
        if (zzc != null) {
            bundle2 = zzc;
            if (zzc.containsKey("google.messenger")) {
                Bundle zzc2 = zzc(bundle);
                bundle2 = zzc2;
                if (zzc2 != null) {
                    bundle2 = zzc2;
                    if (zzc2.containsKey("google.messenger")) {
                        bundle2 = null;
                    }
                }
            }
        }
        return bundle2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00f8, code lost:
        if (r5.zzh != null) goto L20;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:76:0x016e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x0140 -> B:71:0x0156). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x014c -> B:71:0x0156). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final android.os.Bundle zzc(android.os.Bundle r6) {
        /*
            Method dump skipped, instructions count: 465
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.zzao.zzc(android.os.Bundle):android.os.Bundle");
    }

    public final Bundle zza(Bundle bundle) {
        if (this.zze.zzd() >= 12000000) {
            try {
                return (Bundle) Tasks.await(zzv.zza(this.zzd).zzb(1, bundle));
            } catch (InterruptedException | ExecutionException e) {
                if (Log.isLoggable("FirebaseInstanceId", 3)) {
                    String valueOf = String.valueOf(e);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
                    sb.append("Error making request: ");
                    sb.append(valueOf);
                    Log.d("FirebaseInstanceId", sb.toString());
                }
                if ((e.getCause() instanceof zzag) && ((zzag) e.getCause()).zza() == 4) {
                    return zzb(bundle);
                }
                return null;
            }
        }
        return zzb(bundle);
    }
}
