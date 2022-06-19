.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/d$a;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/d;
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/b;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/o;

    check-cast p0, Ljava/lang/Enum;

    invoke-direct {v0, p1, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/o;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/lang/Enum;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/d;

    return-object v0

    .line 30
    :cond_0
    instance-of v0, p0, Ljava/lang/annotation/Annotation;

    if-eqz v0, :cond_1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/e;

    check-cast p0, Ljava/lang/annotation/Annotation;

    invoke-direct {v0, p1, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/e;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/lang/annotation/Annotation;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/d;

    return-object v0

    .line 31
    :cond_1
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/h;

    check-cast p0, [Ljava/lang/Object;

    invoke-direct {v0, p1, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/h;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;[Ljava/lang/Object;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/d;

    return-object v0

    .line 32
    :cond_2
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/k;

    check-cast p0, Ljava/lang/Class;

    invoke-direct {v0, p1, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/k;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/lang/Class;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/d;

    return-object v0

    .line 33
    :cond_3
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/q;

    invoke-direct {v0, p1, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/q;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/lang/Object;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/d;

    return-object v0
.end method
