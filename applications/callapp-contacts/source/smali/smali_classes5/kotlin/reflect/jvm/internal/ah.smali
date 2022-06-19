.class public final Lkotlin/reflect/jvm/internal/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0012\u0010\u000e\u001a\u00020\u00042\n\u0010\u000f\u001a\u0006\u0012\u0002\u0008\u00030\u0007J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000c\u001a\u00020\u0014H\u0002J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u0006\u0012\u0002\u0008\u00030\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u001c"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/RuntimeTypeMapper;",
        "",
        "()V",
        "JAVA_LANG_VOID",
        "Lkotlin/reflect/jvm/internal/impl/name/ClassId;",
        "primitiveType",
        "Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;",
        "Ljava/lang/Class;",
        "getPrimitiveType",
        "(Ljava/lang/Class;)Lorg/jetbrains/kotlin/builtins/PrimitiveType;",
        "isKnownBuiltInFunction",
        "",
        "descriptor",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;",
        "mapJvmClassToKotlinClassId",
        "klass",
        "mapJvmFunctionSignature",
        "Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;",
        "mapName",
        "",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;",
        "mapPropertySignature",
        "Lkotlin/reflect/jvm/internal/JvmPropertySignature;",
        "possiblyOverriddenProperty",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;",
        "mapSignature",
        "Lkotlin/reflect/jvm/internal/JvmFunctionSignature;",
        "possiblySubstitutedFunction",
        "kotlin-reflection"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field static final a:Lkotlin/reflect/jvm/internal/impl/c/a;

.field public static final b:Lkotlin/reflect/jvm/internal/ah;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 159
    new-instance v0, Lkotlin/reflect/jvm/internal/ah;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/ah;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/ah;->b:Lkotlin/reflect/jvm/internal/ah;

    .line 160
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v1, "java.lang.Void"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v0

    const-string v1, "ClassId.topLevel(FqName(\"java.lang.Void\"))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/ah;->a:Lkotlin/reflect/jvm/internal/impl/c/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Ljava/lang/String;
    .locals 2

    .line 253
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/x;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 254
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ao;

    const-string v1, "descriptor.propertyIfAccessor.name.asString()"

    if-eqz v0, :cond_0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/t;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 255
    :cond_0
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ap;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/t;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 256
    :cond_1
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object v0

    const-string p0, "descriptor.name.asString()"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method static a(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/builtins/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lkotlin/reflect/jvm/internal/impl/builtins/h;"
        }
    .end annotation

    .line 282
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->get(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    move-result-object p0

    const-string v0, "JvmPrimitiveType.get(simpleName)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->getPrimitiveType()Lkotlin/reflect/jvm/internal/impl/builtins/h;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Z
    .locals 3

    .line 240
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/a/a;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/a$a;

    .line 5031
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/a/a;->b()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v2

    .line 242
    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getValueParameters()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private static c(Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Lkotlin/reflect/jvm/internal/d$e;
    .locals 5

    .line 248
    new-instance v0, Lkotlin/reflect/jvm/internal/d$e;

    .line 249
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/b/c/a/e$b;

    move-object v2, p0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/ah;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p0, v3, v3, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;ZZI)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a/e$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/d$e;-><init>(Lkotlin/reflect/jvm/internal/impl/b/c/a/e$b;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Lkotlin/reflect/jvm/internal/d;
    .locals 6

    const-string v0, "possiblySubstitutedFunction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object v0

    const-string v1, "DescriptorUtils.unwrapFa\u2026siblySubstitutedFunction)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object v0

    const-string v1, "DescriptorUtils.unwrapFa\u2026titutedFunction).original"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/c;

    if-eqz v1, :cond_3

    .line 169
    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/c;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/c;->k()Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v2

    .line 170
    instance-of v3, v2, Lkotlin/reflect/jvm/internal/impl/b/a$h;

    if-eqz v3, :cond_0

    .line 171
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a:Lkotlin/reflect/jvm/internal/impl/b/c/a/h;

    move-object v3, v2

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/a$h;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/c;->ao_()Lkotlin/reflect/jvm/internal/impl/b/b/c;

    move-result-object v4

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/c;->ap_()Lkotlin/reflect/jvm/internal/impl/b/b/g;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a(Lkotlin/reflect/jvm/internal/impl/b/a$h;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/c/a/e$b;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 172
    new-instance p1, Lkotlin/reflect/jvm/internal/d$e;

    invoke-direct {p1, v3}, Lkotlin/reflect/jvm/internal/d$e;-><init>(Lkotlin/reflect/jvm/internal/impl/b/c/a/e$b;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/d;

    return-object p1

    .line 175
    :cond_0
    instance-of v3, v2, Lkotlin/reflect/jvm/internal/impl/b/a$c;

    if-eqz v3, :cond_2

    .line 176
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a:Lkotlin/reflect/jvm/internal/impl/b/c/a/h;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/b/a$c;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/c;->ao_()Lkotlin/reflect/jvm/internal/impl/b/b/c;

    move-result-object v3

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/c;->ap_()Lkotlin/reflect/jvm/internal/impl/b/b/g;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a(Lkotlin/reflect/jvm/internal/impl/b/a$c;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/c/a/e$b;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 177
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object p1

    const-string v0, "possiblySubstitutedFunction.containingDeclaration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/e;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 178
    new-instance p1, Lkotlin/reflect/jvm/internal/d$e;

    invoke-direct {p1, v1}, Lkotlin/reflect/jvm/internal/d$e;-><init>(Lkotlin/reflect/jvm/internal/impl/b/c/a/e$b;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/d;

    return-object p1

    .line 180
    :cond_1
    new-instance p1, Lkotlin/reflect/jvm/internal/d$d;

    invoke-direct {p1, v1}, Lkotlin/reflect/jvm/internal/d$d;-><init>(Lkotlin/reflect/jvm/internal/impl/b/c/a/e$b;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/d;

    return-object p1

    .line 183
    :cond_2
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ah;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Lkotlin/reflect/jvm/internal/d$e;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/d;

    return-object p1

    .line 185
    :cond_3
    instance-of p1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 186
    move-object p1, v0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->getSource()Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    move-result-object p1

    instance-of v2, p1, Lkotlin/reflect/jvm/internal/impl/load/java/c/a;

    if-nez v2, :cond_4

    move-object p1, v1

    :cond_4
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/c/a;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/c/a;->b()Lkotlin/reflect/jvm/internal/impl/load/java/d/l;

    move-result-object p1

    goto :goto_0

    :cond_5
    move-object p1, v1

    :goto_0
    instance-of v2, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/s;

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    move-object v1, p1

    :goto_1
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/s;

    if-eqz v1, :cond_7

    .line 1024
    iget-object p1, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/s;->a:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_7

    .line 189
    new-instance v0, Lkotlin/reflect/jvm/internal/d$c;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/d$c;-><init>(Ljava/lang/reflect/Method;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/d;

    return-object v0

    .line 187
    :cond_7
    new-instance p1, Lkotlin/reflect/jvm/internal/ab;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Incorrect resolution sequence for Java method "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lkotlin/reflect/jvm/internal/ab;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 191
    :cond_8
    instance-of p1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;

    const/16 v2, 0x29

    const-string v3, " ("

    if-eqz p1, :cond_d

    .line 192
    move-object p1, v0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->getSource()Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    move-result-object p1

    instance-of v4, p1, Lkotlin/reflect/jvm/internal/impl/load/java/c/a;

    if-nez v4, :cond_9

    move-object p1, v1

    :cond_9
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/c/a;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/c/a;->b()Lkotlin/reflect/jvm/internal/impl/load/java/d/l;

    move-result-object v1

    .line 194
    :cond_a
    instance-of p1, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/m;

    if-eqz p1, :cond_b

    .line 195
    new-instance p1, Lkotlin/reflect/jvm/internal/d$b;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/m;

    .line 2024
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/m;->a:Ljava/lang/reflect/Constructor;

    .line 195
    invoke-direct {p1, v0}, Lkotlin/reflect/jvm/internal/d$b;-><init>(Ljava/lang/reflect/Constructor;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/d;

    return-object p1

    .line 196
    :cond_b
    instance-of p1, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;

    if-eqz p1, :cond_c

    move-object p1, v1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;

    .line 2117
    iget-object v4, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;->a:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->isAnnotation()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 197
    new-instance v0, Lkotlin/reflect/jvm/internal/d$a;

    .line 3032
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;->a:Ljava/lang/Class;

    .line 197
    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/d$a;-><init>(Ljava/lang/Class;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/d;

    return-object v0

    .line 198
    :cond_c
    new-instance p1, Lkotlin/reflect/jvm/internal/ab;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Incorrect resolution sequence for Java constructor "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lkotlin/reflect/jvm/internal/ab;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 203
    :cond_d
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ah;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 204
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ah;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Lkotlin/reflect/jvm/internal/d$e;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/d;

    return-object p1

    .line 207
    :cond_e
    new-instance p1, Lkotlin/reflect/jvm/internal/ab;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Unknown origin of "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lkotlin/reflect/jvm/internal/ab;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/an;)Lkotlin/reflect/jvm/internal/e;
    .locals 7

    const-string v0, "possiblyOverriddenProperty"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object p1

    const-string v0, "DescriptorUtils.unwrapFa\u2026ssiblyOverriddenProperty)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->d()Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    move-result-object v1

    const-string p1, "DescriptorUtils.unwrapFa\u2026rriddenProperty).original"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    instance-of p1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 214
    move-object p1, v1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;

    .line 3127
    iget-object v2, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->g:Lkotlin/reflect/jvm/internal/impl/b/a$m;

    .line 215
    move-object v3, v2

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/b/c/a;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    const-string v5, "JvmProtoBuf.propertySignature"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lkotlin/reflect/jvm/internal/impl/b/b/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;

    if-eqz v3, :cond_a

    .line 217
    new-instance v6, Lkotlin/reflect/jvm/internal/e$c;

    .line 3128
    iget-object v4, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->h:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 3129
    iget-object v5, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->i:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    move-object v0, v6

    .line 217
    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/e$c;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/an;Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/b/c/a$c;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;)V

    check-cast v6, Lkotlin/reflect/jvm/internal/e;

    return-object v6

    .line 220
    :cond_0
    instance-of p1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/b/g;

    if-eqz p1, :cond_a

    .line 221
    move-object p1, v1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/b/g;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/b/g;->getSource()Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    move-result-object p1

    instance-of v2, p1, Lkotlin/reflect/jvm/internal/impl/load/java/c/a;

    if-nez v2, :cond_1

    move-object p1, v0

    :cond_1
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/c/a;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/c/a;->b()Lkotlin/reflect/jvm/internal/impl/load/java/d/l;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 223
    :goto_0
    instance-of v2, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/p;

    if-eqz v2, :cond_3

    new-instance v0, Lkotlin/reflect/jvm/internal/e$a;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/p;

    .line 4022
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/p;->a:Ljava/lang/reflect/Field;

    .line 223
    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/e$a;-><init>(Ljava/lang/reflect/Field;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/e;

    return-object v0

    .line 224
    :cond_3
    instance-of v2, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/s;

    if-eqz v2, :cond_9

    new-instance v2, Lkotlin/reflect/jvm/internal/e$b;

    .line 225
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/s;

    .line 4024
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/s;->a:Ljava/lang/reflect/Method;

    .line 226
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/ap;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ap;->getSource()Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    instance-of v3, v1, Lkotlin/reflect/jvm/internal/impl/load/java/c/a;

    if-nez v3, :cond_5

    move-object v1, v0

    :cond_5
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/c/a;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/c/a;->b()Lkotlin/reflect/jvm/internal/impl/load/java/d/l;

    move-result-object v1

    goto :goto_2

    :cond_6
    move-object v1, v0

    :goto_2
    instance-of v3, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/s;

    if-nez v3, :cond_7

    move-object v1, v0

    :cond_7
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/s;

    if-eqz v1, :cond_8

    .line 5024
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/s;->a:Ljava/lang/reflect/Method;

    .line 224
    :cond_8
    invoke-direct {v2, p1, v0}, Lkotlin/reflect/jvm/internal/e$b;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    check-cast v2, Lkotlin/reflect/jvm/internal/e;

    return-object v2

    .line 228
    :cond_9
    new-instance v0, Lkotlin/reflect/jvm/internal/ab;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Incorrect resolution sequence for Java field "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (source = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/ab;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 234
    :cond_a
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/ao;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/ah;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Lkotlin/reflect/jvm/internal/d$e;

    move-result-object p1

    .line 235
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/ap;

    move-result-object v1

    if-eqz v1, :cond_b

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/ah;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Lkotlin/reflect/jvm/internal/d$e;

    move-result-object v0

    .line 233
    :cond_b
    new-instance v1, Lkotlin/reflect/jvm/internal/e$d;

    invoke-direct {v1, p1, v0}, Lkotlin/reflect/jvm/internal/e$d;-><init>(Lkotlin/reflect/jvm/internal/d$e;Lkotlin/reflect/jvm/internal/d$e;)V

    check-cast v1, Lkotlin/reflect/jvm/internal/e;

    return-object v1
.end method
