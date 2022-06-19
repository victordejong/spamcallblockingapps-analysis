.class public final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;


# instance fields
.field private final b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

.field private final c:Lkotlin/reflect/jvm/internal/impl/load/java/d/d;

.field private final d:Z

.field private final e:Lkotlin/reflect/jvm/internal/impl/f/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/h<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/d/a;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/d;Z)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotationOwner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 28
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d;->c:Lkotlin/reflect/jvm/internal/impl/load/java/d/d;

    .line 29
    iput-boolean p3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d;->d:Z

    .line 1112
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 2045
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 31
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d$a;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/f/n;->b(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/f/h;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d;->e:Lkotlin/reflect/jvm/internal/impl/f/h;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/d;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 26
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/d;Z)V

    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;
    .locals 0

    .line 26
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    return-object p0
.end method

.method public static final synthetic b(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d;->d:Z

    return p0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;
    .locals 3

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d;->c:Lkotlin/reflect/jvm/internal/impl/load/java/d/d;

    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/d;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/load/java/d/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d;->e:Lkotlin/reflect/jvm/internal/impl/f/h;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    :goto_0
    if-nez v0, :cond_1

    .line 37
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/a/c;->a:Lkotlin/reflect/jvm/internal/impl/load/java/a/c;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d;->c:Lkotlin/reflect/jvm/internal/impl/load/java/d/d;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    invoke-virtual {v0, p1, v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/a/c;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/load/java/d/d;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public final a()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d;->c:Lkotlin/reflect/jvm/internal/impl/load/java/d/d;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/d/d;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d;->c:Lkotlin/reflect/jvm/internal/impl/load/java/d/d;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/d/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lkotlin/reflect/jvm/internal/impl/c/b;)Z
    .locals 0

    .line 26
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$b;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/c/b;)Z

    move-result p1

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d;->c:Lkotlin/reflect/jvm/internal/impl/load/java/d/d;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/d/d;->b()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/a/n;->p(Ljava/lang/Iterable;)Lkotlin/g/h;

    move-result-object v0

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d;->e:Lkotlin/reflect/jvm/internal/impl/f/h;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/g/k;->d(Lkotlin/g/h;Lkotlin/jvm/functions/Function1;)Lkotlin/g/h;

    move-result-object v0

    .line 41
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/a/c;->a:Lkotlin/reflect/jvm/internal/impl/load/java/a/c;

    .line 42
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->y:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 43
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d;->c:Lkotlin/reflect/jvm/internal/impl/load/java/d/d;

    .line 44
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 41
    invoke-virtual {v1, v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/a/c;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/load/java/d/d;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Lkotlin/g/k;->a(Lkotlin/g/h;Ljava/lang/Object;)Lkotlin/g/h;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lkotlin/g/k;->e(Lkotlin/g/h;)Lkotlin/g/h;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/g/h;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
