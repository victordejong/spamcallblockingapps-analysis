package com.tmobile.tmoid.helperlib.impl;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/impl/ConsumerProfileIPC.class */
public class ConsumerProfileIPC extends JSONObject implements Parcelable {
    public static final Parcelable.Creator<ConsumerProfileIPC> CREATOR = new Parcelable.Creator<ConsumerProfileIPC>() { // from class: com.tmobile.tmoid.helperlib.impl.ConsumerProfileIPC.1
        /* renamed from: a */
        public ConsumerProfileIPC createFromParcel(Parcel parcel) {
            return new ConsumerProfileIPC(parcel);
        }

        /* renamed from: b */
        public ConsumerProfileIPC[] newArray(int i) {
            return new ConsumerProfileIPC[i];
        }
    };

    /* renamed from: f */
    Throwable f14764f;

    public ConsumerProfileIPC() {
    }

    public ConsumerProfileIPC(Parcel parcel) {
        m5010c(parcel);
    }

    /* renamed from: a */
    public void m5012a(JSONObject jSONObject) {
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            try {
                put(next, jSONObject.get(next));
            } catch (JSONException e) {
            }
        }
    }

    /* renamed from: b */
    public Throwable m5011b() {
        return this.f14764f;
    }

    /* renamed from: c */
    public void m5010c(Parcel parcel) {
        try {
            m5012a(new JSONObject(parcel.readString()));
            int readInt = parcel.readInt();
            if (readInt != 0) {
                byte[] bArr = new byte[readInt];
                try {
                    parcel.readByteArray(bArr);
                    this.f14764f = (Throwable) new ObjectInputStream(new ByteArrayInputStream(bArr)).readObject();
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: d */
    public void m5009d(Throwable th) {
        this.f14764f = th;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // org.json.JSONObject
    public String toString() {
        return "ConsumerProfileIPC{json={" + super.toString() + "},agent_exception=" + this.f14764f + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(super.toString());
        if (this.f14764f != null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                objectOutputStream.writeObject(this.f14764f);
                objectOutputStream.close();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                parcel.writeInt(byteArray.length);
                parcel.writeByteArray(byteArray);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        } else {
            parcel.writeInt(0);
        }
    }
}
