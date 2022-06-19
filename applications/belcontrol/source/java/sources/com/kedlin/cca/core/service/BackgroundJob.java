package com.kedlin.cca.core.service;

import android.os.Parcel;
import android.os.Parcelable;
import java.lang.reflect.Constructor;
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/service/BackgroundJob.class */
public abstract class BackgroundJob implements Parcelable {
    public static final Parcelable.Creator<BackgroundJob> CREATOR = new C0639a();

    /* renamed from: com.kedlin.cca.core.service.BackgroundJob$a */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/service/BackgroundJob$a.class */
    public static final class C0639a implements Parcelable.Creator<BackgroundJob> {
        /* renamed from: a */
        public BackgroundJob createFromParcel(Parcel parcel) {
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
                    return (BackgroundJob) declaredConstructors[0].newInstance(objArr);
                }
                throw new Exception("The constructor of " + readString + " is not found");
            } catch (Exception e) {
                j91.m1494v(e, readString + e.getMessage());
                return null;
            }
        }

        /* renamed from: b */
        public BackgroundJob[] newArray(int i) {
            return new BackgroundJob[i];
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(getClass().getName());
    }
}
