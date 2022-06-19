.class public final Lkotlin/reflect/jvm/internal/impl/resolve/e/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/resolve/e/a/d;
.implements Lkotlin/reflect/jvm/internal/impl/resolve/e/a/g;


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

.field private final b:Lkotlin/reflect/jvm/internal/impl/resolve/e/a/c;

.field private final c:Lkotlin/reflect/jvm/internal/impl/descriptors/d;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/resolve/e/a/c;)V
    .locals 1

    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/a/c;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-nez p2, :cond_0

    move-object p2, p0

    .line 38
    :cond_0
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/a/c;->b:Lkotlin/reflect/jvm/internal/impl/resolve/e/a/c;

    .line 42
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/a/c;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    return-void
.end method

.method private c()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 2

    .line 40
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/a/c;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    const-string v1, "classDescriptor.defaultType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 1

    .line 33
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/a/c;->c()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-object v0
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 1

    .line 34
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/a/c;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 44
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/a/c;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/resolve/e/a/c;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/e/a/c;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p1, Lkotlin/reflect/jvm/internal/impl/resolve/e/a/c;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    :goto_1
    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 46
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/a/c;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/a/c;->c()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
