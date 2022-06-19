.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlin/reflect/jvm/internal/impl/c/e;

.field private static final b:Lkotlin/reflect/jvm/internal/impl/c/e;

.field private static final c:Lkotlin/reflect/jvm/internal/impl/c/e;

.field private static final d:Lkotlin/reflect/jvm/internal/impl/c/e;

.field private static final e:Lkotlin/reflect/jvm/internal/impl/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "message"

    .line 59
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    const-string v1, "identifier(\"message\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/f;->a:Lkotlin/reflect/jvm/internal/impl/c/e;

    const-string v0, "replaceWith"

    .line 60
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    const-string v1, "identifier(\"replaceWith\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/f;->b:Lkotlin/reflect/jvm/internal/impl/c/e;

    const-string v0, "level"

    .line 61
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    const-string v1, "identifier(\"level\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/f;->c:Lkotlin/reflect/jvm/internal/impl/c/e;

    const-string v0, "expression"

    .line 62
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    const-string v1, "identifier(\"expression\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/f;->d:Lkotlin/reflect/jvm/internal/impl/c/e;

    const-string v0, "imports"

    .line 63
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    const-string v1, "identifier(\"imports\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/f;->e:Lkotlin/reflect/jvm/internal/impl/c/e;

    return-void
.end method

.method public static synthetic a(Lkotlin/reflect/jvm/internal/impl/builtins/g;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;
    .locals 10

    const-string v0, "<this>"

    .line 29
    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    const-string v1, "replaceWith"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "WARNING"

    const-string v2, "level"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1034
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/descriptors/a/j;

    .line 1036
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->B:Lkotlin/reflect/jvm/internal/impl/c/b;

    const/4 v4, 0x2

    new-array v5, v4, [Lkotlin/n;

    .line 1038
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/descriptors/a/f;->d:Lkotlin/reflect/jvm/internal/impl/c/e;

    new-instance v7, Lkotlin/reflect/jvm/internal/impl/resolve/constants/s;

    invoke-direct {v7, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/s;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v0

    const/4 v6, 0x0

    aput-object v0, v5, v6

    .line 1039
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/f;->e:Lkotlin/reflect/jvm/internal/impl/c/e;

    new-instance v7, Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;

    .line 1071
    sget-object v8, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v8, Ljava/util/List;

    .line 1039
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/descriptors/a/f$a;

    invoke-direct {v9, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/f$a;-><init>(Lkotlin/reflect/jvm/internal/impl/builtins/g;)V

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-direct {v7, v8, v9}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0, v7}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v0

    const/4 v7, 0x1

    aput-object v0, v5, v7

    .line 1037
    invoke-static {v5}, Lkotlin/a/ai;->a([Lkotlin/n;)Ljava/util/Map;

    move-result-object v0

    .line 1034
    invoke-direct {v2, p0, v3, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/j;-><init>(Lkotlin/reflect/jvm/internal/impl/builtins/g;Lkotlin/reflect/jvm/internal/impl/c/b;Ljava/util/Map;)V

    .line 1045
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/j;

    .line 1047
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->y:Lkotlin/reflect/jvm/internal/impl/c/b;

    const/4 v5, 0x3

    new-array v5, v5, [Lkotlin/n;

    .line 1049
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/descriptors/a/f;->a:Lkotlin/reflect/jvm/internal/impl/c/e;

    new-instance v9, Lkotlin/reflect/jvm/internal/impl/resolve/constants/s;

    invoke-direct {v9, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/s;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v9}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object p1

    aput-object p1, v5, v6

    .line 1050
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/f;->b:Lkotlin/reflect/jvm/internal/impl/c/e;

    new-instance v6, Lkotlin/reflect/jvm/internal/impl/resolve/constants/a;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    invoke-direct {v6, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/a;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)V

    invoke-static {p1, v6}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object p1

    aput-object p1, v5, v7

    .line 1051
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/f;->c:Lkotlin/reflect/jvm/internal/impl/c/e;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/resolve/constants/j;

    .line 1052
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->A:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v6

    const-string v7, "topLevel(StandardNames.FqNames.deprecationLevel)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1053
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v1

    const-string v7, "identifier(level)"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1051
    invoke-direct {v2, v6, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/j;-><init>(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/e;)V

    invoke-static {p1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object p1

    aput-object p1, v5, v4

    .line 1048
    invoke-static {v5}, Lkotlin/a/ai;->a([Lkotlin/n;)Ljava/util/Map;

    move-result-object p1

    .line 1045
    invoke-direct {v0, p0, v3, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/j;-><init>(Lkotlin/reflect/jvm/internal/impl/builtins/g;Lkotlin/reflect/jvm/internal/impl/c/b;Ljava/util/Map;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    return-object v0
.end method
