package p626l.p640y;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Arrays;
import p626l.C14989s;
import p626l.p632u.C15011h;
import p626l.p641z.p643d.C15149k;
/* renamed from: l.y.l */
/* loaded from: classes3-dex2jar.jar:l/y/l.class */
public class C15101l extends C15100k {
    /* renamed from: a */
    public static final void m431a(File file, byte[] bArr) {
        FileOutputStream fileOutputStream;
        C15149k.m377b(file, "$this$writeBytes");
        C15149k.m377b(bArr, "array");
        try {
            new FileOutputStream(file).write(bArr);
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
    public static final byte[] m432a(File file) {
        byte[] bArr;
        int read;
        C15149k.m377b(file, "$this$readBytes");
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            long length = file.length();
            if (length <= Integer.MAX_VALUE) {
                int i = (int) length;
                byte[] bArr2 = new byte[i];
                int i2 = 0;
                while (i > 0 && (read = fileInputStream.read(bArr2, i2, i)) >= 0) {
                    i -= read;
                    i2 += read;
                }
                if (i > 0) {
                    bArr = Arrays.copyOf(bArr2, i2);
                    C15149k.m383a((Object) bArr, "java.util.Arrays.copyOf(this, newSize)");
                } else {
                    int read2 = fileInputStream.read();
                    if (read2 == -1) {
                        bArr = bArr2;
                    } else {
                        C15088e eVar = new C15088e(8193);
                        eVar.write(read2);
                        C15085b.m448a(fileInputStream, eVar, 0, 2, null);
                        int length2 = bArr2.length + eVar.size();
                        if (length2 >= 0) {
                            byte[] a = eVar.m444a();
                            bArr = Arrays.copyOf(bArr2, length2);
                            C15149k.m383a((Object) bArr, "java.util.Arrays.copyOf(this, newSize)");
                            C15011h.m611a(a, bArr, bArr2.length, 0, eVar.size());
                        } else {
                            throw new OutOfMemoryError("File " + file + " is too big to fit in memory.");
                        }
                    }
                }
                th = null;
                return bArr;
            }
            throw new OutOfMemoryError("File " + file + " is too big (" + length + " bytes) to fit in memory.");
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }
}
