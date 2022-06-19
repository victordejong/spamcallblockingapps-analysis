.class public final Lkotlin/reflect/jvm/internal/impl/load/java/d;
.super Lkotlin/reflect/jvm/internal/impl/load/java/y;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/load/java/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/d;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/d;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/d;->a:Lkotlin/reflect/jvm/internal/impl/load/java/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/y;-><init>()V

    return-void
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/descriptors/as;)Lkotlin/reflect/jvm/internal/impl/c/e;
    .locals 1

    const-string v0, "functionDescriptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2125
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/y;->f()Ljava/util/Map;

    move-result-object v0

    .line 78
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/c/e;

    return-object p0
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/c/e;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1128
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/y;->g()Ljava/util/List;

    move-result-object v0

    .line 75
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b(Lkotlin/reflect/jvm/internal/impl/c/e;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2130
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/y;->h()Ljava/util/Map;

    move-result-object v0

    .line 88
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    .line 3071
    sget-object p0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p0, Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public static b(Lkotlin/reflect/jvm/internal/impl/descriptors/as;)Z
    .locals 2

    const-string v0, "functionDescriptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/d$a;

    invoke-direct {v1, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/d$a;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/as;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Lkotlin/reflect/jvm/internal/impl/descriptors/as;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "removeAt"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Ljava/lang/String;

    move-result-object p0

    .line 3108
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/y;->e()Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;

    move-result-object v0

    .line 4044
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;->b:Ljava/lang/String;

    .line 92
    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
