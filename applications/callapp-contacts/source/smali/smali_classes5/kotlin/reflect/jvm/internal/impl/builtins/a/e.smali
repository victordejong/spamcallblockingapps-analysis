.class public final Lkotlin/reflect/jvm/internal/impl/builtins/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/builtins/a/e$a;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/builtins/a/e$a;

.field static final synthetic b:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lkotlin/reflect/jvm/internal/impl/c/b;

.field private static final g:Lkotlin/reflect/jvm/internal/impl/c/e;

.field private static final h:Lkotlin/reflect/jvm/internal/impl/c/a;


# instance fields
.field private final c:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

.field private final d:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ab;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/k;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lkotlin/reflect/jvm/internal/impl/f/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/e;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/e$a;

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 26
    new-instance v1, Lkotlin/jvm/internal/aa;

    const-class v2, Lkotlin/reflect/jvm/internal/impl/builtins/a/e;

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KDeclarationContainer;

    const-string v3, "cloneable"

    const-string v4, "getCloneable()Lorg/jetbrains/kotlin/descriptors/impl/ClassDescriptorImpl;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/internal/z;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/e;->b:[Lkotlin/reflect/KProperty;

    .line 52
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j;->m:Lkotlin/reflect/jvm/internal/impl/c/b;

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/e;->f:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 53
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->d:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/c;->e()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    const-string v1, "cloneable.shortName()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/e;->g:Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 54
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->d:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/c;->c()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v0

    const-string v1, "topLevel(StandardNames.FqNames.cloneable.toSafe())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/e;->h:Lkotlin/reflect/jvm/internal/impl/c/a;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/f/n;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ab;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ab;",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/k;",
            ">;)V"
        }
    .end annotation

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleDescriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "computeContainingDeclaration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/e;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    .line 22
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/e;->d:Lkotlin/jvm/functions/Function1;

    .line 26
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/builtins/a/e$b;

    invoke-direct {p2, p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/e$b;-><init>(Lkotlin/reflect/jvm/internal/impl/builtins/a/e;Lkotlin/reflect/jvm/internal/impl/f/n;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/e;->e:Lkotlin/reflect/jvm/internal/impl/f/i;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 22
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/builtins/a/e$1;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/e$1;

    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 19
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/builtins/a/e;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/builtins/a/e;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 19
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/e;->d:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic a()Lkotlin/reflect/jvm/internal/impl/c/b;
    .locals 1

    .line 19
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/e;->f:Lkotlin/reflect/jvm/internal/impl/c/b;

    return-object v0
.end method

.method public static final synthetic b()Lkotlin/reflect/jvm/internal/impl/c/a;
    .locals 1

    .line 19
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/e;->h:Lkotlin/reflect/jvm/internal/impl/c/a;

    return-object v0
.end method

.method public static final synthetic b(Lkotlin/reflect/jvm/internal/impl/builtins/a/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/ab;
    .locals 0

    .line 19
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/e;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    return-object p0
.end method

.method public static final synthetic c()Lkotlin/reflect/jvm/internal/impl/c/e;
    .locals 1

    .line 19
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/e;->g:Lkotlin/reflect/jvm/internal/impl/c/e;

    return-object v0
.end method

.method private final d()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/f;
    .locals 3

    .line 26
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/e;->e:Lkotlin/reflect/jvm/internal/impl/f/i;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/e;->b:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/f/m;->a(Lkotlin/reflect/jvm/internal/impl/f/i;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/f;

    return-object v0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/c/b;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ")",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            ">;"
        }
    .end annotation

    const-string v0, "packageFqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/e;->f:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/e;->d()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/f;

    move-result-object p1

    invoke-static {p1}, Lkotlin/a/ap;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1

    .line 2036
    :cond_0
    sget-object p1, Lkotlin/a/ab;->a:Lkotlin/a/ab;

    check-cast p1, Ljava/util/Set;

    .line 48
    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 1

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2019
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/e;->h:Lkotlin/reflect/jvm/internal/impl/c/a;

    .line 41
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/e;->d()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/f;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/e;)Z
    .locals 1

    const-string v0, "packageFqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/e;->g:Lkotlin/reflect/jvm/internal/impl/c/e;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lkotlin/reflect/jvm/internal/impl/builtins/a/e;->f:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
