package androidx.work;

import androidx.core.app.Person;
import androidx.exifinterface.media.ExifInterface;
import androidx.work.Data;
import kotlin.Metadata;
import p626l.C14978j;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��$\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\u001a>\u0010��\u001a\u00020\u00012.\u0010\u0002\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00040\u0003\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004H\u0086\b¢\u0006\u0002\u0010\u0007\u001a!\u0010\b\u001a\u00020\t\"\n\b��\u0010\n\u0018\u0001*\u00020\u0006*\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u0005H\u0086\b¨\u0006\f"}, m815d2 = {"workDataOf", "Landroidx/work/Data;", "pairs", "", "Lkotlin/Pair;", "", "", "([Lkotlin/Pair;)Landroidx/work/Data;", "hasKeyWithValueOfType", "", ExifInterface.GPS_DIRECTION_TRUE, Person.KEY_KEY, "work-runtime-ktx_release"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes-dex2jar.jar:androidx/work/DataKt.class */
public final class DataKt {
    public static final /* synthetic */ <T> boolean hasKeyWithValueOfType(Data data, String str) {
        C15149k.m377b(data, "$this$hasKeyWithValueOfType");
        C15149k.m377b(str, Person.KEY_KEY);
        C15149k.m385a(4, ExifInterface.GPS_DIRECTION_TRUE);
        throw null;
    }

    public static final Data workDataOf(C14978j<String, ? extends Object>... jVarArr) {
        C15149k.m377b(jVarArr, "pairs");
        Data.Builder builder = new Data.Builder();
        for (C14978j<String, ? extends Object> jVar : jVarArr) {
            builder.put(jVar.m659c(), jVar.m658d());
        }
        Data build = builder.build();
        C15149k.m383a((Object) build, "dataBuilder.build()");
        return build;
    }
}
