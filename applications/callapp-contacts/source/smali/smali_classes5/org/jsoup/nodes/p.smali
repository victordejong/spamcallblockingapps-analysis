.class public Lorg/jsoup/nodes/p;
.super Lorg/jsoup/nodes/l;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/jsoup/nodes/l;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/jsoup/nodes/p;->a:Ljava/lang/Object;

    return-void
.end method

.method static a(Ljava/lang/StringBuilder;)Z
    .locals 2

    .line 125
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "#text"

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

.method a(Ljava/lang/Appendable;ILorg/jsoup/nodes/f$a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1497
    iget-boolean v0, p3, Lorg/jsoup/nodes/f$a;->e:Z

    if-eqz v0, :cond_2

    .line 1564
    iget v1, p0, Lorg/jsoup/nodes/m;->h:I

    if-nez v1, :cond_0

    .line 85
    iget-object v1, p0, Lorg/jsoup/nodes/p;->g:Lorg/jsoup/nodes/m;

    instance-of v1, v1, Lorg/jsoup/nodes/h;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jsoup/nodes/p;->g:Lorg/jsoup/nodes/m;

    check-cast v1, Lorg/jsoup/nodes/h;

    .line 2174
    iget-object v1, v1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 3109
    iget-boolean v1, v1, Lorg/jsoup/c/h;->d:Z

    if-eqz v1, :cond_0

    .line 4059
    invoke-virtual {p0}, Lorg/jsoup/nodes/p;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/b/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4516
    :cond_0
    iget-boolean v1, p3, Lorg/jsoup/nodes/f$a;->f:Z

    if-eqz v1, :cond_2

    .line 85
    invoke-virtual {p0}, Lorg/jsoup/nodes/p;->z()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 5059
    invoke-virtual {p0}, Lorg/jsoup/nodes/p;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/b/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 86
    :cond_1
    invoke-static {p1, p2, p3}, Lorg/jsoup/nodes/p;->c(Ljava/lang/Appendable;ILorg/jsoup/nodes/f$a;)V

    :cond_2
    const/4 p2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 88
    iget-object v2, p0, Lorg/jsoup/nodes/p;->g:Lorg/jsoup/nodes/m;

    invoke-static {v2}, Lorg/jsoup/nodes/h;->d(Lorg/jsoup/nodes/m;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 89
    iget-object v0, p0, Lorg/jsoup/nodes/p;->g:Lorg/jsoup/nodes/m;

    instance-of v0, v0, Lorg/jsoup/nodes/f;

    if-eqz v0, :cond_4

    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    .line 90
    :goto_1
    invoke-virtual {p0}, Lorg/jsoup/nodes/p;->k()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v3 .. v8}, Lorg/jsoup/nodes/i;->a(Ljava/lang/Appendable;Ljava/lang/String;Lorg/jsoup/nodes/f$a;ZZZ)V

    return-void
.end method

.method public b()Lorg/jsoup/nodes/p;
    .locals 1

    .line 102
    invoke-super {p0}, Lorg/jsoup/nodes/l;->c()Lorg/jsoup/nodes/m;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/p;

    return-object v0
.end method

.method b(Ljava/lang/Appendable;ILorg/jsoup/nodes/f$a;)V
    .locals 0

    return-void
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

.method public synthetic c()Lorg/jsoup/nodes/m;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lorg/jsoup/nodes/p;->b()Lorg/jsoup/nodes/p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lorg/jsoup/nodes/p;->b()Lorg/jsoup/nodes/p;

    move-result-object v0

    return-object v0
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

.method public toString()Ljava/lang/String;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/jsoup/nodes/p;->aB_()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
