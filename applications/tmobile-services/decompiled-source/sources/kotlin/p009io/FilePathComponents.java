package kotlin.p009io;

import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0080\b\u0018��B\u001f\b��\u0012\u0006\u0010\u0007\u001a\u00020\u0001\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0004\b$\u0010%J\u0010\u0010\u0002\u001a\u00020\u0001HÆ\u0003¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0006J*\u0010\t\u001a\u00020��2\b\b\u0002\u0010\u0007\u001a\u00020\u00012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00010\u0004HÆ\u0001¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bHÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u001d\u0010\u0015\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0010¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0018\u001a\u00020\u0017HÖ\u0001¢\u0006\u0004\b\u0018\u0010\u0019R\u0013\u0010\u001a\u001a\u00020\r8F@\u0006¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u0019\u0010\u0007\u001a\u00020\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u001c\u001a\u0004\b\u001d\u0010\u0003R\u0013\u0010\u001f\u001a\u00020\u00178F@\u0006¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u0019R\u001f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00010\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010 \u001a\u0004\b!\u0010\u0006R\u0013\u0010#\u001a\u00020\u00108F@\u0006¢\u0006\u0006\u001a\u0004\b\"\u0010\u0012¨\u0006&"}, d2 = {"Lkotlin/io/FilePathComponents;", "Ljava/io/File;", "component1", "()Ljava/io/File;", "", "component2", "()Ljava/util/List;", "root", "segments", "copy", "(Ljava/io/File;Ljava/util/List;)Lkotlin/io/FilePathComponents;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "beginIndex", "endIndex", "subPath", "(II)Ljava/io/File;", "", "toString", "()Ljava/lang/String;", "isRooted", "()Z", "Ljava/io/File;", "getRoot", "getRootName", "rootName", "Ljava/util/List;", "getSegments", "getSize", "size", "<init>", "(Ljava/io/File;Ljava/util/List;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: kotlin.io.FilePathComponents */
/* loaded from: classes2-dex2jar.jar:kotlin/io/FilePathComponents.class */
public final class FilePathComponents {
    @NotNull

    /* renamed from: a */
    private final File f20677a;
    @NotNull

    /* renamed from: b */
    private final List<File> f20678b;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FilePathComponents)) {
            return false;
        }
        FilePathComponents filePathComponents = (FilePathComponents) obj;
        return Intrinsics.m1834a(this.f20677a, filePathComponents.f20677a) && Intrinsics.m1834a(this.f20678b, filePathComponents.f20678b);
    }

    public int hashCode() {
        File file = this.f20677a;
        int i = 0;
        int hashCode = file != null ? file.hashCode() : 0;
        List<File> list = this.f20678b;
        if (list != null) {
            i = list.hashCode();
        }
        return (hashCode * 31) + i;
    }

    @NotNull
    public String toString() {
        return "FilePathComponents(root=" + this.f20677a + ", segments=" + this.f20678b + ")";
    }
}
