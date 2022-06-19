.class public final Lkotlin/reflect/jvm/internal/impl/builtins/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/builtins/j$a;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/builtins/j;

.field public static final b:Lkotlin/reflect/jvm/internal/impl/c/e;

.field public static final c:Lkotlin/reflect/jvm/internal/impl/c/e;

.field public static final d:Lkotlin/reflect/jvm/internal/impl/c/b;

.field public static final e:Lkotlin/reflect/jvm/internal/impl/c/b;

.field public static final f:Lkotlin/reflect/jvm/internal/impl/c/b;

.field public static final g:Lkotlin/reflect/jvm/internal/impl/c/b;

.field public static final h:Lkotlin/reflect/jvm/internal/impl/c/b;

.field public static final i:Lkotlin/reflect/jvm/internal/impl/c/b;

.field public static final j:Lkotlin/reflect/jvm/internal/impl/c/b;

.field public static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Lkotlin/reflect/jvm/internal/impl/c/e;

.field public static final m:Lkotlin/reflect/jvm/internal/impl/c/b;

.field public static final n:Lkotlin/reflect/jvm/internal/impl/c/b;

.field public static final o:Lkotlin/reflect/jvm/internal/impl/c/b;

.field public static final p:Lkotlin/reflect/jvm/internal/impl/c/b;

.field public static final q:Lkotlin/reflect/jvm/internal/impl/c/b;

.field public static final r:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/j;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/j;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j;->a:Lkotlin/reflect/jvm/internal/impl/builtins/j;

    const-string v0, "values"

    .line 19
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    const-string v1, "identifier(\"values\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j;->b:Lkotlin/reflect/jvm/internal/impl/c/e;

    const-string v0, "valueOf"

    .line 21
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    const-string v1, "identifier(\"valueOf\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j;->c:Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 23
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v1, "kotlin.coroutines"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    .line 25
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j;->d:Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v1, "experimental"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    const-string v2, "COROUTINES_PACKAGE_FQ_NAME_RELEASE.child(Name.identifier(\"experimental\"))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/j;->e:Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v2, "intrinsics"

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/c/b;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v2

    const-string v3, "COROUTINES_PACKAGE_FQ_NAME_EXPERIMENTAL.child(Name.identifier(\"intrinsics\"))"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/j;->f:Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v2, "Continuation"

    .line 29
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v3

    invoke-virtual {v1, v3}, Lkotlin/reflect/jvm/internal/impl/c/b;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    const-string v3, "COROUTINES_PACKAGE_FQ_NAME_EXPERIMENTAL.child(Name.identifier(\"Continuation\"))"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/j;->g:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 31
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    const-string v2, "COROUTINES_PACKAGE_FQ_NAME_RELEASE.child(Name.identifier(\"Continuation\"))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/j;->h:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 33
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v2, "kotlin.Result"

    invoke-direct {v1, v2}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/j;->i:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 35
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v2, "kotlin.reflect"

    invoke-direct {v1, v2}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/j;->j:Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v2, "KProperty"

    const-string v3, "KMutableProperty"

    const-string v4, "KFunction"

    const-string v5, "KSuspendFunction"

    .line 41
    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/a/n;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/j;->k:Ljava/util/List;

    const-string v2, "kotlin"

    .line 44
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v2

    const-string v3, "identifier(\"kotlin\")"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sput-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/j;->l:Lkotlin/reflect/jvm/internal/impl/c/e;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/c/b;->c(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v2

    const-string v3, "topLevel(BUILT_INS_PACKAGE_NAME)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sput-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/j;->m:Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v3, "annotation"

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkotlin/reflect/jvm/internal/impl/c/b;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v3

    const-string v4, "BUILT_INS_PACKAGE_FQ_NAME.child(Name.identifier(\"annotation\"))"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/j;->n:Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v4, "collections"

    .line 53
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v4

    invoke-virtual {v2, v4}, Lkotlin/reflect/jvm/internal/impl/c/b;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v4

    const-string v5, "BUILT_INS_PACKAGE_FQ_NAME.child(Name.identifier(\"collections\"))"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/j;->o:Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v5, "ranges"

    .line 56
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v5

    invoke-virtual {v2, v5}, Lkotlin/reflect/jvm/internal/impl/c/b;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v5

    const-string v6, "BUILT_INS_PACKAGE_FQ_NAME.child(Name.identifier(\"ranges\"))"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v5, Lkotlin/reflect/jvm/internal/impl/builtins/j;->p:Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v6, "text"

    .line 59
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v6

    invoke-virtual {v2, v6}, Lkotlin/reflect/jvm/internal/impl/c/b;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v6

    const-string v7, "BUILT_INS_PACKAGE_FQ_NAME.child(Name.identifier(\"text\"))"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v6, Lkotlin/reflect/jvm/internal/impl/builtins/j;->q:Lkotlin/reflect/jvm/internal/impl/c/b;

    const/4 v6, 0x7

    new-array v6, v6, [Lkotlin/reflect/jvm/internal/impl/c/b;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v4, 0x2

    aput-object v5, v6, v4

    const/4 v4, 0x3

    aput-object v3, v6, v4

    const/4 v3, 0x4

    aput-object v1, v6, v3

    const-string v1, "internal"

    .line 68
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v1

    invoke-virtual {v2, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    const-string v2, "BUILT_INS_PACKAGE_FQ_NAME.child(Name.identifier(\"internal\"))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v6, v2

    const/4 v1, 0x6

    aput-object v0, v6, v1

    .line 62
    invoke-static {v6}, Lkotlin/a/ap;->a([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j;->r:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(I)Ljava/lang/String;
    .locals 1

    .line 212
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "Function"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lkotlin/reflect/jvm/internal/impl/builtins/h;)Lkotlin/reflect/jvm/internal/impl/c/b;
    .locals 1

    const-string v0, "primitiveType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j;->m:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/h;->getTypeName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/c/b;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p0

    const-string v0, "BUILT_INS_PACKAGE_FQ_NAME.child(primitiveType.typeName)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final a(Lkotlin/reflect/jvm/internal/impl/c/c;)Z
    .locals 1

    const-string v0, "arrayFqName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->aE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final b(I)Lkotlin/reflect/jvm/internal/impl/c/a;
    .locals 2

    .line 217
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/a;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/j;->m:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/j;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/c/a;-><init>(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/e;)V

    return-object v0
.end method

.method public static final c(I)Ljava/lang/String;
    .locals 1

    .line 233
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->SuspendFunction:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->getClassNamePrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
