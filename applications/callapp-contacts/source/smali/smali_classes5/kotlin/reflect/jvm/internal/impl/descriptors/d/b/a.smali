.class final Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/a$a;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/a;

.field private static b:Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/reflect/Member;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "member"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/a;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/a$a;

    if-nez v0, :cond_0

    .line 94
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/a;->b(Ljava/lang/reflect/Member;)Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/a$a;

    move-result-object v0

    .line 95
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/a;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/a$a;

    .line 1072
    :cond_0
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/a$a;->a:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    .line 2072
    :cond_1
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/a$a;->b:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    return-object v2

    :cond_2
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 101
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<*>"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    array-length v3, p0

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 108
    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, p0, v4

    new-array v6, v2, [Ljava/lang/Object;

    .line 102
    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 110
    :cond_3
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method private static b(Ljava/lang/reflect/Member;)Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/a$a;
    .locals 4

    const-string v0, "member"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :try_start_0
    const-string v0, "getParameters"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 81
    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/b;->a(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v2, "java.lang.reflect.Parameter"

    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 88
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/a$a;

    new-array v1, v1, [Ljava/lang/Class;

    const-string v3, "getName"

    invoke-virtual {p0, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/a$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-object v2

    .line 83
    :catch_0
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/a$a;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/a$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-object p0
.end method
