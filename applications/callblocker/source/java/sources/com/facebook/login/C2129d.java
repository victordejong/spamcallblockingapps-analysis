package com.facebook.login;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.ActivityC0664d;
import com.facebook.C1803a;
import com.facebook.EnumC1981d;
import com.facebook.login.C2141j;
import java.util.Collection;
import java.util.Date;
import java.util.concurrent.ScheduledThreadPoolExecutor;
/* renamed from: com.facebook.login.d */
/* loaded from: classes-dex2jar.jar:com/facebook/login/d.class */
public class C2129d extends AbstractC2161n {
    public static final Parcelable.Creator<C2129d> CREATOR = new Parcelable.Creator() { // from class: com.facebook.login.d.1
        /* renamed from: a */
        public C2129d createFromParcel(Parcel parcel) {
            return new C2129d(parcel);
        }

        /* renamed from: a */
        public C2129d[] newArray(int i) {
            return new C2129d[i];
        }
    };

    /* renamed from: c */
    private static ScheduledThreadPoolExecutor f6266c;

    protected C2129d(Parcel parcel) {
        super(parcel);
    }

    public C2129d(C2141j c2141j) {
        super(c2141j);
    }

    /* renamed from: b */
    private void m15215b(C2141j.C2145c c2145c) {
        ActivityC0664d m15181b = this.f6340b.m15181b();
        if (m15181b == null || m15181b.isFinishing()) {
            return;
        }
        C2119c m15212e_ = m15212e_();
        m15212e_.mo13906a(m15181b.m19874m(), "login_with_facebook");
        m15212e_.m15246a(c2145c);
    }

    /* renamed from: d */
    public static ScheduledThreadPoolExecutor m15213d() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        synchronized (C2129d.class) {
            try {
                if (f6266c == null) {
                    f6266c = new ScheduledThreadPoolExecutor(1);
                }
                scheduledThreadPoolExecutor = f6266c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return scheduledThreadPoolExecutor;
    }

    @Override // com.facebook.login.AbstractC2161n
    /* renamed from: a */
    public String mo15068a() {
        return "device_auth";
    }

    /* renamed from: a */
    public void m15217a(Exception exc) {
        this.f6340b.m15186a(C2141j.C2147d.m15144a(this.f6340b.m15178c(), null, exc.getMessage()));
    }

    /* renamed from: a */
    public void m15216a(String str, String str2, String str3, Collection<String> collection, Collection<String> collection2, Collection<String> collection3, EnumC1981d enumC1981d, Date date, Date date2, Date date3) {
        this.f6340b.m15186a(C2141j.C2147d.m15146a(this.f6340b.m15178c(), new C1803a(str, str2, str3, collection, collection2, collection3, enumC1981d, date, date2, date3)));
    }

    @Override // com.facebook.login.AbstractC2161n
    /* renamed from: a */
    public boolean mo15067a(C2141j.C2145c c2145c) {
        m15215b(c2145c);
        return true;
    }

    /* renamed from: c */
    public void m15214c() {
        this.f6340b.m15186a(C2141j.C2147d.m15145a(this.f6340b.m15178c(), "User canceled log in."));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e_ */
    protected C2119c m15212e_() {
        return new C2119c();
    }

    @Override // com.facebook.login.AbstractC2161n, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }
}
