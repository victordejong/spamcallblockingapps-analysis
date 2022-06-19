.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/h;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/ab;


# instance fields
.field final a:Lkotlin/reflect/jvm/internal/impl/f/n;

.field b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/r;

.field c:Lkotlin/reflect/jvm/internal/impl/descriptors/af;

.field private final d:Lkotlin/reflect/jvm/internal/impl/builtins/g;

.field private final e:Lkotlin/reflect/jvm/internal/impl/d/b;

.field private final f:Lkotlin/reflect/jvm/internal/impl/c/e;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/aa<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private final i:Lkotlin/reflect/jvm/internal/impl/f/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/g<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/aj;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/builtins/g;Lkotlin/reflect/jvm/internal/impl/d/b;)V
    .locals 10

    const-string v0, "moduleName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builtIns"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/builtins/g;Lkotlin/reflect/jvm/internal/impl/d/b;Ljava/util/Map;Lkotlin/reflect/jvm/internal/impl/c/e;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/builtins/g;Lkotlin/reflect/jvm/internal/impl/d/b;Ljava/util/Map;Lkotlin/reflect/jvm/internal/impl/c/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Lkotlin/reflect/jvm/internal/impl/f/n;",
            "Lkotlin/reflect/jvm/internal/impl/builtins/g;",
            "Lkotlin/reflect/jvm/internal/impl/d/b;",
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/aa<",
            "*>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ")V"
        }
    .end annotation

    const-string v0, "moduleName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builtIns"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "capabilities"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/h;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/c/e;)V

    .line 33
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 34
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->d:Lkotlin/reflect/jvm/internal/impl/builtins/g;

    .line 36
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->e:Lkotlin/reflect/jvm/internal/impl/d/b;

    .line 38
    iput-object p6, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->f:Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 1045
    iget-boolean p3, p1, Lkotlin/reflect/jvm/internal/impl/c/e;->a:Z

    if-eqz p3, :cond_0

    .line 46
    invoke-static {p5}, Lkotlin/a/ai;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->g:Ljava/util/Map;

    .line 48
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefinerKt;->getREFINER_CAPABILITY()Lkotlin/reflect/jvm/internal/impl/descriptors/aa;

    move-result-object p3

    new-instance p4, Lkotlin/reflect/jvm/internal/impl/types/checker/Ref;

    const/4 p5, 0x0

    invoke-direct {p4, p5}, Lkotlin/reflect/jvm/internal/impl/types/checker/Ref;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->h:Z

    .line 66
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t$b;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t$b;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, p1}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/f/g;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->i:Lkotlin/reflect/jvm/internal/impl/f/g;

    .line 93
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t$a;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t$a;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->j:Lkotlin/Lazy;

    return-void

    .line 44
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Module name must be special: "

    invoke-static {p3, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/builtins/g;Lkotlin/reflect/jvm/internal/impl/d/b;Ljava/util/Map;Lkotlin/reflect/jvm/internal/impl/c/e;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, p4

    :goto_0
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_1

    .line 37
    invoke-static {}, Lkotlin/a/ai;->a()Ljava/util/Map;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object v7, p5

    :goto_1
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_2

    move-object v8, v1

    goto :goto_2

    :cond_2
    move-object v8, p6

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 31
    invoke-direct/range {v2 .. v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/builtins/g;Lkotlin/reflect/jvm/internal/impl/d/b;Ljava/util/Map;Lkotlin/reflect/jvm/internal/impl/c/e;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;",
            ">;)V"
        }
    .end annotation

    const-string v0, "descriptors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2036
    sget-object v0, Lkotlin/a/ab;->a:Lkotlin/a/ab;

    check-cast v0, Ljava/util/Set;

    .line 120
    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->a(Ljava/util/List;Ljava/util/Set;)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;",
            ">;",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;",
            ">;)V"
        }
    .end annotation

    const-string v0, "descriptors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "friends"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/s;

    .line 2071
    sget-object v1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v1, Ljava/util/List;

    .line 3036
    sget-object v2, Lkotlin/a/ab;->a:Lkotlin/a/ab;

    check-cast v2, Ljava/util/Set;

    .line 124
    invoke-direct {v0, p1, p2, v1, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/s;-><init>(Ljava/util/List;Ljava/util/Set;Ljava/util/List;Ljava/util/Set;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/r;

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/r;)V

    return-void
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/r;)V
    .locals 2

    const-string v0, "dependencies"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/r;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-boolean v1, Lkotlin/x;->a:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Dependencies of "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " were already set"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 112
    :cond_2
    :goto_1
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/r;

    return-void
.end method

.method private d()V
    .locals 2

    .line 1058
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 62
    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/InvalidModuleException;

    const-string v1, "Accessing invalid module descriptor "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/InvalidModuleException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final e()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/g;
    .locals 1

    .line 93
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->j:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/g;

    return-object v0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/af;)V
    .locals 2

    const-string v0, "providerForModuleContent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sget-boolean v1, Lkotlin/x;->a:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Attempt to initialize module "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " twice"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 144
    :cond_1
    :goto_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/af;

    return-void
.end method

.method public final varargs a([Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;)V
    .locals 1

    const-string v0, "descriptors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-static {p1}, Lkotlin/a/i;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->a(Ljava/util/List;)V

    return-void
.end method

.method final a()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/af;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final accept(Lkotlin/reflect/jvm/internal/impl/descriptors/m;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/m<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    const-string v0, "this"

    .line 31
    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visitor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4041
    invoke-interface {p1, p0, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/m;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final b()Ljava/lang/String;
    .locals 2

    .line 137
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c()Lkotlin/reflect/jvm/internal/impl/descriptors/af;
    .locals 1

    .line 149
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->d()V

    .line 150
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->e()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/g;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/af;

    return-object v0
.end method

.method public final getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/g;
    .locals 1

    .line 34
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->d:Lkotlin/reflect/jvm/internal/impl/builtins/g;

    return-object v0
.end method

.method public final getCapability(Lkotlin/reflect/jvm/internal/impl/descriptors/aa;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/aa<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "capability"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;
    .locals 2

    .line 31
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    const-string v1, "this"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getExpectedByModules()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ab;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/r;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/r;->c()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dependencies of module "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " were not set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final getPackage(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/aj;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->d()V

    .line 85
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->i:Lkotlin/reflect/jvm/internal/impl/f/g;

    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/f/g;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/aj;

    return-object p1
.end method

.method public final getSubPackagesOf(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ">;"
        }
    .end annotation

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->d()V

    .line 90
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/af;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/af;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final shouldSeeInternalsOf(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;)Z
    .locals 2

    const-string v0, "targetModule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-static {p0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 129
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/r;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/r;->b()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 130
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->getExpectedByModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 131
    :cond_2
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ab;->getExpectedByModules()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
