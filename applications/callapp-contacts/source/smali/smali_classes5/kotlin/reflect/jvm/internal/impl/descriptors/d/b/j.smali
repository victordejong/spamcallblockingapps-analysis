.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/n;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/f;
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/t;
.implements Lkotlin/reflect/jvm/internal/impl/load/java/d/g;


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "klass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/n;-><init>()V

    .line 30
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    .line 5032
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;->a:Ljava/lang/Class;

    .line 29
    check-cast v0, Ljava/lang/reflect/AnnotatedElement;

    return-object v0
.end method

.method public final bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/load/java/d/a;
    .locals 0

    .line 7029
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/f$a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/f;Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/c;

    move-result-object p1

    .line 29
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/d/a;

    return-object p1
.end method

.method public final synthetic b()Ljava/util/Collection;
    .locals 1

    .line 8029
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
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    return v0
.end method

.method public final e()Lkotlin/reflect/jvm/internal/impl/c/b;
    .locals 2

    .line 54
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;->a:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/b;->e(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/a;->f()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v0

    const-string v1, "klass.classId.asSingleFqName()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 131
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;->a:Ljava/lang/Class;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;->a:Ljava/lang/Class;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/d/j;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;->a:Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
    sget-object v0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v0, Ljava/util/List;

    .line 61
    check-cast v0, Ljava/util/Collection;

    return-object v0

    .line 62
    :cond_0
    new-instance v0, Lkotlin/jvm/internal/af;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/af;-><init>(I)V

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    if-nez v1, :cond_1

    const-class v1, Ljava/lang/Object;

    check-cast v1, Ljava/lang/reflect/Type;

    :cond_1
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/af;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v2, "klass.genericInterfaces"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/af;->a(Ljava/lang/Object;)V

    .line 2051
    iget-object v1, v0, Lkotlin/jvm/internal/af;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 62
    new-array v1, v1, [Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/af;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/a/n;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 142
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 143
    check-cast v2, Ljava/lang/reflect/Type;

    .line 62
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/l;

    invoke-direct {v3, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/l;-><init>(Ljava/lang/reflect/Type;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 141
    check-cast v1, Ljava/util/Collection;

    return-object v1
.end method

.method public final g()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/d/v;",
            ">;"
        }
    .end annotation

    .line 2071
    sget-object v0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v0, Ljava/util/List;

    .line 101
    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public final h()Lkotlin/reflect/jvm/internal/impl/c/e;
    .locals 2

    .line 109
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    const-string v1, "identifier(klass.simpleName)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 133
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/x;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    const-string v1, "klass.typeParameters"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 146
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 147
    check-cast v4, Ljava/lang/reflect/TypeVariable;

    .line 112
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/x;

    invoke-direct {v5, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/x;-><init>(Ljava/lang/reflect/TypeVariable;)V

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final j()Z
    .locals 1

    .line 115
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    return v0
.end method

.method public final l()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    return v0
.end method

.method public final m()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/d/j;",
            ">;"
        }
    .end annotation

    .line 3071
    sget-object v0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v0, Ljava/util/List;

    .line 129
    check-cast v0, Ljava/util/Collection;

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

.method public final synthetic r()Ljava/util/Collection;
    .locals 2

    .line 5037
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    const-string v1, "klass.declaredClasses"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    .line 5038
    invoke-static {v0}, Lkotlin/a/i;->o([Ljava/lang/Object;)Lkotlin/g/h;

    move-result-object v0

    .line 5039
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j$e;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j$e;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/g/k;->b(Lkotlin/g/h;Lkotlin/jvm/functions/Function1;)Lkotlin/g/h;

    move-result-object v0

    .line 5045
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j$f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j$f;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/g/k;->e(Lkotlin/g/h;Lkotlin/jvm/functions/Function1;)Lkotlin/g/h;

    move-result-object v0

    invoke-static {v0}, Lkotlin/g/k;->f(Lkotlin/g/h;)Ljava/util/List;

    move-result-object v0

    .line 29
    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public final synthetic s()Lkotlin/reflect/jvm/internal/impl/load/java/d/g;
    .locals 2

    .line 5057
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;-><init>(Ljava/lang/Class;)V

    move-object v0, v1

    .line 29
    :goto_0
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    return-object v0
.end method

.method public final synthetic t()Ljava/util/Collection;
    .locals 2

    .line 6066
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "klass.declaredMethods"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    .line 6067
    invoke-static {v0}, Lkotlin/a/i;->o([Ljava/lang/Object;)Lkotlin/g/h;

    move-result-object v0

    .line 6068
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j$g;

    invoke-direct {v1, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j$g;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/g/k;->a(Lkotlin/g/h;Lkotlin/jvm/functions/Function1;)Lkotlin/g/h;

    move-result-object v0

    .line 6075
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j$h;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j$h;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/g/k;->d(Lkotlin/g/h;Lkotlin/jvm/functions/Function1;)Lkotlin/g/h;

    move-result-object v0

    .line 6076
    invoke-static {v0}, Lkotlin/g/k;->f(Lkotlin/g/h;)Ljava/util/List;

    move-result-object v0

    .line 29
    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic u()Ljava/util/Collection;
    .locals 2

    .line 6087
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "klass.declaredFields"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    .line 6088
    invoke-static {v0}, Lkotlin/a/i;->o([Ljava/lang/Object;)Lkotlin/g/h;

    move-result-object v0

    .line 6089
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j$c;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j$c;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/g/k;->b(Lkotlin/g/h;Lkotlin/jvm/functions/Function1;)Lkotlin/g/h;

    move-result-object v0

    .line 6090
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j$d;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j$d;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/g/k;->d(Lkotlin/g/h;Lkotlin/jvm/functions/Function1;)Lkotlin/g/h;

    move-result-object v0

    .line 6091
    invoke-static {v0}, Lkotlin/g/k;->f(Lkotlin/g/h;)Ljava/util/List;

    move-result-object v0

    .line 29
    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public final synthetic v()Ljava/util/Collection;
    .locals 2

    .line 6094
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const-string v1, "klass.declaredConstructors"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    .line 6095
    invoke-static {v0}, Lkotlin/a/i;->o([Ljava/lang/Object;)Lkotlin/g/h;

    move-result-object v0

    .line 6096
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j$a;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/g/k;->b(Lkotlin/g/h;Lkotlin/jvm/functions/Function1;)Lkotlin/g/h;

    move-result-object v0

    .line 6097
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j$b;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j$b;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/g/k;->d(Lkotlin/g/h;Lkotlin/jvm/functions/Function1;)Lkotlin/g/h;

    move-result-object v0

    .line 6098
    invoke-static {v0}, Lkotlin/g/k;->f(Lkotlin/g/h;)Ljava/util/List;

    move-result-object v0

    .line 29
    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method
