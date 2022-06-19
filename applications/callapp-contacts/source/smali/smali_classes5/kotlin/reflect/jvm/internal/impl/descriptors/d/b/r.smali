.class public abstract Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/r;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/n;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/f;
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/t;
.implements Lkotlin/reflect/jvm/internal/impl/load/java/d/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/r;->f()Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/AnnotatedElement;

    return-object v0
.end method

.method protected final a([Ljava/lang/reflect/Type;[[Ljava/lang/annotation/Annotation;Z)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            "[[",
            "Ljava/lang/annotation/Annotation;",
            "Z)",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/d/z;",
            ">;"
        }
    .end annotation

    const-string v0, "parameterTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameterAnnotations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/a;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/r;->f()Ljava/lang/reflect/Member;

    move-result-object v1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/a;->a(Ljava/lang/reflect/Member;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_0

    .line 51
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    const/4 v4, 0x0

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    array-length v5, p1

    sub-int/2addr v3, v5

    .line 53
    :goto_1
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_6

    const/4 v6, 0x0

    :goto_2
    add-int/lit8 v7, v6, 0x1

    .line 54
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w$a;

    aget-object v8, p1, v6

    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w$a;->a(Ljava/lang/reflect/Type;)Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w;

    move-result-object v8

    if-nez v1, :cond_2

    move-object v9, v2

    goto :goto_3

    :cond_2
    add-int v9, v6, v3

    .line 56
    invoke-static {v1, v9}, Lkotlin/a/n;->b(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_5

    :goto_3
    if-eqz p3, :cond_3

    .line 58
    invoke-static {p1}, Lkotlin/a/i;->h([Ljava/lang/Object;)I

    move-result v10

    if-ne v6, v10, :cond_3

    const/4 v10, 0x1

    goto :goto_4

    :cond_3
    const/4 v10, 0x0

    .line 59
    :goto_4
    new-instance v11, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/y;

    aget-object v6, p2, v6

    invoke-direct {v11, v8, v6, v9, v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/y;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w;[Ljava/lang/annotation/Annotation;Ljava/lang/String;Z)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-le v7, v5, :cond_4

    goto :goto_5

    :cond_4
    move v6, v7

    goto :goto_2

    .line 56
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "No parameter with index "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x2b

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (name="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/r;->h()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " type="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "@ReflectJavaMember"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 61
    :cond_6
    :goto_5
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/load/java/d/a;
    .locals 0

    .line 2029
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/f$a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/f;Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/c;

    move-result-object p1

    .line 29
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/d/a;

    return-object p1
.end method

.method public final synthetic b()Ljava/util/Collection;
    .locals 1

    .line 3029
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/f$a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/f;)Ljava/util/List;

    move-result-object v0

    .line 29
    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    const-string v0, "this"

    .line 29
    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final d()I
    .locals 1

    .line 34
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/r;->f()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 64
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/r;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/r;->f()Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/r;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/r;->f()Ljava/lang/reflect/Member;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract f()Ljava/lang/reflect/Member;
.end method

.method public final h()Lkotlin/reflect/jvm/internal/impl/c/e;
    .locals 2

    .line 37
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/r;->f()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/c/g;->a:Lkotlin/reflect/jvm/internal/impl/c/e;

    const-string v1, "NO_NAME_PROVIDED"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 66
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/r;->f()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic j()Lkotlin/reflect/jvm/internal/impl/load/java/d/g;
    .locals 3

    .line 1040
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/r;->f()Ljava/lang/reflect/Member;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "member.declaringClass"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;-><init>(Ljava/lang/Class;)V

    .line 29
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    return-object v0
.end method

.method public final n()Z
    .locals 1

    .line 29
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/t$a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/t;)Z

    move-result v0

    return v0
.end method

.method public final o()Z
    .locals 1

    .line 29
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/t$a;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/t;)Z

    move-result v0

    return v0
.end method

.method public final p()Z
    .locals 1

    .line 29
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/t$a;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/t;)Z

    move-result v0

    return v0
.end method

.method public final q()Lkotlin/reflect/jvm/internal/impl/descriptors/bf;
    .locals 1

    .line 29
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/t$a;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/t;)Lkotlin/reflect/jvm/internal/impl/descriptors/bf;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/r;->f()Ljava/lang/reflect/Member;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
