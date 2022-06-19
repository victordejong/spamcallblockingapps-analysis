package com.truecaller.common.network.optout;

import androidx.annotation.Keep;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.common.network.util.KnownEndpoints;
import java.util.List;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p394b.p395a.C8367d;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
import x3.b;
import x3.h0.f;
import x3.h0.o;
import x3.h0.s;
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/network/optout/OptOutRestAdapter.class */
public final class OptOutRestAdapter {

    /* renamed from: a */
    public static final g f10916a = C25225a.m3978P1(C3682b.f10917b);

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0007\u0018��2\u00020\u0001B+\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000f\u0010\u0010R\u001f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u001f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0005\u001a\u0004\b\t\u0010\u0007R\u0019\u0010\u000b\u001a\u00020\n8\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/truecaller/common/network/optout/OptOutRestAdapter$OptOutsDto;", "", "", "", "optIns", "Ljava/util/List;", "getOptIns", "()Ljava/util/List;", "optOuts", "getOptOuts", "", "consentRefresh", "Z", "getConsentRefresh", "()Z", "<init>", "(Ljava/util/List;Ljava/util/List;Z)V", "common_release"}, k = 1, mv = {1, 4, 1})
    @Keep
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/network/optout/OptOutRestAdapter$OptOutsDto.class */
    public static final class OptOutsDto {
        private final boolean consentRefresh;
        private final List<String> optIns;
        private final List<String> optOuts;

        public OptOutsDto(List<String> list, List<String> list2, boolean z) {
            l.e(list, "optOuts");
            l.e(list2, "optIns");
            this.optOuts = list;
            this.optIns = list2;
            this.consentRefresh = z;
        }

        public final boolean getConsentRefresh() {
            return this.consentRefresh;
        }

        public final List<String> getOptIns() {
            return this.optIns;
        }

        public final List<String> getOptOuts() {
            return this.optOuts;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"�� \n��\n\u0002\u0010��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bb\u0018��2\u00020\u0001J\u001f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0001\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0001\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b\b\u0010\u0007J\u0015\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u0004H'¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"com/truecaller/common/network/optout/OptOutRestAdapter$a", "", "", "type", "Lx3/b;", "Ljava/lang/Void;", C22021b.f61237c, "(Ljava/lang/String;)Lx3/b;", AbstractC2405c.f7629a, "Lcom/truecaller/common/network/optout/OptOutRestAdapter$OptOutsDto;", "a", "()Lx3/b;", "common_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.truecaller.common.network.optout.OptOutRestAdapter$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/network/optout/OptOutRestAdapter$a.class */
    public interface AbstractC3681a {
        @f("/v1/optouts")
        /* renamed from: a */
        b<OptOutsDto> m35730a();

        @o("/v1/optout/{type}")
        /* renamed from: b */
        b<Void> m35729b(@s("type") String str);

        @x3.h0.b("/v1/optout/{type}")
        /* renamed from: c */
        b<Void> m35728c(@s("type") String str);
    }

    /* renamed from: com.truecaller.common.network.optout.OptOutRestAdapter$b */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/network/optout/OptOutRestAdapter$b.class */
    public static final class C3682b extends m implements a<AbstractC3681a> {

        /* renamed from: b */
        public static final C3682b f10917b = new C3682b();

        public C3682b() {
            super(0);
        }

        public Object invoke() {
            return (AbstractC3681a) C8367d.m28633a(KnownEndpoints.OPTOUT, AbstractC3681a.class);
        }
    }
}
