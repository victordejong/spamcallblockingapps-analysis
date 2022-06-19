.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/y;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/n;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/d/z;


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w;

.field private final b:[Ljava/lang/annotation/Annotation;

.field private final c:Ljava/lang/String;

.field private final d:Z


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w;[Ljava/lang/annotation/Annotation;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reflectAnnotations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/n;-><init>()V

    .line 24
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/y;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w;

    .line 25
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/y;->b:[Ljava/lang/annotation/Annotation;

    .line 26
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/y;->c:Ljava/lang/String;

    .line 27
    iput-boolean p4, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/y;->d:Z

    return-void
.end method


# virtual methods
.method public final synthetic a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/load/java/d/a;
    .locals 1

    const-string v0, "fqName"

    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3033
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/y;->b:[Ljava/lang/annotation/Annotation;

    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/g;->a([Ljava/lang/annotation/Annotation;Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/c;

    move-result-object p1

    .line 23
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/d/a;

    return-object p1
.end method

.method public final a()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/y;->d:Z

    return v0
.end method

.method public final synthetic b()Ljava/util/Collection;
    .locals 1

    .line 3030
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/y;->b:[Ljava/lang/annotation/Annotation;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/g;->a([Ljava/lang/annotation/Annotation;)Ljava/util/List;

    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d()Lkotlin/reflect/jvm/internal/impl/c/e;
    .locals 1

    .line 39
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/y;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->d(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e()Lkotlin/reflect/jvm/internal/impl/load/java/d/w;
    .locals 1

    .line 3024
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/y;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w;

    .line 23
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/d/w;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    iget-boolean v2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/y;->d:Z

    if-eqz v2, :cond_0

    const-string v2, "vararg "

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 41
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/y;->d()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2024
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/y;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w;

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
