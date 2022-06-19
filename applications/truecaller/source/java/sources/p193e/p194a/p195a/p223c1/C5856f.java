package p193e.p194a.p195a.p223c1;

import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.GifEntity;
import com.truecaller.messaging.data.types.VideoEntity;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.a.c1.f */
/* loaded from: classes7-dex2jar.jar:e/a/a/c1/f.class */
public final class C5856f extends m implements l<BinaryEntity, Boolean> {

    /* renamed from: b */
    public final /* synthetic */ C5858h f19601b;

    /* renamed from: c */
    public final /* synthetic */ long f19602c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5856f(C5858h c5858h, long j) {
        super(1);
        this.f19601b = c5858h;
        this.f19602c = j;
    }

    /* renamed from: d */
    public Object m32326d(Object obj) {
        BinaryEntity binaryEntity = (BinaryEntity) obj;
        s1.z.c.l.e(binaryEntity, "it");
        boolean z = true;
        if (!(binaryEntity instanceof VideoEntity) ? !(binaryEntity instanceof GifEntity) || binaryEntity.f13175k <= this.f19602c : this.f19601b.f19606c.mo14090b(((VideoEntity) binaryEntity).f13482x) <= this.f19602c) {
            z = false;
        }
        return Boolean.valueOf(z);
    }
}
