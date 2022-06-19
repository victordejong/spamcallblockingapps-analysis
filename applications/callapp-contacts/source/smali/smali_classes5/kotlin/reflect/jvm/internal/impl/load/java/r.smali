.class public final Lkotlin/reflect/jvm/internal/impl/load/java/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

.field public static final b:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

.field public static final c:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/bf;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/r$1;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/c/a$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/c/a$a;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/r$1;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/bf;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/r;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    .line 42
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/r$2;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/c/a$c;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/c/a$c;

    invoke-direct {v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/r$2;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/bf;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/r;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    .line 50
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/r$3;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/c/a$b;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/c/a$b;

    invoke-direct {v2, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/r$3;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/bf;)V

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/r;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    .line 76
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/r;->d:Ljava/util/Map;

    .line 83
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/r;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/s;)V

    .line 84
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/r;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/s;)V

    .line 85
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/load/java/r;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/s;)V

    return-void
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/descriptors/bf;)Lkotlin/reflect/jvm/internal/impl/descriptors/s;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/r;->a(I)V

    .line 90
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/r;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    if-nez v0, :cond_2

    .line 92
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/bf;)Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/r;->a(I)V

    :cond_1
    return-object p0

    :cond_2
    if-nez v0, :cond_3

    const/4 p0, 0x6

    .line 94
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/r;->a(I)V

    :cond_3
    return-object v0
.end method

.method private static synthetic a(I)V
    .locals 9

    const/4 v0, 0x6

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v5, 0x3

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    :goto_1
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities"

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_0

    const-string v8, "what"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_0
    aput-object v6, v5, v7

    goto :goto_2

    :pswitch_1
    const-string v8, "visibility"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_2
    const-string v8, "second"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_3
    const-string v8, "first"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_4
    const-string v8, "from"

    aput-object v8, v5, v7

    :goto_2
    const-string v7, "toDescriptorVisibility"

    const/4 v8, 0x1

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_2

    aput-object v6, v5, v8

    goto :goto_3

    :cond_2
    aput-object v7, v5, v8

    :goto_3
    if-eq p0, v4, :cond_4

    if-eq p0, v3, :cond_4

    const/4 v3, 0x4

    if-eq p0, v3, :cond_3

    if-eq p0, v1, :cond_5

    if-eq p0, v0, :cond_5

    const-string v3, "isVisibleForProtectedAndPackage"

    aput-object v3, v5, v4

    goto :goto_4

    :cond_3
    aput-object v7, v5, v4

    goto :goto_4

    :cond_4
    const-string v3, "areInSamePackage"

    aput-object v3, v5, v4

    :cond_5
    :goto_4
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_6

    if-eq p0, v0, :cond_6

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/descriptors/s;)V
    .locals 2

    .line 79
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/r;->d:Ljava/util/Map;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/s;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/bf;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/r;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/resolve/e/a/e;Lkotlin/reflect/jvm/internal/impl/descriptors/o;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 29
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/r;->a(I)V

    :cond_0
    const/4 v0, 0x1

    if-nez p2, :cond_1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/r;->a(I)V

    .line 1062
    :cond_1
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/o;)Lkotlin/reflect/jvm/internal/impl/descriptors/o;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/r;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 1066
    :cond_2
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    invoke-virtual {v0, p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/s;->a(Lkotlin/reflect/jvm/internal/impl/resolve/e/a/e;Lkotlin/reflect/jvm/internal/impl/descriptors/o;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result p0

    return p0
.end method

.method private static b(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/r;->a(I)V

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/r;->a(I)V

    .line 70
    :cond_1
    const-class v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/lang/Class;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    .line 71
    const-class v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    invoke-static {p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/lang/Class;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    .line 72
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;->c()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p0

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;->c()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/c/b;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method
