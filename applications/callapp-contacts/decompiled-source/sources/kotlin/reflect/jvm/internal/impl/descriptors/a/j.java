package kotlin.reflect.jvm.internal.impl.descriptors.a;

import java.util.Map;
import kotlin.Lazy;
import kotlin.h;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.l;
import kotlin.reflect.jvm.internal.impl.builtins.g;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/j.class */
public final class j implements c {

    /* renamed from: a  reason: collision with root package name */
    final g f37365a;

    /* renamed from: b  reason: collision with root package name */
    final b f37366b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<e, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> f37367c;

    /* renamed from: d  reason: collision with root package name */
    private final Lazy f37368d = h.a(l.PUBLICATION, new a());

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/j$a.class */
    static final class a extends r implements Function0<SimpleType> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ SimpleType invoke() {
            return j.this.f37365a.a(j.this.f37366b).getDefaultType();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public j(g builtIns, b fqName, Map<e, ? extends kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> allValueArguments) {
        p.d(builtIns, "builtIns");
        p.d(fqName, "fqName");
        p.d(allValueArguments, "allValueArguments");
        this.f37365a = builtIns;
        this.f37366b = fqName;
        this.f37367c = allValueArguments;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.c
    public final KotlinType a() {
        Object a2 = this.f37368d.a();
        p.b(a2, "pyright 2010-2017 JetBrains s.r.o.\n *\n * Licensed under the Apache License, Version 2.0 (the \"License\");\n * you may not use this file except in compliance with the License.\n * You may obtain a copy of the License at\n *\n * http://www.apache.org/licenses/LICENSE-2.0\n *\n * Unless required by applicable law or agreed to in writing, software\n * distributed under the License is distributed on an \"AS IS\" BASIS,\n * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n * See the License for the specific language governing permissions and\n * limitations under the License.\n */\n\npackage org.jetbrains.kotlin.descriptors.annotations\n\nimport org.jetbrains.kotlin.builtins.KotlinBuiltIns\nimport org.jetbrains.kotlin.descriptors.SourceElement\nimport org.jetbrains.kotlin.name.FqName\nimport org.jetbrains.kotlin.name.Name\nimport org.jetbrains.kotlin.resolve.constants.ConstantValue\nimport org.jetbrains.kotlin.types.KotlinType\nimport kotlin.LazyThreadSafetyMode.PUBLICATION\n\nclass BuiltInAnnotationDescriptor(\n        private val builtIns: KotlinBuiltIns,\n        override val fqName: FqName,\n        override val allValueArguments: Map<Name, ConstantValue<*>>\n) : AnnotationDescriptor {\n    override val type: KotlinType by lazy(PUBLICATION) {\n        builtIns.getBuiltInClassByFqName(fqName).defaultType\n    }");
        return (KotlinType) a2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.c
    public final b b() {
        return this.f37366b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.c
    public final Map<e, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> c() {
        return this.f37367c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.c
    public final at d() {
        at NO_SOURCE = at.f37401a;
        p.b(NO_SOURCE, "NO_SOURCE");
        return NO_SOURCE;
    }
}
