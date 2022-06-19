.class public final Lkotlin/reflect/jvm/internal/e$c;
.super Lkotlin/reflect/jvm/internal/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\u0019\u001a\u00020\u0016H\u0016J\u0008\u0010\u001a\u001a\u00020\u0016H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001b"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/JvmPropertySignature$KotlinProperty;",
        "Lkotlin/reflect/jvm/internal/JvmPropertySignature;",
        "descriptor",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;",
        "proto",
        "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;",
        "signature",
        "Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;",
        "nameResolver",
        "Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;",
        "typeTable",
        "Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;",
        "(Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;Lorg/jetbrains/kotlin/metadata/ProtoBuf$Property;Lorg/jetbrains/kotlin/metadata/jvm/JvmProtoBuf$JvmPropertySignature;Lorg/jetbrains/kotlin/metadata/deserialization/NameResolver;Lorg/jetbrains/kotlin/metadata/deserialization/TypeTable;)V",
        "getDescriptor",
        "()Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;",
        "getNameResolver",
        "()Lorg/jetbrains/kotlin/metadata/deserialization/NameResolver;",
        "getProto",
        "()Lorg/jetbrains/kotlin/metadata/ProtoBuf$Property;",
        "getSignature",
        "()Lorg/jetbrains/kotlin/metadata/jvm/JvmProtoBuf$JvmPropertySignature;",
        "string",
        "",
        "getTypeTable",
        "()Lorg/jetbrains/kotlin/metadata/deserialization/TypeTable;",
        "asString",
        "getManglingSuffix",
        "kotlin-reflection"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final a:Lkotlin/reflect/jvm/internal/impl/descriptors/an;

.field final b:Lkotlin/reflect/jvm/internal/impl/b/a$m;

.field final c:Lkotlin/reflect/jvm/internal/impl/b/c/a$c;

.field final d:Lkotlin/reflect/jvm/internal/impl/b/b/c;

.field final e:Lkotlin/reflect/jvm/internal/impl/b/b/g;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/an;Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/b/c/a$c;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;)V
    .locals 2

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/e;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/e$c;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/e$c;->b:Lkotlin/reflect/jvm/internal/impl/b/a$m;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/e$c;->c:Lkotlin/reflect/jvm/internal/impl/b/c/a$c;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/e$c;->d:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    iput-object p5, p0, Lkotlin/reflect/jvm/internal/e$c;->e:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    .line 107
    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4258
    iget-object p2, p3, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->d:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    const-string p5, "signature.getter"

    .line 108
    invoke-static {p2, p5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5236
    iget p2, p2, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->b:I

    .line 108
    invoke-interface {p4, p2}, Lkotlin/reflect/jvm/internal/impl/b/b/c;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5258
    iget-object p2, p3, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->d:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    .line 108
    invoke-static {p2, p5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5259
    iget p2, p2, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->c:I

    .line 108
    invoke-interface {p4, p2}, Lkotlin/reflect/jvm/internal/impl/b/b/c;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 111
    :cond_0
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a:Lkotlin/reflect/jvm/internal/impl/b/c/a/h;

    invoke-static {p3, p2, p4, p5}, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a/h;Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/c/a/e$a;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 6000
    iget-object p3, p2, Lkotlin/reflect/jvm/internal/impl/b/c/a/e$a;->a:Ljava/lang/String;

    .line 7000
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/b/c/a/e$a;->b:Ljava/lang/String;

    .line 113
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/t;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7117
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object p3

    const-string v0, "descriptor.containingDeclaration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7118
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "$"

    if-eqz v0, :cond_3

    instance-of v0, p3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    if-eqz v0, :cond_3

    .line 7119
    check-cast p3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    .line 8038
    iget-object p1, p3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->a:Lkotlin/reflect/jvm/internal/impl/b/a$b;

    .line 7120
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;

    sget-object p3, Lkotlin/reflect/jvm/internal/impl/b/c/a;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    const-string v0, "JvmProtoBuf.classModuleName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3}, Lkotlin/reflect/jvm/internal/impl/b/b/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-interface {p4, p1}, Lkotlin/reflect/jvm/internal/impl/b/b/c;->a(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    :cond_1
    const-string p1, "main"

    .line 7122
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 7124
    :cond_3
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object p4

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    instance-of p3, p3, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    if-eqz p3, :cond_4

    const-string p3, "null cannot be cast to non-null type org.jetbrains.kotlin.serialization.deserialization.descriptors.DeserializedPropertyDescriptor"

    .line 7125
    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;

    .line 8131
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->j:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;

    .line 7126
    instance-of p3, p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;

    if-eqz p3, :cond_4

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;

    .line 9024
    iget-object p3, p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;->b:Lkotlin/reflect/jvm/internal/impl/resolve/c/c;

    if-eqz p3, :cond_4

    .line 7127
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;->c()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    const-string p1, ""

    .line 113
    :goto_0
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "()"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 107
    :goto_1
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/e$c;->f:Ljava/lang/String;

    return-void

    .line 112
    :cond_5
    new-instance p2, Lkotlin/reflect/jvm/internal/ab;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "No field signature for property: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/ab;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/e$c;->f:Ljava/lang/String;

    return-object v0
.end method
