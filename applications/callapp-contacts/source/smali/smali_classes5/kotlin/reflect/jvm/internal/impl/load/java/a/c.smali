.class public final Lkotlin/reflect/jvm/internal/impl/load/java/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/load/java/a/c;

.field private static final b:Lkotlin/reflect/jvm/internal/impl/c/e;

.field private static final c:Lkotlin/reflect/jvm/internal/impl/c/e;

.field private static final d:Lkotlin/reflect/jvm/internal/impl/c/e;

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/a/c;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/a/c;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/a/c;->a:Lkotlin/reflect/jvm/internal/impl/load/java/a/c;

    const-string v0, "message"

    .line 44
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    const-string v1, "identifier(\"message\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/a/c;->b:Lkotlin/reflect/jvm/internal/impl/c/e;

    const-string v0, "allowedTargets"

    .line 45
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    const-string v1, "identifier(\"allowedTargets\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/a/c;->c:Lkotlin/reflect/jvm/internal/impl/c/e;

    const-string v0, "value"

    .line 46
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    const-string v1, "identifier(\"value\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/a/c;->d:Lkotlin/reflect/jvm/internal/impl/c/e;

    const/4 v0, 0x4

    new-array v1, v0, [Lkotlin/n;

    .line 83
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->F:Lkotlin/reflect/jvm/internal/impl/c/b;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/u;->d:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {v2, v3}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 84
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->I:Lkotlin/reflect/jvm/internal/impl/c/b;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/load/java/u;->e:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {v2, v4}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 85
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->J:Lkotlin/reflect/jvm/internal/impl/c/b;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/load/java/u;->h:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {v2, v5}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 86
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->K:Lkotlin/reflect/jvm/internal/impl/c/b;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/u;->g:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {v2, v6}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 82
    invoke-static {v1}, Lkotlin/a/ai;->a([Lkotlin/n;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/a/c;->e:Ljava/util/Map;

    const/4 v1, 0x5

    new-array v1, v1, [Lkotlin/n;

    .line 91
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/u;->d:Lkotlin/reflect/jvm/internal/impl/c/b;

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->F:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {v2, v7}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v2

    aput-object v2, v1, v3

    .line 92
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/u;->e:Lkotlin/reflect/jvm/internal/impl/c/b;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->I:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {v2, v3}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v2

    aput-object v2, v1, v4

    .line 93
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/u;->f:Lkotlin/reflect/jvm/internal/impl/c/b;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->y:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {v2, v3}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v2

    aput-object v2, v1, v5

    .line 94
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/u;->h:Lkotlin/reflect/jvm/internal/impl/c/b;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->J:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {v2, v3}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v2

    aput-object v2, v1, v6

    .line 95
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/u;->g:Lkotlin/reflect/jvm/internal/impl/c/b;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->K:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {v2, v3}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v2

    aput-object v2, v1, v0

    .line 90
    invoke-static {v1}, Lkotlin/a/ai;->a([Lkotlin/n;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/a/c;->f:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/c/e;
    .locals 1

    .line 44
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/a/c;->b:Lkotlin/reflect/jvm/internal/impl/c/e;

    return-object v0
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/load/java/d/a;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;
    .locals 2

    const-string v0, "annotation"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/d/a;->b()Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v0

    .line 54
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/u;->d:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p2, Lkotlin/reflect/jvm/internal/impl/load/java/a/i;

    invoke-direct {p2, p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/a/i;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/d/a;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;)V

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    return-object p2

    .line 55
    :cond_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/u;->e:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p2, Lkotlin/reflect/jvm/internal/impl/load/java/a/h;

    invoke-direct {p2, p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/a/h;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/d/a;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;)V

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    return-object p2

    .line 56
    :cond_1
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/u;->h:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p2, Lkotlin/reflect/jvm/internal/impl/load/java/a/b;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->J:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-direct {p2, p1, p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/a/b;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/a;Lkotlin/reflect/jvm/internal/impl/c/b;)V

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    return-object p2

    .line 57
    :cond_2
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/u;->g:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p2, Lkotlin/reflect/jvm/internal/impl/load/java/a/b;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->K:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-direct {p2, p1, p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/a/b;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/a;Lkotlin/reflect/jvm/internal/impl/c/b;)V

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    return-object p2

    .line 58
    :cond_3
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/u;->f:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_4
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;

    invoke-direct {v0, p1, p0, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/a;Z)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    return-object v0
.end method

.method public static b()Lkotlin/reflect/jvm/internal/impl/c/e;
    .locals 1

    .line 45
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/a/c;->c:Lkotlin/reflect/jvm/internal/impl/c/e;

    return-object v0
.end method

.method public static c()Lkotlin/reflect/jvm/internal/impl/c/e;
    .locals 1

    .line 46
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/a/c;->d:Lkotlin/reflect/jvm/internal/impl/c/e;

    return-object v0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/load/java/d/d;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;
    .locals 2

    const-string v0, "kotlinName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotationOwner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->y:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/u;->f:Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v1, "DEPRECATED_ANNOTATION"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/d/d;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/load/java/d/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/d/d;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    :cond_0
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/java/a/e;

    invoke-direct {p1, v0, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/a/e;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/d/a;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    return-object p1

    .line 73
    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/a/c;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/c/b;

    const/4 v0, 0x0

    if-nez p1, :cond_2

    return-object v0

    .line 74
    :cond_2
    invoke-interface {p2, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/d;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/load/java/d/a;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    const/4 p2, 0x0

    .line 1048
    invoke-static {p1, p3, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/a/c;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/a;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    move-result-object p1

    return-object p1
.end method
