package com.allinone.callerid.p140c.p142b;

import android.content.Context;
import android.os.Environment;
import com.allinone.callerid.util.C3718c0;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OptionalDataException;
import java.io.StreamCorruptedException;
import java.util.List;
/* renamed from: com.allinone.callerid.c.b.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/c/b/b.class */
public class C2320b {
    /* renamed from: a */
    public static List<Object> m27658a(Context context, String str) {
        if (Environment.getExternalStorageState().equals("mounted")) {
            try {
                FileInputStream fileInputStream = new FileInputStream(new File(context.getExternalFilesDir(""), str));
                ObjectInputStream objectInputStream = new ObjectInputStream(fileInputStream);
                List<Object> list = (List) objectInputStream.readObject();
                fileInputStream.close();
                objectInputStream.close();
                return list;
            } catch (FileNotFoundException e) {
                e.printStackTrace();
                return null;
            } catch (OptionalDataException e2) {
                e2.printStackTrace();
                return null;
            } catch (StreamCorruptedException e3) {
                e3.printStackTrace();
                return null;
            } catch (IOException e4) {
                e4.printStackTrace();
                return null;
            } catch (ClassNotFoundException e5) {
                e5.printStackTrace();
                return null;
            }
        }
        return null;
    }

    /* renamed from: b */
    public static boolean m27657b(Context context, String str, Object obj) {
        if (Environment.getExternalStorageState().equals("mounted")) {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(new File(context.getExternalFilesDir(""), str));
                ObjectOutputStream objectOutputStream = new ObjectOutputStream(fileOutputStream);
                objectOutputStream.writeObject(obj);
                fileOutputStream.close();
                objectOutputStream.close();
                if (!C3718c0.f11914a) {
                    return true;
                }
                C3718c0.m24436a("backup", "write ok");
                return true;
            } catch (FileNotFoundException e) {
                e.printStackTrace();
                return false;
            } catch (IOException e2) {
                e2.printStackTrace();
                return false;
            }
        }
        return false;
    }
}
