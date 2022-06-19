package com.callcontrol.util.job;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.lang.reflect.Constructor;
import vp0;
/* loaded from: classes-dex2jar.jar:com/callcontrol/util/job/ScheduledJob.class */
public abstract class ScheduledJob implements Parcelable {
    public static final Parcelable.Creator<ScheduledJob> CREATOR = new C0331a();

    /* renamed from: a */
    public vp0.b f2420a;

    /* renamed from: b */
    public mp0 f2421b;

    /* renamed from: com.callcontrol.util.job.ScheduledJob$a */
    /* loaded from: classes-dex2jar.jar:com/callcontrol/util/job/ScheduledJob$a.class */
    public static final class C0331a implements Parcelable.Creator<ScheduledJob> {
        /* renamed from: a */
        public ScheduledJob createFromParcel(Parcel parcel) {
            Constructor<?> constructor;
            String readString = parcel.readString();
            try {
                Constructor<?>[] declaredConstructors = Class.forName(readString).getDeclaredConstructors();
                int length = declaredConstructors.length;
                Constructor<?> constructor2 = null;
                Class<?>[] clsArr = null;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    Constructor<?> constructor3 = declaredConstructors[i];
                    Class<?>[] parameterTypes = constructor3.getParameterTypes();
                    int length2 = parameterTypes.length;
                    int i2 = 0;
                    while (true) {
                        constructor = constructor3;
                        if (i2 >= length2) {
                            break;
                        } else if (parameterTypes[i2].toString().endsWith(".InstantReloadException")) {
                            constructor = null;
                            break;
                        } else {
                            i2++;
                        }
                    }
                    if (constructor != null) {
                        constructor2 = constructor;
                        clsArr = parameterTypes;
                        break;
                    }
                    i++;
                    constructor2 = constructor;
                    clsArr = parameterTypes;
                }
                if (constructor2 != null) {
                    Object[] objArr = new Object[clsArr.length];
                    constructor2.setAccessible(true);
                    return (ScheduledJob) declaredConstructors[0].newInstance(objArr);
                }
                throw new Exception("The constructor of " + readString + " is not found");
            } catch (Exception e) {
                return null;
            }
        }

        /* renamed from: b */
        public ScheduledJob[] newArray(int i) {
            return new ScheduledJob[i];
        }
    }

    public ScheduledJob() {
        this("job" + System.currentTimeMillis());
    }

    public ScheduledJob(String str) {
        mp0 mp0Var = new mp0(new op0(lm1.m1292a()));
        this.f2421b = mp0Var;
        vp0.b c = mp0Var.c();
        c.t(CCScheduler.class);
        c.u(str);
        this.f2420a = c;
    }

    /* renamed from: b */
    public static ScheduledJob m5263b(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        byte[] byteArray = bundle.getByteArray(ScheduledJob.class.getCanonicalName() + "._job_instance");
        if (byteArray != null) {
            return (ScheduledJob) km1.m1377c(byteArray, CREATOR);
        }
        return null;
    }

    /* renamed from: a */
    public void m5264a() {
        this.f2421b.a();
    }

    /* renamed from: c */
    public abstract void mo4392c(zp0 zp0Var);

    /* renamed from: d */
    public final void m5262d() {
        Bundle extras = this.f2420a.getExtras();
        Bundle bundle = extras;
        if (extras == null) {
            bundle = new Bundle();
        }
        bundle.putByteArray(ScheduledJob.class.getCanonicalName() + "._job_instance", km1.m1379a(this));
        this.f2420a.q(bundle);
        this.f2421b.b(this.f2420a.p());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public final void m5261e(int i) {
        vp0.b bVar = this.f2420a;
        bVar.r(false);
        bVar.v(fq0.b(i, i));
        m5262d();
    }

    /* renamed from: f */
    public boolean m5260f() {
        return false;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(getClass().getName());
    }
}
