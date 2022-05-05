package p459j.p460a.p471b1.p473b;

import androidx.annotation.WorkerThread;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import p626l.C14989s;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15162x;
/* renamed from: j.a.b1.b.c */
/* loaded from: classes3-dex2jar.jar:j/a/b1/b/c.class */
public final class C11512c {
    /* renamed from: a */
    public static final ZipOutputStream m9417a(File file) {
        C15149k.m377b(file, "receiver$0");
        return new ZipOutputStream(new FileOutputStream(file));
    }

    @WorkerThread
    /* renamed from: a */
    public static final void m9416a(ZipOutputStream zipOutputStream, File... fileArr) {
        C15149k.m377b(zipOutputStream, "receiver$0");
        C15149k.m377b(fileArr, "files");
        try {
            for (File file : fileArr) {
                if (file.isFile()) {
                    m9415a(zipOutputStream, new File[]{file}, null);
                } else if (file.isDirectory()) {
                    File[] listFiles = file.listFiles();
                    C15149k.m383a((Object) listFiles, "it.listFiles()");
                    m9415a(zipOutputStream, listFiles, file.getName());
                }
            }
            C14989s sVar = C14989s.f33022a;
            th = null;
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    /* renamed from: a */
    public static final void m9415a(ZipOutputStream zipOutputStream, File[] fileArr, String str) {
        String str2 = str == null ? "" : str + '/';
        if (fileArr.length == 0) {
            zipOutputStream.putNextEntry(new ZipEntry(str2));
            zipOutputStream.closeEntry();
        }
        for (File file : fileArr) {
            if (file.isFile()) {
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    zipOutputStream.putNextEntry(new ZipEntry(str2 + file.getName()));
                    byte[] bArr = new byte[8192];
                    C15162x xVar = new C15162x();
                    while (true) {
                        int read = fileInputStream.read(bArr);
                        xVar.f33150a = read;
                        if (read < 0) {
                            break;
                        }
                        zipOutputStream.write(bArr, 0, xVar.f33150a);
                    }
                    zipOutputStream.closeEntry();
                    C14989s sVar = C14989s.f33022a;
                    th = null;
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            } else {
                File[] listFiles = file.listFiles();
                C15149k.m383a((Object) listFiles, "f.listFiles()");
                m9415a(zipOutputStream, listFiles, str2 + file.getName());
            }
        }
    }
}
