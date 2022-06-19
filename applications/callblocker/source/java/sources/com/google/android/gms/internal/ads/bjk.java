package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bjk.class */
public abstract class bjk<K, V> {

    /* renamed from: a */
    private static final String f11389a = bjk.class.getSimpleName();

    /* renamed from: b */
    public static <K, V> HashMap<K, V> m11853b(String str) {
        HashMap<K, V> hashMap;
        try {
        } catch (IOException | ClassNotFoundException e) {
            Log.d(f11389a, "decode object failure");
        }
        if (!TextUtils.isEmpty(str)) {
            hashMap = (HashMap) new ObjectInputStream(new ByteArrayInputStream(Base64.decode(str.getBytes(), 0))).readObject();
            return hashMap;
        }
        hashMap = null;
        return hashMap;
    }

    /* renamed from: a */
    protected abstract HashMap<K, V> mo9375a();

    /* renamed from: a */
    public abstract void mo9374a(String str);

    public String toString() {
        String str;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(mo9375a());
            objectOutputStream.close();
            str = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
        } catch (IOException e) {
            str = null;
        }
        return str;
    }
}
