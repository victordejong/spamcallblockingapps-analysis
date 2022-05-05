package com.apptentive.android.sdk.storage;

import androidx.core.util.AtomicFile;
import com.apptentive.android.sdk.util.Util;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectOutputStream;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/FileSerializer.class */
public class FileSerializer implements Serializer {
    private final File file;

    public FileSerializer(File file) {
        if (file != null) {
            this.file = file;
            return;
        }
        throw new IllegalArgumentException("'file' is null");
    }

    public Object deserialize() throws SerializerException {
        return deserialize(this.file);
    }

    /* JADX WARN: Not initialized variable reg: 6, insn: 0x0069: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r6 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:26:0x0069 */
    protected Object deserialize(File file) throws SerializerException {
        Closeable closeable;
        FileInputStream fileInputStream;
        Throwable th;
        Exception e;
        OverrideSerialVersionUIDObjectInputStream overrideSerialVersionUIDObjectInputStream;
        try {
            try {
                fileInputStream = new FileInputStream(file);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
            fileInputStream = null;
            overrideSerialVersionUIDObjectInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
            closeable = null;
        }
        try {
            overrideSerialVersionUIDObjectInputStream = new OverrideSerialVersionUIDObjectInputStream(fileInputStream);
            try {
                Object readObject = overrideSerialVersionUIDObjectInputStream.readObject();
                Util.ensureClosed(fileInputStream);
                Util.ensureClosed(overrideSerialVersionUIDObjectInputStream);
                return readObject;
            } catch (Exception e3) {
                e = e3;
                throw new SerializerException(e);
            }
        } catch (Exception e4) {
            e = e4;
            overrideSerialVersionUIDObjectInputStream = null;
        } catch (Throwable th4) {
            th = th4;
            closeable = null;
            Util.ensureClosed(fileInputStream);
            Util.ensureClosed(closeable);
            throw th;
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

    public void serialize(Object obj) throws SerializerException {
        FileOutputStream fileOutputStream;
        Exception e;
        this.file.getParentFile().mkdirs();
        AtomicFile atomicFile = new AtomicFile(this.file);
        try {
            fileOutputStream = atomicFile.m19350c();
        } catch (Exception e2) {
            e = e2;
            fileOutputStream = null;
        }
        try {
            serialize(fileOutputStream, obj);
            atomicFile.m19351b(fileOutputStream);
        } catch (Exception e3) {
            e = e3;
            atomicFile.m19352a(fileOutputStream);
            throw new SerializerException(e);
        }
    }
}
