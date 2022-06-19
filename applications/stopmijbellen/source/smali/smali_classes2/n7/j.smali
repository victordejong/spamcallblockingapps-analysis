.class public abstract Ln7/j;
.super Lk7/r;
.source "SourceFile"

# interfaces
.implements Ln7/g$i;


# instance fields
.field public h:Ll7/a;

.field public i:Ln7/h;

.field public j:Lk7/j;

.field public k:Ln7/w;

.field public l:Z

.field public m:I

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Lk7/o;


# direct methods
.method public constructor <init>(Ln7/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk7/r;-><init>()V

    .line 2
    new-instance v0, Ln7/j$a;

    invoke-direct {v0, p0}, Ln7/j$a;-><init>(Ln7/j;)V

    iput-object v0, p0, Ln7/j;->h:Ll7/a;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ln7/j;->l:Z

    .line 4
    iput-object p1, p0, Ln7/j;->i:Ln7/h;

    return-void
.end method


# virtual methods
.method public a()Lk7/h;
    .locals 1

    .line 1
    iget-object v0, p0, Ln7/j;->j:Lk7/j;

    invoke-interface {v0}, Lk7/j;->a()Lk7/h;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1
    invoke-super {p0}, Lk7/r;->close()V

    .line 2
    iget-object v0, p0, Ln7/j;->j:Lk7/j;

    new-instance v1, Ln7/k;

    invoke-direct {v1, p0}, Ln7/k;-><init>(Ln7/j;)V

    invoke-interface {v0, v1}, Lk7/m;->b(Ll7/c;)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, Ln7/j;->k:Ln7/w;

    .line 2
    iget-object v0, v0, Ln7/w;->a:Ln7/a0;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Content-Type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln7/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ln7/a0;

    invoke-direct {v1}, Ln7/a0;-><init>()V

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const-string v3, ";"

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_5

    aget-object v6, v0, v5

    const/4 v7, 0x2

    const-string v8, "="

    .line 6
    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 7
    aget-object v7, v6, v4

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    .line 9
    :cond_1
    array-length v8, v6

    const/4 v9, 0x1

    if-le v8, v9, :cond_2

    .line 10
    aget-object v6, v6, v9

    goto :goto_1

    :cond_2
    move-object v6, v2

    :goto_1
    if-eqz v6, :cond_3

    const-string v8, "\""

    .line 11
    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 12
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v9

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 13
    :cond_3
    invoke-virtual {v1, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_4

    .line 14
    invoke-virtual {v1}, Ln7/a0;->b()Ljava/util/List;

    move-result-object v8

    .line 15
    invoke-virtual {v1, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_4
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    const-string v0, "charset"

    .line 17
    invoke-virtual {v1, v0}, Ln7/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_6
    return-object v2
.end method

.method public n(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lk7/n;->n(Ljava/lang/Exception;)V

    .line 2
    iget-object p1, p0, Ln7/j;->j:Lk7/j;

    new-instance v0, Ln7/k;

    invoke-direct {v0, p0}, Ln7/k;-><init>(Ln7/j;)V

    invoke-interface {p1, v0}, Lk7/m;->b(Ll7/c;)V

    .line 3
    iget-object p1, p0, Ln7/j;->j:Lk7/j;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lk7/o;->m(Ll7/f;)V

    .line 4
    iget-object p1, p0, Ln7/j;->j:Lk7/j;

    invoke-interface {p1, v0}, Lk7/o;->g(Ll7/a;)V

    .line 5
    iget-object p1, p0, Ln7/j;->j:Lk7/j;

    invoke-interface {p1, v0}, Lk7/m;->h(Ll7/a;)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Ln7/j;->l:Z

    return-void
.end method

.method public abstract p(Ljava/lang/Exception;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Ln7/j;->k:Ln7/w;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ln7/j;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ln7/j;->m:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ln7/j;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln7/w;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
