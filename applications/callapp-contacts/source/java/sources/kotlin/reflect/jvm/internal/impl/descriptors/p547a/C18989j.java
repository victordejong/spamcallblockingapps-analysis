package kotlin.reflect.jvm.internal.impl.descriptors.p547a;

import java.util.Map;
import kotlin.C18399h;
import kotlin.EnumC18536l;
import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.a.j */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/j.class */
public final class C18989j implements AbstractC18977c {

    /* renamed from: a */
    final AbstractC18940g f64721a;

    /* renamed from: b */
    final C18961b f64722b;

    /* renamed from: c */
    private final Map<C18966e, AbstractC19781g<?>> f64723c;

    /* renamed from: d */
    private final Lazy f64724d = C18399h.m3896a(EnumC18536l.PUBLICATION, new C18990a());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.a.j$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/j$a.class */
    public static final class C18990a extends AbstractC18526r implements Function0<SimpleType> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C18990a() {
            super(0);
            C18989j.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ SimpleType invoke() {
            return C18989j.this.f64721a.m2830a(C18989j.this.f64722b).getDefaultType();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C18989j(AbstractC18940g builtIns, C18961b fqName, Map<C18966e, ? extends AbstractC19781g<?>> allValueArguments) {
        C18524p.m3840d(builtIns, "builtIns");
        C18524p.m3840d(fqName, "fqName");
        C18524p.m3840d(allValueArguments, "allValueArguments");
        this.f64721a = builtIns;
        this.f64722b = fqName;
        this.f64723c = allValueArguments;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c
    /* renamed from: a */
    public final KotlinType mo2043a() {
        Object mo1102a = this.f64724d.mo1102a();
        C18524p.m3843b(mo1102a, "pyright 2010-2017 JetBrains s.r.o.\n *\n * Licensed under the Apache License, Version 2.0 (the \"License\");\n * you may not use this file except in compliance with the License.\n * You may obtain a copy of the License at\n *\n * http://www.apache.org/licenses/LICENSE-2.0\n *\n * Unless required by applicable law or agreed to in writing, software\n * distributed under the License is distributed on an \"AS IS\" BASIS,\n * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n * See the License for the specific language governing permissions and\n * limitations under the License.\n */\n\npackage org.jetbrains.kotlin.descriptors.annotations\n\nimport org.jetbrains.kotlin.builtins.KotlinBuiltIns\nimport org.jetbrains.kotlin.descriptors.SourceElement\nimport org.jetbrains.kotlin.name.FqName\nimport org.jetbrains.kotlin.name.Name\nimport org.jetbrains.kotlin.resolve.constants.ConstantValue\nimport org.jetbrains.kotlin.types.KotlinType\nimport kotlin.LazyThreadSafetyMode.PUBLICATION\n\nclass BuiltInAnnotationDescriptor(\n        private val builtIns: KotlinBuiltIns,\n        override val fqName: FqName,\n        override val allValueArguments: Map<Name, ConstantValue<*>>\n) : AnnotationDescriptor {\n    override val type: KotlinType by lazy(PUBLICATION) {\n        builtIns.getBuiltInClassByFqName(fqName).defaultType\n    }");
        return (KotlinType) mo1102a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c
    /* renamed from: b */
    public final C18961b mo2042b() {
        return this.f64722b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c
    /* renamed from: c */
    public final Map<C18966e, AbstractC19781g<?>> mo2041c() {
        return this.f64723c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c
    /* renamed from: d */
    public final AbstractC19026at mo2040d() {
        AbstractC19026at NO_SOURCE = AbstractC19026at.f64759a;
        C18524p.m3843b(NO_SOURCE, "NO_SOURCE");
        return NO_SOURCE;
    }
}
