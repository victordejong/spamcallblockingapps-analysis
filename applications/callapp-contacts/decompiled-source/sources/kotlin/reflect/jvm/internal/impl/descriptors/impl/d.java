package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.c;
import kotlin.reflect.jvm.internal.impl.descriptors.j;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.m;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/d.class */
public class d extends FunctionDescriptorImpl implements c {

    /* renamed from: b  reason: collision with root package name */
    static final /* synthetic */ boolean f37534b = true;

    /* renamed from: c  reason: collision with root package name */
    private static final e f37535c = e.c("<init>");

    /* renamed from: a  reason: collision with root package name */
    protected final boolean f37536a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, j jVar, g gVar, boolean z, b.a aVar, at atVar) {
        super(dVar, jVar, gVar, f37535c, aVar, atVar);
        if (dVar == null) {
            a(0);
        }
        if (gVar == null) {
            a(1);
        }
        if (aVar == null) {
            a(2);
        }
        if (atVar == null) {
            a(3);
        }
        this.f37536a = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public c copy(k kVar, y yVar, s sVar, b.a aVar, boolean z) {
        c cVar = (c) super.copy(kVar, yVar, sVar, aVar, z);
        if (cVar == null) {
            a(25);
        }
        return cVar;
    }

    public static d a(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, g gVar, at atVar) {
        if (gVar == null) {
            a(5);
        }
        if (atVar == null) {
            a(6);
        }
        return new d(dVar, null, gVar, true, b.a.DECLARATION, atVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x024c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static /* synthetic */ void a(int r4) {
        /*
            Method dump skipped, instructions count: 611
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.impl.d.a(int):void");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.c
    /* renamed from: a */
    public final c getOriginal() {
        c cVar = (c) super.getOriginal();
        if (cVar == null) {
            a(17);
        }
        return cVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.c
    /* renamed from: a */
    public final c substitute2(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            a(18);
        }
        return (c) super.substitute(typeSubstitutor);
    }

    public final d a(List<ba> list, s sVar) {
        if (list == null) {
            a(13);
        }
        if (sVar == null) {
            a(14);
        }
        a(list, sVar, getContainingDeclaration().getDeclaredTypeParameters());
        return this;
    }

    public final d a(List<ba> list, s sVar, List<TypeParameterDescriptor> list2) {
        aq aqVar;
        if (list == null) {
            a(10);
        }
        if (sVar == null) {
            a(11);
        }
        if (list2 == null) {
            a(12);
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d e = getContainingDeclaration();
        if (e.isInner()) {
            k containingDeclaration = e.getContainingDeclaration();
            if (containingDeclaration instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
                aqVar = ((kotlin.reflect.jvm.internal.impl.descriptors.d) containingDeclaration).getThisAsReceiverParameter();
                super.initialize(null, aqVar, list2, list, null, y.FINAL, sVar);
                return this;
            }
        }
        aqVar = null;
        super.initialize(null, aqVar, list2, list, null, y.FINAL, sVar);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public d createSubstitutedCopy(k kVar, w wVar, b.a aVar, e eVar, g gVar, at atVar) {
        if (kVar == null) {
            a(21);
        }
        if (aVar == null) {
            a(22);
        }
        if (gVar == null) {
            a(23);
        }
        if (atVar == null) {
            a(24);
        }
        if (aVar != b.a.DECLARATION && aVar != b.a.SYNTHESIZED) {
            throw new IllegalStateException("Attempt at creating a constructor that is not a declaration: \ncopy from: " + this + "\nnewOwner: " + kVar + "\nkind: " + aVar);
        } else if (f37534b || eVar == null) {
            return new d((kotlin.reflect.jvm.internal.impl.descriptors.d) kVar, this, gVar, this.f37536a, b.a.DECLARATION, atVar);
        } else {
            throw new AssertionError("Attempt to rename constructor: ".concat(String.valueOf(this)));
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.k
    public <R, D> R accept(m<R, D> mVar, D d2) {
        return mVar.a((j) this, (d) d2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.j
    public final kotlin.reflect.jvm.internal.impl.descriptors.d c() {
        kotlin.reflect.jvm.internal.impl.descriptors.d e = getContainingDeclaration();
        if (e == null) {
            a(16);
        }
        return e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.j
    public final boolean d() {
        return this.f37536a;
    }

    /* renamed from: e */
    public final kotlin.reflect.jvm.internal.impl.descriptors.d getContainingDeclaration() {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) super.getContainingDeclaration();
        if (dVar == null) {
            a(15);
        }
        return dVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.w, kotlin.reflect.jvm.internal.impl.descriptors.b, kotlin.reflect.jvm.internal.impl.descriptors.a
    public Collection<? extends w> getOverriddenDescriptors() {
        Set emptySet = Collections.emptySet();
        if (emptySet == null) {
            a(19);
        }
        return emptySet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.b
    public void setOverriddenDescriptors(Collection<? extends b> collection) {
        if (collection == null) {
            a(20);
        }
        if (!f37534b && !collection.isEmpty()) {
            throw new AssertionError("Constructors cannot override anything");
        }
    }
}
