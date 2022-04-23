package com.apptentive.android.sdk.storage;

import android.support.p001v4.util.AtomicFile;
import com.apptentive.android.sdk.util.Util;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/FileSerializer.class */
public class FileSerializer implements Serializer {
    private final File file;

    public FileSerializer(File file) {
        if (file == null) {
            throw new IllegalArgumentException("'file' is null");
        }
        this.file = file;
    }

    @Override // com.apptentive.android.sdk.storage.Serializer
    public Object deserialize() throws SerializerException {
        return deserialize(this.file);
    }

    protected Object deserialize(File file) throws SerializerException {
        Exception e;
        ObjectInputStream objectInputStream;
        r4 = null;
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                ObjectInputStream objectInputStream2 = new ObjectInputStream(fileInputStream2);
                try {
                    Object readObject = objectInputStream2.readObject();
                    Util.ensureClosed(fileInputStream2);
                    Util.ensureClosed(objectInputStream2);
                    return readObject;
                } catch (Exception e2) {
                    e = e2;
                    objectInputStream = objectInputStream2;
                    fileInputStream = fileInputStream2;
                    try {
                        throw new SerializerException(e);
                    } catch (Throwable th) {
                        th = th;
                        Util.ensureClosed(fileInputStream);
                        Util.ensureClosed(objectInputStream);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    objectInputStream = objectInputStream2;
                    fileInputStream = fileInputStream2;
                    Util.ensureClosed(fileInputStream);
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
    }

    protected void serialize(FileOutputStream fileOutputStream, Object obj) throws Exception {
        Throwable th;
        ByteArrayOutputStream byteArrayOutputStream;
        ObjectOutputStream objectOutputStream;
        ObjectOutputStream objectOutputStream2 = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            objectOutputStream.writeObject(obj);
            fileOutputStream.write(byteArrayOutputStream.toByteArray());
            Util.ensureClosed(objectOutputStream);
        } catch (Throwable th3) {
            th = th3;
            objectOutputStream2 = objectOutputStream;
            Util.ensureClosed(objectOutputStream2);
            throw th;
        }
    }

    @Override // com.apptentive.android.sdk.storage.Serializer
    public void serialize(Object obj) throws SerializerException {
        Exception e;
        FileOutputStream fileOutputStream;
        FileOutputStream startWrite;
        this.file.getParentFile().mkdirs();
        AtomicFile atomicFile = new AtomicFile(this.file);
        try {
            startWrite = atomicFile.startWrite();
        } catch (Exception e2) {
            e = e2;
            fileOutputStream = null;
        }
        try {
            serialize(startWrite, obj);
            atomicFile.finishWrite(startWrite);
        } catch (Exception e3) {
            e = e3;
            fileOutputStream = startWrite;
            atomicFile.failWrite(fileOutputStream);
            throw new SerializerException(e);
        }
    }
}
