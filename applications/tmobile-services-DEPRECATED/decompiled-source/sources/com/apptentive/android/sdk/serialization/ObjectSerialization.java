package com.apptentive.android.sdk.serialization;

import androidx.annotation.NonNull;
import com.apptentive.android.sdk.Encryption;
import com.apptentive.android.sdk.util.Util;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Constructor;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/serialization/ObjectSerialization.class */
public class ObjectSerialization {
    public static <T extends SerializableObject> T deserialize(File file, Class<T> cls) throws IOException {
        Throwable th;
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                DataInputStream dataInputStream = new DataInputStream(fileInputStream2);
                try {
                    Constructor<T> declaredConstructor = cls.getDeclaredConstructor(DataInput.class);
                    declaredConstructor.setAccessible(true);
                    T newInstance = declaredConstructor.newInstance(dataInputStream);
                    Util.ensureClosed(fileInputStream2);
                    return newInstance;
                } catch (Exception e) {
                    throw new IOException("Unable to instantiate class: " + cls, e);
                }
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = fileInputStream2;
                Util.ensureClosed(fileInputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static <T extends SerializableObject> T deserialize(File file, Class<T> cls, Encryption encryption) throws IOException {
        Throwable th;
        try {
            byte[] decrypt = encryption.decrypt(Util.readBytes(file));
            ByteArrayInputStream byteArrayInputStream = null;
            try {
                byteArrayInputStream = new ByteArrayInputStream(decrypt);
                try {
                    DataInputStream dataInputStream = new DataInputStream(byteArrayInputStream);
                    Constructor<T> declaredConstructor = cls.getDeclaredConstructor(DataInput.class);
                    declaredConstructor.setAccessible(true);
                    T newInstance = declaredConstructor.newInstance(dataInputStream);
                    Util.ensureClosed(byteArrayInputStream);
                    return newInstance;
                } catch (Throwable th2) {
                    th = th2;
                    Util.ensureClosed(byteArrayInputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception e) {
            throw new IOException("Unable to instantiate class: " + cls, e);
        }
    }

    public static void serialize(File file, SerializableObject serializableObject, @NonNull Encryption encryption) throws IOException {
        Exception e;
        DataOutputStream dataOutputStream;
        ByteArrayOutputStream byteArrayOutputStream;
        DataOutputStream dataOutputStream2;
        r5 = null;
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                dataOutputStream2 = new DataOutputStream(byteArrayOutputStream);
            } catch (Exception e2) {
                e = e2;
                dataOutputStream = null;
            } catch (Throwable th) {
                th = th;
                dataOutputStream = null;
            }
        } catch (Exception e3) {
            e = e3;
            dataOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
            dataOutputStream = null;
        }
        try {
            serializableObject.writeExternal(dataOutputStream2);
            Util.writeAtomically(file, encryption.encrypt(byteArrayOutputStream.toByteArray()));
            Util.ensureClosed(byteArrayOutputStream);
            Util.ensureClosed(dataOutputStream2);
        } catch (Exception e4) {
            e = e4;
            dataOutputStream = dataOutputStream2;
            byteArrayOutputStream2 = byteArrayOutputStream;
            try {
                throw new IOException(e);
            } catch (Throwable th3) {
                th = th3;
                Util.ensureClosed(byteArrayOutputStream2);
                Util.ensureClosed(dataOutputStream);
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            dataOutputStream = dataOutputStream2;
            byteArrayOutputStream2 = byteArrayOutputStream;
            Util.ensureClosed(byteArrayOutputStream2);
            Util.ensureClosed(dataOutputStream);
            throw th;
        }
    }
}
