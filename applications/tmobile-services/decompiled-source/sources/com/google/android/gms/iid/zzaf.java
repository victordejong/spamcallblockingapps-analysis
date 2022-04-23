package com.google.android.gms.iid;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.ConditionVariable;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.firebase.messaging.Constants;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
@ShowFirstParty
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzaf.class */
public class zzaf {

    /* renamed from: a */
    private Map<String, Object> f7763a = new ArrayMap();

    /* renamed from: b */
    private Messenger f7764b;

    static {
        zzai.m14151b().mo14152a("gcm_iid_use_messenger_ipc", true);
    }

    public zzaf(Context context) {
    }

    /* renamed from: a */
    private static void m14156a(Object obj, Object obj2) {
        if (obj instanceof ConditionVariable) {
            ((ConditionVariable) obj).open();
        }
        if (obj instanceof Messenger) {
            Messenger messenger = (Messenger) obj;
            Message obtain = Message.obtain();
            obtain.obj = obj2;
            try {
                messenger.send(obtain);
            } catch (RemoteException e) {
                String valueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 24);
                sb.append("Failed to send response ");
                sb.append(valueOf);
                Log.w("InstanceID", sb.toString());
            }
        }
    }

    /* renamed from: b */
    private final void m14155b(String str, Object obj) {
        synchronized (zzaf.class) {
            try {
                Object obj2 = this.f7763a.get(str);
                this.f7763a.put(str, obj);
                m14156a(obj2, obj);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: c */
    public final void m14154c(Message message) {
        if (message != null) {
            Object obj = message.obj;
            if (obj instanceof Intent) {
                Intent intent = (Intent) obj;
                intent.setExtrasClassLoader(MessengerCompat.class.getClassLoader());
                if (intent.hasExtra("google.messenger")) {
                    Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
                    if (parcelableExtra instanceof MessengerCompat) {
                        MessengerCompat messengerCompat = (MessengerCompat) parcelableExtra;
                    }
                    if (parcelableExtra instanceof Messenger) {
                        this.f7764b = (Messenger) parcelableExtra;
                    }
                }
                m14153d((Intent) message.obj);
                return;
            }
            Log.w("InstanceID", "Dropping invalid message");
        }
    }

    /* renamed from: d */
    public final void m14153d(Intent intent) {
        String str;
        if (intent != null) {
            String action = intent.getAction();
            if ("com.google.android.c2dm.intent.REGISTRATION".equals(action) || "com.google.android.gms.iid.InstanceID".equals(action)) {
                String stringExtra = intent.getStringExtra("registration_id");
                String str2 = stringExtra;
                if (stringExtra == null) {
                    str2 = intent.getStringExtra("unregistered");
                }
                if (str2 == null) {
                    String stringExtra2 = intent.getStringExtra(Constants.IPC_BUNDLE_KEY_SEND_ERROR);
                    if (stringExtra2 == null) {
                        String valueOf = String.valueOf(intent.getExtras());
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 49);
                        sb.append("Unexpected response, no error or registration id ");
                        sb.append(valueOf);
                        Log.w("InstanceID", sb.toString());
                        return;
                    }
                    if (Log.isLoggable("InstanceID", 3)) {
                        String valueOf2 = String.valueOf(stringExtra2);
                        Log.d("InstanceID", valueOf2.length() != 0 ? "Received InstanceID error ".concat(valueOf2) : new String("Received InstanceID error "));
                    }
                    String str3 = null;
                    str3 = null;
                    String str4 = stringExtra2;
                    if (stringExtra2.startsWith("|")) {
                        String[] split = stringExtra2.split("\\|");
                        if (!"ID".equals(split[1])) {
                            String valueOf3 = String.valueOf(stringExtra2);
                            Log.w("InstanceID", valueOf3.length() != 0 ? "Unexpected structured response ".concat(valueOf3) : new String("Unexpected structured response "));
                        }
                        if (split.length > 2) {
                            str3 = split[2];
                            String str5 = split[3];
                            str = str5;
                            if (str5.startsWith(":")) {
                                str = str5.substring(1);
                            }
                        } else {
                            str = "UNKNOWN";
                        }
                        intent.putExtra(Constants.IPC_BUNDLE_KEY_SEND_ERROR, str);
                        str4 = str;
                    }
                    if (str3 == null) {
                        synchronized (zzaf.class) {
                            try {
                                for (String str6 : this.f7763a.keySet()) {
                                    Object obj = this.f7763a.get(str6);
                                    this.f7763a.put(str6, str4);
                                    m14156a(obj, str4);
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        return;
                    }
                    m14155b(str3, str4);
                    return;
                }
                Matcher matcher = Pattern.compile("\\|ID\\|([^|]+)\\|:?+(.*)").matcher(str2);
                if (matcher.matches()) {
                    String group = matcher.group(1);
                    String group2 = matcher.group(2);
                    Bundle extras = intent.getExtras();
                    extras.putString("registration_id", group2);
                    m14155b(group, extras);
                } else if (Log.isLoggable("InstanceID", 3)) {
                    String valueOf4 = String.valueOf(str2);
                    Log.d("InstanceID", valueOf4.length() != 0 ? "Unexpected response string: ".concat(valueOf4) : new String("Unexpected response string: "));
                }
            } else if (Log.isLoggable("InstanceID", 3)) {
                String valueOf5 = String.valueOf(intent.getAction());
                Log.d("InstanceID", valueOf5.length() != 0 ? "Unexpected response ".concat(valueOf5) : new String("Unexpected response "));
            }
        } else if (Log.isLoggable("InstanceID", 3)) {
            Log.d("InstanceID", "Unexpected response: null");
        }
    }
}
