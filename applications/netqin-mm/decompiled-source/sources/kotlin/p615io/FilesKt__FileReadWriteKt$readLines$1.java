package kotlin.p615io;

import java.util.ArrayList;
import kotlin.jvm.internal.Lambda;
import p573f.C9946p;
import p573f.p590w.p591b.AbstractC10031l;
import p573f.p590w.p592c.C10059q;
/* renamed from: kotlin.io.FilesKt__FileReadWriteKt$readLines$1 */
/* loaded from: classes2-dex2jar.jar:kotlin/io/FilesKt__FileReadWriteKt$readLines$1.class */
public final class FilesKt__FileReadWriteKt$readLines$1 extends Lambda implements AbstractC10031l<String, C9946p> {
    public final /* synthetic */ ArrayList $result;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FilesKt__FileReadWriteKt$readLines$1(ArrayList arrayList) {
        super(1);
        this.$result = arrayList;
    }

    @Override // p573f.p590w.p591b.AbstractC10031l
    public /* bridge */ /* synthetic */ C9946p invoke(String str) {
        invoke2(str);
        return C9946p.f37137a;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(String str) {
        C10059q.m1637b(str, "it");
        this.$result.add(str);
    }
}
