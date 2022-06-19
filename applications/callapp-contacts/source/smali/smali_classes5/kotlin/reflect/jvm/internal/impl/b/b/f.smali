.class public final Lkotlin/reflect/jvm/internal/impl/b/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/reflect/jvm/internal/impl/b/a$h;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/a$p;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20623
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    const-string p1, "returnType"

    .line 42
    invoke-static {p0, p1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 43
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20638
    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->f:I

    .line 43
    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/b/b/g;->a(I)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object p0

    return-object p0

    .line 44
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No returnType in ProtoBuf.Function"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public static final a(Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/a$p;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21594
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    const-string p1, "returnType"

    .line 56
    invoke-static {p0, p1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 57
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21609
    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->f:I

    .line 57
    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/b/b/g;->a(I)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object p0

    return-object p0

    .line 58
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No returnType in ProtoBuf.Property"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public static final a(Lkotlin/reflect/jvm/internal/impl/b/a$p$a;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/a$p;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19248
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    return-object p0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19263
    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->d:I

    .line 28
    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/b/b/g;->a(I)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final a(Lkotlin/reflect/jvm/internal/impl/b/a$p;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/a$p;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19754
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    return-object p0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19769
    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->f:I

    .line 34
    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/b/b/g;->a(I)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final a(Lkotlin/reflect/jvm/internal/impl/b/a$t;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/a$p;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22255
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->d:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    const-string p1, "type"

    .line 70
    invoke-static {p0, p1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22270
    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->e:I

    .line 71
    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/b/b/g;->a(I)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object p0

    return-object p0

    .line 72
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No type in ProtoBuf.ValueParameter"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public static final a(Lkotlin/reflect/jvm/internal/impl/b/a$h;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->m()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->n()Z

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

.method public static final a(Lkotlin/reflect/jvm/internal/impl/b/a$m;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->m()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->n()Z

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

.method public static final b(Lkotlin/reflect/jvm/internal/impl/b/a$h;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/a$p;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20688
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->h:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    return-object p0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20703
    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->i:I

    .line 51
    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/b/b/g;->a(I)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final b(Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/a$p;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21659
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->h:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    return-object p0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21674
    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->i:I

    .line 65
    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/b/b/g;->a(I)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final b(Lkotlin/reflect/jvm/internal/impl/b/a$p;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/a$p;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22878
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->k:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    return-object p0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22893
    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->l:I

    .line 83
    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/b/b/g;->a(I)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final b(Lkotlin/reflect/jvm/internal/impl/b/a$t;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/a$p;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22285
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    return-object p0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22300
    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->g:I

    .line 77
    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/b/b/g;->a(I)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final c(Lkotlin/reflect/jvm/internal/impl/b/a$p;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/a$p;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22908
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->m:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    return-object p0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22923
    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->n:I

    .line 89
    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/b/b/g;->a(I)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
