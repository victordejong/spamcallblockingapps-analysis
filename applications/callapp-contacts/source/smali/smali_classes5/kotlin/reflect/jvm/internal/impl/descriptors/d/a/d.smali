.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/n;


# instance fields
.field private final a:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    const-string v0, "classLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/d;->a:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/load/java/n$a;)Lkotlin/reflect/jvm/internal/impl/load/java/d/g;
    .locals 4

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1015
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/n$a;->a:Lkotlin/reflect/jvm/internal/impl/c/a;

    .line 29
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/a;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v0

    const-string v1, "classId.packageFqName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/a;->b()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/b;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "classId.relativeClassName.asString()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x2e

    const/16 v2, 0x24

    const/4 v3, 0x0

    .line 1063
    invoke-static {p1, v1, v2, v3}, Lkotlin/h/p;->a(Ljava/lang/String;CCZ)Ljava/lang/String;

    move-result-object p1

    .line 2063
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/c/b;->b:Lkotlin/reflect/jvm/internal/impl/c/c;

    .line 2101
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/c/c;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 35
    :goto_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/d;->a:Ljava/lang/ClassLoader;

    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/e;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 36
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;-><init>(Ljava/lang/Class;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/load/java/d/t;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/u;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/u;-><init>(Lkotlin/reflect/jvm/internal/impl/c/b;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/d/t;

    return-object v0
.end method

.method public final b(Lkotlin/reflect/jvm/internal/impl/c/b;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "packageFqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
