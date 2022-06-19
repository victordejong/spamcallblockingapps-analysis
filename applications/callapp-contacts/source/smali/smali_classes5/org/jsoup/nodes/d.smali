.class public final Lorg/jsoup/nodes/d;
.super Lorg/jsoup/nodes/l;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/jsoup/nodes/l;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/jsoup/nodes/d;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "#comment"

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 12
    invoke-super {p0, p1}, Lorg/jsoup/nodes/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/m;
    .locals 0

    .line 12
    invoke-super {p0, p1, p2}, Lorg/jsoup/nodes/l;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/m;

    move-result-object p1

    return-object p1
.end method

.method final a(Ljava/lang/Appendable;ILorg/jsoup/nodes/f$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1497
    iget-boolean v0, p3, Lorg/jsoup/nodes/f$a;->e:Z

    if-eqz v0, :cond_2

    .line 1564
    iget v0, p0, Lorg/jsoup/nodes/m;->h:I

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lorg/jsoup/nodes/d;->g:Lorg/jsoup/nodes/m;

    instance-of v0, v0, Lorg/jsoup/nodes/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/d;->g:Lorg/jsoup/nodes/m;

    check-cast v0, Lorg/jsoup/nodes/h;

    .line 2174
    iget-object v0, v0, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 3109
    iget-boolean v0, v0, Lorg/jsoup/c/h;->d:Z

    if-nez v0, :cond_1

    .line 3516
    :cond_0
    iget-boolean v0, p3, Lorg/jsoup/nodes/f$a;->f:Z

    if-eqz v0, :cond_2

    .line 40
    :cond_1
    invoke-static {p1, p2, p3}, Lorg/jsoup/nodes/d;->c(Ljava/lang/Appendable;ILorg/jsoup/nodes/f$a;)V

    :cond_2
    const-string p2, "<!--"

    .line 42
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    .line 4030
    invoke-virtual {p0}, Lorg/jsoup/nodes/d;->k()Ljava/lang/String;

    move-result-object p2

    .line 43
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const-string p2, "-->"

    .line 44
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method final b(Ljava/lang/Appendable;ILorg/jsoup/nodes/f$a;)V
    .locals 0

    return-void
.end method

.method public final b()Z
    .locals 3

    .line 5030
    invoke-virtual {p0}, Lorg/jsoup/nodes/d;->k()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic b(Ljava/lang/String;)Z
    .locals 0

    .line 12
    invoke-super {p0, p1}, Lorg/jsoup/nodes/l;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 12
    invoke-super {p0, p1}, Lorg/jsoup/nodes/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic c()Lorg/jsoup/nodes/m;
    .locals 1

    .line 7056
    invoke-super {p0}, Lorg/jsoup/nodes/l;->c()Lorg/jsoup/nodes/m;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/d;

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 8056
    invoke-super {p0}, Lorg/jsoup/nodes/l;->c()Lorg/jsoup/nodes/m;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/d;

    return-object v0
.end method

.method public final d()Lorg/jsoup/nodes/q;
    .locals 5

    .line 6030
    invoke-virtual {p0}, Lorg/jsoup/nodes/d;->k()Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jsoup/nodes/d;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/jsoup/c/g;->a()Lorg/jsoup/c/g;

    move-result-object v3

    .line 6045
    invoke-virtual {v3, v1, v2}, Lorg/jsoup/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/f;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lorg/jsoup/nodes/f;->m()Lorg/jsoup/select/c;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/select/c;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 77
    invoke-virtual {v1}, Lorg/jsoup/nodes/f;->l()Lorg/jsoup/nodes/h;

    move-result-object v2

    .line 78
    new-instance v3, Lorg/jsoup/nodes/q;

    invoke-static {v1}, Lorg/jsoup/nodes/n;->b(Lorg/jsoup/nodes/m;)Lorg/jsoup/c/g;

    move-result-object v1

    .line 6093
    iget-object v1, v1, Lorg/jsoup/c/g;->b:Lorg/jsoup/c/f;

    .line 6142
    iget-object v4, v2, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 7038
    iget-object v4, v4, Lorg/jsoup/c/h;->a:Ljava/lang/String;

    .line 78
    invoke-virtual {v1, v4}, Lorg/jsoup/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "!"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {v3, v1, v0}, Lorg/jsoup/nodes/q;-><init>(Ljava/lang/String;Z)V

    .line 79
    invoke-virtual {v3}, Lorg/jsoup/nodes/q;->j()Lorg/jsoup/nodes/b;

    move-result-object v0

    invoke-virtual {v2}, Lorg/jsoup/nodes/h;->j()Lorg/jsoup/nodes/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/b;->a(Lorg/jsoup/nodes/b;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return-object v3
.end method

.method public final bridge synthetic e()Lorg/jsoup/nodes/m;
    .locals 1

    .line 12
    invoke-super {p0}, Lorg/jsoup/nodes/l;->e()Lorg/jsoup/nodes/m;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()I
    .locals 1

    .line 12
    invoke-super {p0}, Lorg/jsoup/nodes/l;->f()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic g()Ljava/lang/String;
    .locals 1

    .line 12
    invoke-super {p0}, Lorg/jsoup/nodes/l;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/jsoup/nodes/d;->aB_()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
