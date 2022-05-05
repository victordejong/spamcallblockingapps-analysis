package com.apptentive.android.sdk.storage;

import com.apptentive.android.sdk.encryption.EncryptionKey;
import com.apptentive.android.sdk.encryption.Encryptor;
import com.apptentive.android.sdk.util.Util;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/EncryptedFileSerializer.class */
public class EncryptedFileSerializer extends FileSerializer {
    private final EncryptionKey encryptionKey;

    public EncryptedFileSerializer(File file, EncryptionKey encryptionKey) {
        super(file);
        if (encryptionKey == null) {
            throw new IllegalArgumentException("'encryptionKey' is null or empty");
        }
        this.encryptionKey = encryptionKey;
    }

    @Override // com.apptentive.android.sdk.storage.FileSerializer
    protected Object deserialize(File file) throws SerializerException {
        Exception e;
        ObjectInputStream objectInputStream;
        try {
            byte[] readBytes = Util.readBytes(file);
            ByteArrayInputStream byteArrayInputStream = null;
            byteArrayInputStream = null;
            try {
                byteArrayInputStream = new ByteArrayInputStream(Encryptor.decrypt(this.encryptionKey, readBytes));
                try {
                    objectInputStream = new ObjectInputStream(byteArrayInputStream);
                    try {
                        Object readObject = objectInputStream.readObject();
                        Util.ensureClosed(byteArrayInputStream);
                        Util.ensureClosed(objectInputStream);
                        return readObject;
                    } catch (Exception e2) {
                        e = e2;
                        try {
                            throw new SerializerException(e);
                        } catch (Throwable th) {
                            th = th;
                            Util.ensureClosed(byteArrayInputStream);
                            Util.ensureClosed(objectInputStream);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        objectInputStream = objectInputStream;
                        Util.ensureClosed(byteArrayInputStream);
                        Util.ensureClosed(objectInputStream);
                        throw th;
                    }
                } catch (Exception e3) {
                    e = e3;
                    objectInputStream = null;
                } catch (Throwable th3) {
                    th = th3;
                    objectInputStream = null;
                }
            } catch (Exception e4) {
                e = e4;
                objectInputStream = null;
            } catch (Throwable th4) {
                th = th4;
                objectInputStream = null;
            }
        } catch (Exception e5) {
            throw new SerializerException(e5);
        }
    }

    @Override // com.apptentive.android.sdk.storage.FileSerializer
    protected void serialize(FileOutputStream fileOutputStream, Object obj) throws Exception {
        ByteArrayOutputStream byteArrayOutputStream;
        Throwable th;
        ObjectOutputStream objectOutputStream;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(byteArrayOutputStream);
                try {
                    objectOutputStream2.writeObject(obj);
                    fileOutputStream.write(Encryptor.encrypt(this.encryptionKey, byteArrayOutputStream.toByteArray()));
                    Util.ensureClosed(byteArrayOutputStream);
                    Util.ensureClosed(objectOutputStream2);
                } catch (Throwable th2) {
                    th = th2;
                    objectOutputStream = objectOutputStream2;
                    Util.ensureClosed(byteArrayOutputStream);
                    Util.ensureClosed(objectOutputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                objectOutputStream = null;
            }
        } catch (Throwable th4) {
            th = th4;
            byteArrayOutputStream = null;
            objectOutputStream = null;
        }
    }
}
