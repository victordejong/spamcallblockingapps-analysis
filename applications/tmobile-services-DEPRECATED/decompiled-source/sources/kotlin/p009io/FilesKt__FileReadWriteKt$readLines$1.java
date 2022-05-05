package kotlin.p009io;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* renamed from: kotlin.io.FilesKt__FileReadWriteKt$readLines$1 */
/* loaded from: classes2-dex2jar.jar:kotlin/io/FilesKt__FileReadWriteKt$readLines$1.class */
final class FilesKt__FileReadWriteKt$readLines$1 extends Lambda implements Function1<String, Unit> {

    /* renamed from: f */
    final /* synthetic */ ArrayList f20699f;

    /* renamed from: b */
    public final void m1874b(@NotNull String it) {
        Intrinsics.m1830e(it, "it");
        this.f20699f.add(it);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(String str) {
        m1874b(str);
        return Unit.f20447a;
    }
}
