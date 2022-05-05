package com.facebook.login;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.FragmentActivity;
import com.facebook.AccessToken;
import com.facebook.login.LoginClient;
import java.util.Collection;
import java.util.Date;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import p081h.p154f.EnumC6114c;
/* loaded from: classes-dex2jar.jar:com/facebook/login/DeviceAuthMethodHandler.class */
public class DeviceAuthMethodHandler extends LoginMethodHandler {
    public static final Parcelable.Creator<DeviceAuthMethodHandler> CREATOR = new C2516a();

    /* renamed from: c */
    public static ScheduledThreadPoolExecutor f3271c;

    /* renamed from: com.facebook.login.DeviceAuthMethodHandler$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/DeviceAuthMethodHandler$a.class */
    public static final class C2516a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public DeviceAuthMethodHandler createFromParcel(Parcel parcel) {
            return new DeviceAuthMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public DeviceAuthMethodHandler[] newArray(int i) {
            return new DeviceAuthMethodHandler[i];
        }
    }

    public DeviceAuthMethodHandler(Parcel parcel) {
        super(parcel);
    }

    public DeviceAuthMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    /* renamed from: s */
    public static ScheduledThreadPoolExecutor m34484s() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        synchronized (DeviceAuthMethodHandler.class) {
            try {
                if (f3271c == null) {
                    f3271c = new ScheduledThreadPoolExecutor(1);
                }
                scheduledThreadPoolExecutor = f3271c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return scheduledThreadPoolExecutor;
    }

    /* renamed from: a */
    public void m34489a(Exception exc) {
        this.f3310b.m34465b(LoginClient.Result.m34434a(this.f3310b.m34455v(), null, exc.getMessage()));
    }

    /* renamed from: a */
    public void m34488a(String str, String str2, String str3, Collection<String> collection, Collection<String> collection2, Collection<String> collection3, EnumC6114c cVar, Date date, Date date2, Date date3) {
        this.f3310b.m34465b(LoginClient.Result.m34436a(this.f3310b.m34455v(), new AccessToken(str, str2, str3, collection, collection2, collection3, cVar, date, date2, date3)));
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: a */
    public boolean mo34409a(LoginClient.Request request) {
        m34487b(request);
        return true;
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: b */
    public String mo34408b() {
        return "device_auth";
    }

    /* renamed from: b */
    public final void m34487b(LoginClient.Request request) {
        FragmentActivity q = this.f3310b.m34460q();
        if (q != null && !q.isFinishing()) {
            DeviceAuthDialog q2 = m34486q();
            q2.show(q.getSupportFragmentManager(), "login_with_facebook");
            q2.m34512a(request);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: q */
    public DeviceAuthDialog m34486q() {
        return new DeviceAuthDialog();
    }

    /* renamed from: r */
    public void m34485r() {
        this.f3310b.m34465b(LoginClient.Result.m34435a(this.f3310b.m34455v(), "User canceled log in."));
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }
}
