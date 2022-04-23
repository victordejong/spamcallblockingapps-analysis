package p626l.p640y;

import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import p626l.p641z.p643d.C15149k;
/* renamed from: l.y.n */
/* loaded from: classes3-dex2jar.jar:l/y/n.class */
public class C15103n extends C15102m {
    /* renamed from: a */
    public static final File m428a(File file, File file2, boolean z, int i) {
        FileOutputStream fileInputStream;
        C15149k.m377b(file, "$this$copyTo");
        C15149k.m377b(file2, AnimatedVectorDrawableCompat.TARGET);
        if (file.exists()) {
            if (file2.exists()) {
                if (!z) {
                    throw new C15089f(file, file2, "The destination file already exists.");
                } else if (!file2.delete()) {
                    throw new C15089f(file, file2, "Tried to overwrite the destination, but failed to delete it.");
                }
            }
            if (!file.isDirectory()) {
                File parentFile = file2.getParentFile();
                if (parentFile != null) {
                    parentFile.mkdirs();
                }
                try {
                    C15085b.m449a(new FileInputStream(file), new FileOutputStream(file2), i);
                    th = null;
                    th = null;
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            } else if (!file2.mkdirs()) {
                throw new C15090g(file, file2, "Failed to create target directory.");
            }
            return file2;
        }
        throw new C15104o(file, null, "The source file doesn't exist.", 2, null);
    }

    /* renamed from: c */
    public static final boolean m427c(File file) {
        C15149k.m377b(file, "$this$deleteRecursively");
        while (true) {
            boolean z = true;
            for (File file2 : C15102m.m429b(file)) {
                if ((file2.delete() || !file2.exists()) && z) {
                    break;
                }
                z = false;
            }
            return z;
        }
    }
}
