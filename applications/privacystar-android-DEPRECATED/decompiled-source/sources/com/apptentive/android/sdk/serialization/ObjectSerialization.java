package com.apptentive.android.sdk.serialization;

import android.support.annotation.NonNull;
import android.support.p001v4.util.AtomicFile;
import com.apptentive.android.sdk.encryption.EncryptionKey;
import com.apptentive.android.sdk.encryption.Encryptor;
import com.apptentive.android.sdk.util.Util;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Constructor;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/serialization/ObjectSerialization.class */
public class ObjectSerialization {
    public static <T extends SerializableObject> T deserialize(File file, Class<T> cls) throws IOException {
        Throwable th;
        FileInputStream fileInputStream;
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
            fileInputStream = null;
        }
    }

    public static <T extends SerializableObject> T deserialize(File file, Class<T> cls, EncryptionKey encryptionKey) throws IOException {
        Throwable th;
        ByteArrayInputStream byteArrayInputStream;
        try {
            try {
                byteArrayInputStream = new ByteArrayInputStream(Encryptor.decrypt(encryptionKey, Util.readBytes(file)));
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
                byteArrayInputStream = null;
            }
        } catch (Exception e) {
            throw new IOException("Unable to instantiate class: " + cls, e);
        }
    }

    public static void serialize(File file, SerializableObject serializableObject) throws IOException {
        FileOutputStream fileOutputStream;
        Exception e;
        FileOutputStream startWrite;
        AtomicFile atomicFile = new AtomicFile(file);
        try {
            startWrite = atomicFile.startWrite();
        } catch (Exception e2) {
            e = e2;
            fileOutputStream = null;
        }
        try {
            serializableObject.writeExternal(new DataOutputStream(startWrite));
            atomicFile.finishWrite(startWrite);
        } catch (Exception e3) {
            e = e3;
            fileOutputStream = startWrite;
            atomicFile.failWrite(fileOutputStream);
            throw new IOException(e);
        }
    }

    public static void serialize(File file, SerializableObject serializableObject, @NonNull EncryptionKey encryptionKey) throws IOException {
        Exception e;
        DataOutputStream dataOutputStream;
        ByteArrayOutputStream byteArrayOutputStream = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            try {
                DataOutputStream dataOutputStream2 = new DataOutputStream(byteArrayOutputStream2);
                try {
                    serializableObject.writeExternal(dataOutputStream2);
                    Util.writeAtomically(file, Encryptor.encrypt(encryptionKey, byteArrayOutputStream2.toByteArray()));
                    Util.ensureClosed(byteArrayOutputStream2);
                    Util.ensureClosed(dataOutputStream2);
                } catch (Exception e2) {
                    e = e2;
                    dataOutputStream = dataOutputStream2;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    try {
                        throw new IOException(e);
                    } catch (Throwable th) {
                        th = th;
                        Util.ensureClosed(byteArrayOutputStream);
                        Util.ensureClosed(dataOutputStream);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    dataOutputStream = dataOutputStream2;
                    Util.ensureClosed(byteArrayOutputStream);
                    Util.ensureClosed(dataOutputStream);
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
                dataOutputStream = null;
            } catch (Throwable th3) {
                th = th3;
                dataOutputStream = null;
                byteArrayOutputStream = byteArrayOutputStream2;
            }
        } catch (Exception e4) {
            e = e4;
            dataOutputStream = null;
        } catch (Throwable th4) {
            th = th4;
            byteArrayOutputStream = null;
            dataOutputStream = null;
        }
    }
}
