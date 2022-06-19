.class public final Lkotlin/reflect/jvm/internal/impl/load/java/x;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
            ">(TT;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/y;->b:Lkotlin/reflect/jvm/internal/impl/load/java/y$a;

    .line 1128
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/y;->g()Ljava/util/List;

    move-result-object v0

    .line 97
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 98
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/f;->a:Lkotlin/reflect/jvm/internal/impl/load/java/f;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/f;->c()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 102
    :cond_0
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/am;

    :goto_0
    if-eqz v0, :cond_2

    .line 103
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/x$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/x$a;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object p0

    return-object p0

    .line 104
    :cond_2
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    if-eqz v0, :cond_3

    .line 105
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/x$b;->a:Lkotlin/reflect/jvm/internal/impl/load/java/x$b;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method public static final a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Z
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specialCallableDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    const-string v0, "specialCallableDescriptor.containingDeclaration as ClassDescriptor).defaultType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 165
    instance-of v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/b/d;

    if-nez v1, :cond_2

    .line 169
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-object v2, p1

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->findCorrespondingSupertype(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 172
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result p0

    if-nez p0, :cond_1

    return v2

    :cond_1
    return v0

    .line 176
    :cond_2
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p0

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static final b(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/x;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final c(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
            ">(TT;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/x;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 118
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/e;->a:Lkotlin/reflect/jvm/internal/impl/load/java/e;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    const-string v1, "name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/e;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 120
    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/x$c;->a:Lkotlin/reflect/jvm/internal/impl/load/java/x$c;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Ljava/lang/String;
    .locals 2

    const-string v0, "callableMemberDescriptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/x;->f(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    return-object v0

    .line 145
    :cond_1
    instance-of v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    if-eqz v1, :cond_2

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/h;->a:Lkotlin/reflect/jvm/internal/impl/load/java/h;

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/h;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 146
    :cond_2
    instance-of v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    if-eqz v1, :cond_3

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/d;->a:Lkotlin/reflect/jvm/internal/impl/load/java/d;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/as;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method public static final e(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1184
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object v0

    .line 1185
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v0

    instance-of v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/b/d;

    if-nez v0, :cond_1

    .line 188
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static final f(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/b;
    .locals 1

    .line 154
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/x;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
