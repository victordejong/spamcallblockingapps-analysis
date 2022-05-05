package androidx.core.p005os;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.C15148j;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a*\u0010��\u001a\u0002H\u0001\"\u0004\b��\u0010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0005H\u0086\b¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, m815d2 = {"trace", ExifInterface.GPS_DIRECTION_TRUE, "sectionName", "", "block", "Lkotlin/Function0;", "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "core-ktx_release"}, m814k = 2, m813mv = {1, 1, 15})
/* renamed from: androidx.core.os.TraceKt */
/* loaded from: classes-dex2jar.jar:androidx/core/os/TraceKt.class */
public final class TraceKt {
    public static final <T> T trace(String str, AbstractC15107a<? extends T> aVar) {
        C15149k.m377b(str, "sectionName");
        C15149k.m377b(aVar, "block");
        TraceCompat.beginSection(str);
        try {
            T t = (T) aVar.invoke();
            C15148j.m389b(1);
            TraceCompat.endSection();
            C15148j.m390a(1);
            return t;
        } catch (Throwable th) {
            C15148j.m389b(1);
            TraceCompat.endSection();
            C15148j.m390a(1);
            throw th;
        }
    }
}
