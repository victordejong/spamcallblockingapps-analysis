.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/be;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/descriptors/be$e;,
        Lkotlin/reflect/jvm/internal/impl/descriptors/be$f;,
        Lkotlin/reflect/jvm/internal/impl/descriptors/be$g;,
        Lkotlin/reflect/jvm/internal/impl/descriptors/be$b;,
        Lkotlin/reflect/jvm/internal/impl/descriptors/be$h;,
        Lkotlin/reflect/jvm/internal/impl/descriptors/be$d;,
        Lkotlin/reflect/jvm/internal/impl/descriptors/be$a;,
        Lkotlin/reflect/jvm/internal/impl/descriptors/be$c;,
        Lkotlin/reflect/jvm/internal/impl/descriptors/be$i;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/descriptors/be;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/bf;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lkotlin/reflect/jvm/internal/impl/descriptors/be$h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/be;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/be;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/be;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/be;

    .line 1049
    new-instance v0, Lkotlin/a/a/c;

    invoke-direct {v0}, Lkotlin/a/a/c;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 57
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/be$f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/be$f;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/be$e;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/be$e;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/be$b;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/be$b;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/be$g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/be$g;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/be$h;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/be$h;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "builder"

    .line 56
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1063
    check-cast v0, Lkotlin/a/a/c;

    .line 2040
    invoke-virtual {v0}, Lkotlin/a/a/c;->a()V

    .line 2041
    iput-boolean v2, v0, Lkotlin/a/a/c;->a:Z

    .line 2042
    check-cast v0, Ljava/util/Map;

    .line 56
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/be;->b:Ljava/util/Map;

    .line 88
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/be$h;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/be$h;

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/be;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/be$h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/descriptors/bf;Lkotlin/reflect/jvm/internal/impl/descriptors/bf;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "first"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "second"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    .line 76
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 77
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/be;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 78
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 79
    invoke-static {p0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/descriptors/bf;)Z
    .locals 1

    const-string v0, "visibility"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/be$e;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/be$e;

    if-eq p0, v0, :cond_1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/be$f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/be$f;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
