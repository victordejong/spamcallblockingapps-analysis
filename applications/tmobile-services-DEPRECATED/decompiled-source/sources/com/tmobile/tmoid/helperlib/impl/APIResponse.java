package com.tmobile.tmoid.helperlib.impl;

import android.os.Parcel;
import android.os.Parcelable;
import com.tmobile.tmoid.helperlib.ServerErrorException;
import com.tmobile.tmoid.helperlib.util.ChainedStringWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.NotSerializableException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.WriteAbortedException;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/impl/APIResponse.class */
public class APIResponse implements Parcelable {
    public static final Parcelable.Creator<APIResponse> CREATOR = new Parcelable.Creator<APIResponse>() { // from class: com.tmobile.tmoid.helperlib.impl.APIResponse.1
        /* renamed from: a */
        public APIResponse createFromParcel(Parcel parcel) {
            return new APIResponse(parcel);
        }

        /* renamed from: b */
        public APIResponse[] newArray(int i) {
            return new APIResponse[i];
        }
    };

    /* renamed from: f */
    String f14750f;

    /* renamed from: g */
    String f14751g;

    /* renamed from: h */
    String f14752h;

    /* renamed from: i */
    int f14753i;

    /* renamed from: j */
    String f14754j;

    /* renamed from: k */
    String f14755k;

    /* renamed from: l */
    String f14756l;

    /* renamed from: m */
    long f14757m;

    /* renamed from: n */
    boolean f14758n = false;

    /* renamed from: o */
    Throwable f14759o;

    public APIResponse() {
    }

    public APIResponse(Parcel parcel) {
        m5024e(parcel);
    }

    /* renamed from: a */
    public String m5028a() {
        return this.f14750f;
    }

    /* renamed from: b */
    public Throwable m5027b() {
        return this.f14759o;
    }

    /* renamed from: c */
    public boolean m5026c() {
        return this.f14759o != null;
    }

    /* renamed from: d */
    public boolean m5025d() {
        return this.f14758n;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public void m5024e(Parcel parcel) {
        this.f14750f = parcel.readString();
        this.f14751g = parcel.readString();
        this.f14752h = parcel.readString();
        this.f14753i = parcel.readInt();
        this.f14754j = parcel.readString();
        this.f14755k = parcel.readString();
        this.f14757m = parcel.readLong();
        boolean z = true;
        if (parcel.readInt() != 1) {
            z = false;
        }
        this.f14758n = z;
        this.f14756l = parcel.readString();
        int readInt = parcel.readInt();
        if (readInt != 0) {
            byte[] bArr = new byte[readInt];
            try {
                parcel.readByteArray(bArr);
                ObjectInputStream objectInputStream = new ObjectInputStream(new ByteArrayInputStream(bArr));
                try {
                    this.f14759o = (Throwable) objectInputStream.readObject();
                } catch (WriteAbortedException e) {
                    this.f14759o = (Throwable) objectInputStream.readObject();
                }
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    /* renamed from: f */
    public void m5023f(String str) {
        this.f14750f = str;
    }

    /* renamed from: g */
    public void m5022g(Throwable th) {
        this.f14759o = th;
    }

    /* renamed from: h */
    public void m5021h(String str) {
        this.f14756l = str;
    }

    /* renamed from: i */
    public void m5020i(long j) {
        this.f14757m = j;
    }

    /* renamed from: j */
    public void m5019j(int i) {
        this.f14753i = i;
    }

    /* renamed from: k */
    public void m5018k(String str) {
        this.f14751g = str;
    }

    /* renamed from: l */
    public void m5017l(boolean z) {
        this.f14758n = z;
    }

    /* renamed from: m */
    public void m5016m(String str) {
        this.f14754j = str;
    }

    /* renamed from: n */
    public void m5015n(String str) {
        this.f14752h = str;
    }

    public String toString() {
        ChainedStringWriter chainedStringWriter = new ChainedStringWriter();
        chainedStringWriter.m4657e("{");
        chainedStringWriter.m4657e("access_token:");
        chainedStringWriter.m4657e(this.f14750f);
        chainedStringWriter.m4657e(",");
        chainedStringWriter.m4657e("refresh_token:");
        chainedStringWriter.m4657e(this.f14751g);
        chainedStringWriter.m4657e(",");
        chainedStringWriter.m4657e("token_type:");
        chainedStringWriter.m4657e(this.f14752h);
        chainedStringWriter.m4657e(",");
        chainedStringWriter.m4657e("expires_in:");
        chainedStringWriter.m4659c(this.f14753i);
        chainedStringWriter.m4657e(",");
        chainedStringWriter.m4657e("tmobileid:");
        chainedStringWriter.m4657e(this.f14754j);
        chainedStringWriter.m4657e(",");
        chainedStringWriter.m4657e("scope:");
        chainedStringWriter.m4657e(this.f14755k);
        chainedStringWriter.m4657e(",");
        chainedStringWriter.m4657e("date:");
        chainedStringWriter.m4658d(this.f14757m);
        chainedStringWriter.m4657e(",");
        chainedStringWriter.m4657e("authorization_code:");
        chainedStringWriter.m4657e(this.f14756l);
        chainedStringWriter.m4657e(",");
        chainedStringWriter.m4657e("requestHasBeenCanceled:");
        chainedStringWriter.m4656f(this.f14758n);
        chainedStringWriter.m4657e(",");
        chainedStringWriter.m4657e("requestHasServerError:");
        chainedStringWriter.m4656f(this.f14759o != null);
        chainedStringWriter.m4657e(",");
        if (this.f14759o != null) {
            chainedStringWriter.m4655g("agent_exception:");
            this.f14759o.printStackTrace(chainedStringWriter.m4660b());
        }
        chainedStringWriter.m4657e("}");
        return chainedStringWriter.m4661a();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f14750f);
        parcel.writeString(this.f14751g);
        parcel.writeString(this.f14752h);
        parcel.writeInt(this.f14753i);
        parcel.writeString(this.f14754j);
        parcel.writeString(this.f14755k);
        parcel.writeLong(this.f14757m);
        parcel.writeInt(this.f14758n ? 1 : 0);
        parcel.writeString(this.f14756l);
        if (this.f14759o != null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                try {
                    objectOutputStream.writeObject(this.f14759o);
                } catch (NotSerializableException e) {
                    ServerErrorException serverErrorException = new ServerErrorException(-1);
                    serverErrorException.setError(this.f14759o.getMessage());
                    objectOutputStream.writeObject(serverErrorException);
                }
                objectOutputStream.close();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                parcel.writeInt(byteArray.length);
                parcel.writeByteArray(byteArray);
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
        } else {
            parcel.writeInt(0);
        }
    }
}
