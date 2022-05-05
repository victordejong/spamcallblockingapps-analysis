package androidx.core.util;

import android.util.AtomicFile;
import androidx.annotation.RequiresApi;
import gogolook.callgogolook2.realm.obj.block.MmsBlockLogRealmObject;
import java.io.FileOutputStream;
import java.nio.charset.Charset;
import kotlin.Metadata;
import p626l.C14989s;
import p626l.p631e0.C14938c;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15148j;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��.\n��\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a\r\u0010��\u001a\u00020\u0001*\u00020\u0002H\u0087\b\u001a\u0016\u0010\u0003\u001a\u00020\u0004*\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0006H\u0007\u001a0\u0010\u0007\u001a\u00020\b*\u00020\u00022!\u0010\t\u001a\u001d\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\b0\nH\u0087\b\u001a\u0014\u0010\u000f\u001a\u00020\b*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0001H\u0007\u001a\u001e\u0010\u0011\u001a\u00020\b*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0013"}, m815d2 = {"readBytes", "", "Landroid/util/AtomicFile;", "readText", "", MmsBlockLogRealmObject.ADDRESS_CHARSET, "Ljava/nio/charset/Charset;", "tryWrite", "", "block", "Lkotlin/Function1;", "Ljava/io/FileOutputStream;", "Lkotlin/ParameterName;", "name", "out", "writeBytes", "array", "writeText", "text", "core-ktx_release"}, m814k = 2, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/core/util/AtomicFileKt.class */
public final class AtomicFileKt {
    @RequiresApi(17)
    public static final byte[] readBytes(AtomicFile atomicFile) {
        C15149k.m377b(atomicFile, "$this$readBytes");
        byte[] readFully = atomicFile.readFully();
        C15149k.m383a((Object) readFully, "readFully()");
        return readFully;
    }

    @RequiresApi(17)
    public static final String readText(AtomicFile atomicFile, Charset charset) {
        C15149k.m377b(atomicFile, "$this$readText");
        C15149k.m377b(charset, MmsBlockLogRealmObject.ADDRESS_CHARSET);
        byte[] readFully = atomicFile.readFully();
        C15149k.m383a((Object) readFully, "readFully()");
        return new String(readFully, charset);
    }

    public static /* synthetic */ String readText$default(AtomicFile atomicFile, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = C14938c.f32979a;
        }
        return readText(atomicFile, charset);
    }

    @RequiresApi(17)
    public static final void tryWrite(AtomicFile atomicFile, AbstractC15118l<? super FileOutputStream, C14989s> lVar) {
        C15149k.m377b(atomicFile, "$this$tryWrite");
        C15149k.m377b(lVar, "block");
        FileOutputStream startWrite = atomicFile.startWrite();
        try {
            C15149k.m383a((Object) startWrite, "stream");
            lVar.invoke(startWrite);
            C15148j.m389b(1);
            atomicFile.finishWrite(startWrite);
            C15148j.m390a(1);
        } catch (Throwable th) {
            C15148j.m389b(1);
            atomicFile.failWrite(startWrite);
            C15148j.m390a(1);
            throw th;
        }
    }

    @RequiresApi(17)
    public static final void writeBytes(AtomicFile atomicFile, byte[] bArr) {
        C15149k.m377b(atomicFile, "$this$writeBytes");
        C15149k.m377b(bArr, "array");
        FileOutputStream startWrite = atomicFile.startWrite();
        try {
            C15149k.m383a((Object) startWrite, "stream");
            startWrite.write(bArr);
            atomicFile.finishWrite(startWrite);
        } catch (Throwable th) {
            atomicFile.failWrite(startWrite);
            throw th;
        }
    }

    @RequiresApi(17)
    public static final void writeText(AtomicFile atomicFile, String str, Charset charset) {
        C15149k.m377b(atomicFile, "$this$writeText");
        C15149k.m377b(str, "text");
        C15149k.m377b(charset, MmsBlockLogRealmObject.ADDRESS_CHARSET);
        byte[] bytes = str.getBytes(charset);
        C15149k.m383a((Object) bytes, "(this as java.lang.String).getBytes(charset)");
        writeBytes(atomicFile, bytes);
    }

    public static /* synthetic */ void writeText$default(AtomicFile atomicFile, String str, Charset charset, int i, Object obj) {
        if ((i & 2) != 0) {
            charset = C14938c.f32979a;
        }
        writeText(atomicFile, str, charset);
    }
}
