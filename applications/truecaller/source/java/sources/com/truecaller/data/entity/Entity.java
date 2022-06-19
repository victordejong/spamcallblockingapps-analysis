package com.truecaller.data.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import p193e.p194a.p1129p5.C19231g0;
/* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/Entity.class */
public abstract class Entity implements Parcelable {
    private Long mId;
    private Object mTag;
    private String mTcId;

    public Entity() {
    }

    public Entity(Parcel parcel) {
        this.mId = (Long) parcel.readValue(Long.class.getClassLoader());
        this.mTcId = parcel.readString();
    }

    public static int presentationCompare(String... strArr) {
        int i = 0;
        for (int i2 = 0; i == 0 && i2 < strArr.length; i2 += 2) {
            String m13808I = C19231g0.m13808I(strArr[i2]);
            String m13808I2 = C19231g0.m13808I(strArr[i2 + 1]);
            i = 1;
            if (!TextUtils.isEmpty(m13808I) && !TextUtils.isEmpty(m13808I2)) {
                i = C19231g0.m13807J(m13808I, m13808I2, true);
            } else if (TextUtils.equals(m13808I, m13808I2)) {
                i = 0;
            } else if (!TextUtils.isEmpty(m13808I)) {
                i = -1;
            }
        }
        return i;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Long getId() {
        return this.mId;
    }

    public Object getTag() {
        return this.mTag;
    }

    public String getTcId() {
        return this.mTcId;
    }

    public void setId(Long l) {
        this.mId = l;
    }

    public void setTag(Object obj) {
        this.mTag = obj;
    }

    public void setTcId(String str) {
        this.mTcId = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeValue(this.mId);
        parcel.writeString(this.mTcId);
    }
}
