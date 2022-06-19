package p193e.p1577m.p1578a.p1642f.p1652d;

import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.cloudmessaging.Rpc;
import com.google.android.gms.cloudmessaging.zzc;
import com.google.android.gms.cloudmessaging.zzd;
import com.google.android.gms.internal.cloudmessaging.zzf;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.tenor.android.core.constant.StringConstant;
import java.util.regex.Matcher;
import p1727n3.p1788g.C26187h;
/* renamed from: e.m.a.f.d.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/d/a.class */
public final class HandlerC24898a extends zzf {

    /* renamed from: a */
    public final /* synthetic */ Rpc f69791a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC24898a(Rpc rpc, Looper looper) {
        super(looper);
        this.f69791a = rpc;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        Rpc rpc = this.f69791a;
        int i = Rpc.f5617h;
        if (message != null) {
            Object obj = message.obj;
            if (!(obj instanceof Intent)) {
                return;
            }
            Intent intent = (Intent) obj;
            intent.setExtrasClassLoader(new zzc());
            if (intent.hasExtra("google.messenger")) {
                Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
                if (parcelableExtra instanceof zzd) {
                    rpc.f5627g = (zzd) parcelableExtra;
                }
                if (parcelableExtra instanceof Messenger) {
                    rpc.f5626f = (Messenger) parcelableExtra;
                }
            }
            Intent intent2 = (Intent) message.obj;
            String action = intent2.getAction();
            if (!"com.google.android.c2dm.intent.REGISTRATION".equals(action)) {
                if (!Log.isLoggable("Rpc", 3)) {
                    return;
                }
                String valueOf = String.valueOf(action);
                if (valueOf.length() != 0) {
                    "Unexpected response action: ".concat(valueOf);
                    return;
                } else {
                    new String("Unexpected response action: ");
                    return;
                }
            }
            String stringExtra = intent2.getStringExtra("registration_id");
            String str = stringExtra;
            if (stringExtra == null) {
                str = intent2.getStringExtra("unregistered");
            }
            if (str != null) {
                Matcher matcher = Rpc.f5620k.matcher(str);
                if (!matcher.matches()) {
                    if (!Log.isLoggable("Rpc", 3)) {
                        return;
                    }
                    if (str.length() != 0) {
                        "Unexpected response string: ".concat(str);
                        return;
                    } else {
                        new String("Unexpected response string: ");
                        return;
                    }
                }
                String group = matcher.group(1);
                String group2 = matcher.group(2);
                if (group == null) {
                    return;
                }
                Bundle extras = intent2.getExtras();
                extras.putString("registration_id", group2);
                rpc.m39084b(group, extras);
                return;
            }
            String stringExtra2 = intent2.getStringExtra("error");
            if (stringExtra2 == null) {
                String.valueOf(intent2.getExtras()).length();
                return;
            }
            if (Log.isLoggable("Rpc", 3)) {
                if (stringExtra2.length() != 0) {
                    "Received InstanceID error ".concat(stringExtra2);
                } else {
                    new String("Received InstanceID error ");
                }
            }
            if (!stringExtra2.startsWith("|")) {
                synchronized (rpc.f5621a) {
                    int i2 = 0;
                    while (true) {
                        C26187h<String, TaskCompletionSource<Bundle>> c26187h = rpc.f5621a;
                        if (i2 < c26187h.f73025c) {
                            rpc.m39084b(c26187h.m2576l(i2), intent2.getExtras());
                            i2++;
                        }
                    }
                }
                return;
            }
            String[] split = stringExtra2.split("\\|");
            if (split.length <= 2 || !"ID".equals(split[1])) {
                if (stringExtra2.length() != 0) {
                    "Unexpected structured response ".concat(stringExtra2);
                    return;
                } else {
                    new String("Unexpected structured response ");
                    return;
                }
            }
            String str2 = split[2];
            String str3 = split[3];
            String str4 = str3;
            if (str3.startsWith(StringConstant.COLON)) {
                str4 = str3.substring(1);
            }
            rpc.m39084b(str2, intent2.putExtra("error", str4).getExtras());
        }
    }
}
