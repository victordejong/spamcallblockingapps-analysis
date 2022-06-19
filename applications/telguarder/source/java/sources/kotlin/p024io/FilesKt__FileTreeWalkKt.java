package kotlin.p024io;

import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0014\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0014\u0010��\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u001a\n\u0010\u0005\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0006\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0007"}, m400d2 = {"walk", "Lkotlin/io/FileTreeWalk;", "Ljava/io/File;", "direction", "Lkotlin/io/FileWalkDirection;", "walkBottomUp", "walkTopDown", "kotlin-stdlib"}, m399k = 5, m398mv = {1, 4, 0}, m396xi = 1, m395xs = "kotlin/io/FilesKt")
/* renamed from: kotlin.io.FilesKt__FileTreeWalkKt */
/* loaded from: classes-dex2jar.jar:kotlin/io/FilesKt__FileTreeWalkKt.class */
public class FilesKt__FileTreeWalkKt extends FilesKt__FileReadWriteKt {
    public static final FileTreeWalk walk(File walk, FileWalkDirection direction) {
        Intrinsics.checkNotNullParameter(walk, "$this$walk");
        Intrinsics.checkNotNullParameter(direction, "direction");
        return new FileTreeWalk(walk, direction);
    }

    public static /* synthetic */ FileTreeWalk walk$default(File file, FileWalkDirection fileWalkDirection, int i, Object obj) {
        if ((i & 1) != 0) {
            fileWalkDirection = FileWalkDirection.TOP_DOWN;
        }
        return FilesKt.walk(file, fileWalkDirection);
    }

    public static final FileTreeWalk walkBottomUp(File walkBottomUp) {
        Intrinsics.checkNotNullParameter(walkBottomUp, "$this$walkBottomUp");
        return FilesKt.walk(walkBottomUp, FileWalkDirection.BOTTOM_UP);
    }

    public static final FileTreeWalk walkTopDown(File walkTopDown) {
        Intrinsics.checkNotNullParameter(walkTopDown, "$this$walkTopDown");
        return FilesKt.walk(walkTopDown, FileWalkDirection.TOP_DOWN);
    }
}
