.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w$a;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/reflect/Type;)Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w;
    .locals 3

    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/v;

    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/v;-><init>(Ljava/lang/Class;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w;

    return-object p0

    .line 31
    :cond_0
    instance-of v1, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez v1, :cond_3

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 32
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/z;

    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/z;-><init>(Ljava/lang/reflect/WildcardType;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w;

    return-object v0

    .line 33
    :cond_2
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/l;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/l;-><init>(Ljava/lang/reflect/Type;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w;

    return-object v0

    .line 31
    :cond_3
    :goto_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/i;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/i;-><init>(Ljava/lang/reflect/Type;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w;

    return-object v0
.end method
