.class public final Lkotlin/reflect/jvm/internal/impl/builtins/functions/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/b/b;


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/f/n;

.field private final b:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/a;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 34
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/a;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    return-void
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

    .line 7036
    sget-object p1, Lkotlin/a/ab;->a:Lkotlin/a/ab;

    check-cast p1, Ljava/util/Set;

    .line 65
    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 6

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5070
    iget-boolean v0, p1, Lkotlin/reflect/jvm/internal/impl/c/a;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 44
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 46
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/a;->b()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "classId.relativeClassName.asString()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "Function"

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    .line 5138
    invoke-static {v2, v3, v4}, Lkotlin/h/p;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 49
    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/a;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p1

    const-string v2, "classId.packageFqName"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->Companion:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b$a;

    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b$a;->a(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/builtins/functions/b$a$a;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 6000
    :cond_2
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b$a$a;->a:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;

    .line 7000
    iget v0, v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b$a$a;->b:I

    .line 53
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/a;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    invoke-interface {v2, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ab;->getPackage(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/aj;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/aj;->d()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 69
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 78
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lkotlin/reflect/jvm/internal/impl/builtins/a;

    if-eqz v4, :cond_3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :cond_4
    check-cast v2, Ljava/util/List;

    .line 57
    move-object p1, v2

    check-cast p1, Ljava/lang/Iterable;

    .line 80
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 89
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lkotlin/reflect/jvm/internal/impl/builtins/e;

    if-eqz v5, :cond_5

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 90
    :cond_6
    check-cast v3, Ljava/util/List;

    .line 57
    invoke-static {v3}, Lkotlin/a/n;->f(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/builtins/e;

    if-nez p1, :cond_7

    invoke-static {v2}, Lkotlin/a/n;->e(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    :cond_7
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/builtins/a;

    .line 59
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/a;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    invoke-direct {v2, v3, p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ae;Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;I)V

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    return-object v2

    :cond_8
    :goto_2
    return-object v1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/e;)Z
    .locals 2

    const-string v0, "packageFqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, "name.asString()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Function"

    const/4 v1, 0x0

    .line 1405
    invoke-static {p2, v0, v1}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KFunction"

    .line 2405
    invoke-static {p2, v0, v1}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SuspendFunction"

    .line 3405
    invoke-static {p2, v0, v1}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KSuspendFunction"

    .line 4405
    invoke-static {p2, v0, v1}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b;->Companion:Lkotlin/reflect/jvm/internal/impl/builtins/functions/b$a;

    invoke-static {p2, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/b$a;->a(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/builtins/functions/b$a$a;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
