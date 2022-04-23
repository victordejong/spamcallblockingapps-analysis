package com.apptentive.android.sdk.storage;

import com.apptentive.android.sdk.Encryption;
import com.apptentive.android.sdk.util.Util;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.ObjectOutputStream;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/EncryptedFileSerializer.class */
public class EncryptedFileSerializer extends FileSerializer {
    private final Encryption encryption;

    public EncryptedFileSerializer(File file, Encryption encryption) {
        super(file);
        if (encryption != null) {
            this.encryption = encryption;
            return;
        }
        throw new IllegalArgumentException("Encryption is null or empty");
    }

    @Override // com.apptentive.android.sdk.storage.FileSerializer
    protected Object deserialize(File file) throws SerializerException {
        OverrideSerialVersionUIDObjectInputStream overrideSerialVersionUIDObjectInputStream;
        ByteArrayInputStream byteArrayInputStream;
        Throwable th;
        try {
            try {
                byteArrayInputStream = new ByteArrayInputStream(this.encryption.decrypt(Util.readBytes(file)));
                try {
                    overrideSerialVersionUIDObjectInputStream = new OverrideSerialVersionUIDObjectInputStream(byteArrayInputStream);
                    try {
                        Object readObject = overrideSerialVersionUIDObjectInputStream.readObject();
                        Util.ensureClosed(byteArrayInputStream);
                        Util.ensureClosed(overrideSerialVersionUIDObjectInputStream);
                        return readObject;
                    } catch (Throwable th2) {
                        th = th2;
                        Util.ensureClosed(byteArrayInputStream);
                        Util.ensureClosed(overrideSerialVersionUIDObjectInputStream);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    overrideSerialVersionUIDObjectInputStream = null;
                }
            } catch (Throwable th4) {
                th = th4;
                byteArrayInputStream = null;
                overrideSerialVersionUIDObjectInputStream = null;
            }
        } catch (Exception e) {
            throw new SerializerException(e);
        }
    }

    @Override // com.apptentive.android.sdk.storage.FileSerializer
    protected void serialize(FileOutputStream fileOutputStream, Object obj) throws Exception {
        ObjectOutputStream objectOutputStream;
        Throwable th;
        ByteArrayOutputStream byteArrayOutputStream = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(byteArrayOutputStream);
                try {
                    objectOutputStream2.writeObject(obj);
                    fileOutputStream.write(this.encryption.encrypt(byteArrayOutputStream.toByteArray()));
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
            objectOutputStream = null;
        }
    }
}
