.class public Lkotlin/reflect/jvm/internal/impl/load/java/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;
.implements Lkotlin/reflect/jvm/internal/impl/load/java/b/i;


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final b:Lkotlin/reflect/jvm/internal/impl/c/b;

.field final c:Lkotlin/reflect/jvm/internal/impl/load/java/d/b;

.field private final d:Lkotlin/reflect/jvm/internal/impl/descriptors/at;

.field private final e:Lkotlin/reflect/jvm/internal/impl/f/i;

.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 106
    new-instance v1, Lkotlin/jvm/internal/aa;

    const-class v2, Lkotlin/reflect/jvm/internal/impl/load/java/a/b;

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KDeclarationContainer;

    const-string v3, "type"

    const-string v4, "getType()Lorg/jetbrains/kotlin/types/SimpleType;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/internal/z;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/a/b;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/a;Lkotlin/reflect/jvm/internal/impl/c/b;)V
    .locals 2

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/a/b;->b:Lkotlin/reflect/jvm/internal/impl/c/b;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    move-object v0, p3

    goto :goto_0

    .line 1112
    :cond_0
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 2054
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->j:Lkotlin/reflect/jvm/internal/impl/load/java/c/b;

    .line 104
    move-object v1, p2

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/d/l;

    invoke-interface {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/c/b;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/l;)Lkotlin/reflect/jvm/internal/impl/load/java/c/a;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/at;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    const-string v1, "NO_SOURCE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    :goto_1
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/a/b;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    .line 2127
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 3045
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 106
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/a/b$a;

    invoke-direct {v1, p1, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/a/b$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/a/b;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v1}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/a/b;->e:Lkotlin/reflect/jvm/internal/impl/f/i;

    if-nez p2, :cond_2

    move-object p1, p3

    goto :goto_2

    .line 108
    :cond_2
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/d/a;->a()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/a/n;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/d/b;

    :goto_2
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/a/b;->c:Lkotlin/reflect/jvm/internal/impl/load/java/d/b;

    if-nez p2, :cond_3

    goto :goto_3

    .line 112
    :cond_3
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/d/a;->d()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    :goto_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p3, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/a/b;->f:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 3

    .line 4106
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/a/b;->e:Lkotlin/reflect/jvm/internal/impl/f/i;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/a/b;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/f/m;->a(Lkotlin/reflect/jvm/internal/impl/f/i;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 99
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-object v0
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/c/b;
    .locals 1

    .line 102
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/a/b;->b:Lkotlin/reflect/jvm/internal/impl/c/b;

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
            "*>;>;"
        }
    .end annotation

    .line 110
    invoke-static {}, Lkotlin/a/ai;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lkotlin/reflect/jvm/internal/impl/descriptors/at;
    .locals 1

    .line 104
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/a/b;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/a/b;->f:Z

    return v0
.end method
