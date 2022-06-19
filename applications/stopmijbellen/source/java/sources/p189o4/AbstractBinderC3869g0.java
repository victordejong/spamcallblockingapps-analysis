package p189o4;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.play.core.assetpacks.ExtractionForegroundService;
import p134j4.BinderC3247s;
import p134j4.C3259w;
import p134j4.ServiceConnectionC3230m0;
/* renamed from: o4.g0 */
/* loaded from: classes-dex2jar.jar:o4/g0.class */
public abstract class AbstractBinderC3869g0 extends BinderC3884u {
    public AbstractBinderC3869g0() {
        super("com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionService");
    }

    @Override // p189o4.BinderC3884u
    /* renamed from: q */
    public final boolean mo1730q(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        C3871h0 c3871h0;
        C3871h0 c3871h02;
        if (i != 2) {
            if (i != 3) {
                return false;
            }
            Bundle bundle = (Bundle) C3885v.m1733a(parcel, Bundle.CREATOR);
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                c3871h02 = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback");
                c3871h02 = queryLocalInterface instanceof C3871h0 ? (C3871h0) queryLocalInterface : new C3871h0(readStrongBinder);
            }
            BinderC3247s binderC3247s = (BinderC3247s) this;
            binderC3247s.f10953a.m1510b("clearAssetPackStorage AIDL call", new Object[0]);
            if (!C3875l.m1743b(binderC3247s.f10954b) || !C3875l.m1744a(binderC3247s.f10954b)) {
                c3871h02.zzd(new Bundle());
                return true;
            }
            C3259w.m2493j(binderC3247s.f10955c.m2496g());
            Bundle bundle2 = new Bundle();
            Parcel m1735q = c3871h02.m1735q();
            int i3 = C3885v.f12380a;
            m1735q.writeInt(1);
            bundle2.writeToParcel(m1735q, 0);
            c3871h02.m1734r(4, m1735q);
            return true;
        }
        Bundle bundle3 = (Bundle) C3885v.m1733a(parcel, Bundle.CREATOR);
        IBinder readStrongBinder2 = parcel.readStrongBinder();
        if (readStrongBinder2 == null) {
            c3871h0 = null;
        } else {
            IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback");
            c3871h0 = queryLocalInterface2 instanceof C3871h0 ? (C3871h0) queryLocalInterface2 : new C3871h0(readStrongBinder2);
        }
        BinderC3247s binderC3247s2 = (BinderC3247s) this;
        synchronized (binderC3247s2) {
            binderC3247s2.f10953a.m1510b("updateServiceState AIDL call", new Object[0]);
            if (C3875l.m1743b(binderC3247s2.f10954b) && C3875l.m1744a(binderC3247s2.f10954b)) {
                int i4 = bundle3.getInt("action_type");
                ServiceConnectionC3230m0 serviceConnectionC3230m0 = binderC3247s2.f10957e;
                synchronized (serviceConnectionC3230m0.f10881b) {
                    serviceConnectionC3230m0.f10881b.add(c3871h0);
                }
                if (i4 != 1) {
                    if (i4 != 2) {
                        binderC3247s2.f10953a.m1509c("Unknown action type received: %d", Integer.valueOf(i4));
                        c3871h0.zzd(new Bundle());
                        return true;
                    }
                    binderC3247s2.f10956d.m2544a(false);
                    ServiceConnectionC3230m0 serviceConnectionC3230m02 = binderC3247s2.f10957e;
                    serviceConnectionC3230m02.f10880a.m1510b("Stopping foreground installation service.", new Object[0]);
                    serviceConnectionC3230m02.f10882c.unbindService(serviceConnectionC3230m02);
                    ExtractionForegroundService extractionForegroundService = serviceConnectionC3230m02.f10883d;
                    if (extractionForegroundService != null) {
                        synchronized (extractionForegroundService) {
                            extractionForegroundService.stopForeground(true);
                            extractionForegroundService.stopSelf();
                        }
                    }
                    serviceConnectionC3230m02.m2529a();
                    return true;
                }
                int i5 = Build.VERSION.SDK_INT;
                if (i5 >= 26) {
                    String string = bundle3.getString("notification_channel_name");
                    synchronized (binderC3247s2) {
                        String str = string;
                        if (string == null) {
                            str = "File downloads by Play";
                        }
                        binderC3247s2.f10958f.createNotificationChannel(new NotificationChannel("playcore-assetpacks-service-notification-channel", str, 2));
                    }
                }
                binderC3247s2.f10956d.m2544a(true);
                ServiceConnectionC3230m0 serviceConnectionC3230m03 = binderC3247s2.f10957e;
                String string2 = bundle3.getString("notification_title");
                String string3 = bundle3.getString("notification_subtext");
                long j = bundle3.getLong("notification_timeout", 600000L);
                Parcelable parcelable = bundle3.getParcelable("notification_on_click_intent");
                Notification.Builder timeoutAfter = i5 >= 26 ? new Notification.Builder(binderC3247s2.f10954b, "playcore-assetpacks-service-notification-channel").setTimeoutAfter(j) : new Notification.Builder(binderC3247s2.f10954b).setPriority(-2);
                if (parcelable instanceof PendingIntent) {
                    timeoutAfter.setContentIntent((PendingIntent) parcelable);
                }
                Notification.Builder ongoing = timeoutAfter.setSmallIcon(17301633).setOngoing(false);
                String str2 = string2;
                if (string2 == null) {
                    str2 = "Downloading additional file";
                }
                Notification.Builder contentTitle = ongoing.setContentTitle(str2);
                String str3 = string3;
                if (string3 == null) {
                    str3 = "Transferring";
                }
                contentTitle.setSubText(str3);
                int i6 = bundle3.getInt("notification_color");
                if (i6 != 0) {
                    timeoutAfter.setColor(i6).setVisibility(-1);
                }
                serviceConnectionC3230m03.f10884e = timeoutAfter.build();
                binderC3247s2.f10954b.bindService(new Intent(binderC3247s2.f10954b, ExtractionForegroundService.class), binderC3247s2.f10957e, 1);
                return true;
            }
            c3871h0.zzd(new Bundle());
            return true;
        }
    }
}
