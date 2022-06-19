.class public Lcom/googlecode/mp4parser/a/d/d;
.super Lcom/googlecode/mp4parser/a/a;
.source "SourceFile"


# static fields
.field static final synthetic e:Z = true


# instance fields
.field d:Lcom/googlecode/mp4parser/a/g;

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/mp4parser/a/g;JJ)V
    .locals 3

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "crop("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/googlecode/mp4parser/a/g;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/a/a;-><init>(Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/googlecode/mp4parser/a/d/d;->d:Lcom/googlecode/mp4parser/a/g;

    .line 51
    sget-boolean p1, Lcom/googlecode/mp4parser/a/d/d;->e:Z

    const-wide/32 v0, 0x7fffffff

    if-nez p1, :cond_1

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    cmp-long p1, p4, v0

    if-gtz p1, :cond_2

    goto :goto_1

    .line 52
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    long-to-int p1, p2

    .line 53
    iput p1, p0, Lcom/googlecode/mp4parser/a/d/d;->f:I

    long-to-int p1, p4

    .line 54
    iput p1, p0, Lcom/googlecode/mp4parser/a/d/d;->g:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/b/a/a/d$a;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d/d;->d:Lcom/googlecode/mp4parser/a/g;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/g;->a()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/a/d/d;->f:I

    int-to-long v1, v1

    iget v3, p0, Lcom/googlecode/mp4parser/a/d/d;->g:I

    int-to-long v3, v3

    if-eqz v0, :cond_4

    .line 1114
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    const-wide/16 v5, 0x0

    .line 1116
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 1117
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1121
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/b/a/a/d$a;

    .line 3099
    iget v9, v8, Lcom/b/a/a/d$a;->a:I

    int-to-long v9, v9

    add-long/2addr v9, v5

    cmp-long v11, v9, v1

    if-lez v11, :cond_3

    .line 4099
    iget v9, v8, Lcom/b/a/a/d$a;->a:I

    int-to-long v9, v9

    add-long/2addr v9, v5

    cmp-long v11, v9, v3

    if-ltz v11, :cond_0

    .line 1126
    new-instance v0, Lcom/b/a/a/d$a;

    sub-long/2addr v3, v1

    long-to-int v1, v3

    .line 4103
    iget v2, v8, Lcom/b/a/a/d$a;->b:I

    .line 1126
    invoke-direct {v0, v1, v2}, Lcom/b/a/a/d$a;-><init>(II)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v7

    .line 1129
    :cond_0
    new-instance v9, Lcom/b/a/a/d$a;

    .line 5099
    iget v10, v8, Lcom/b/a/a/d$a;->a:I

    int-to-long v10, v10

    add-long/2addr v10, v5

    sub-long/2addr v10, v1

    long-to-int v1, v10

    .line 5103
    iget v2, v8, Lcom/b/a/a/d$a;->b:I

    .line 1129
    invoke-direct {v9, v1, v2}, Lcom/b/a/a/d$a;-><init>(II)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6099
    iget v1, v8, Lcom/b/a/a/d$a;->a:I

    :goto_1
    int-to-long v1, v1

    add-long/2addr v5, v1

    .line 1133
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/b/a/a/d$a;

    .line 8099
    iget v1, v8, Lcom/b/a/a/d$a;->a:I

    int-to-long v1, v1

    add-long/2addr v1, v5

    cmp-long v9, v1, v3

    if-ltz v9, :cond_1

    goto :goto_2

    .line 1134
    :cond_1
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7099
    iget v1, v8, Lcom/b/a/a/d$a;->a:I

    goto :goto_1

    .line 1138
    :cond_2
    :goto_2
    new-instance v0, Lcom/b/a/a/d$a;

    sub-long/2addr v3, v5

    long-to-int v1, v3

    .line 8103
    iget v2, v8, Lcom/b/a/a/d$a;->b:I

    .line 1138
    invoke-direct {v0, v1, v2}, Lcom/b/a/a/d$a;-><init>(II)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v7

    .line 2099
    :cond_3
    iget v8, v8, Lcom/b/a/a/d$a;->a:I

    int-to-long v8, v8

    add-long/2addr v5, v8

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized b()[J
    .locals 9

    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d/d;->d:Lcom/googlecode/mp4parser/a/g;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/g;->b()[J

    move-result-object v0

    if-eqz v0, :cond_5

    .line 148
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d/d;->d:Lcom/googlecode/mp4parser/a/g;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/g;->b()[J

    move-result-object v0

    .line 149
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 150
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    aget-wide v4, v0, v3

    iget v6, p0, Lcom/googlecode/mp4parser/a/d/d;->f:I

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-ltz v8, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v1, :cond_3

    .line 153
    iget v4, p0, Lcom/googlecode/mp4parser/a/d/d;->g:I

    int-to-long v4, v4

    add-int/lit8 v6, v1, -0x1

    aget-wide v6, v0, v6

    cmp-long v8, v4, v6

    if-ltz v8, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    :goto_2
    sub-int/2addr v1, v3

    .line 156
    new-array v0, v1, [J

    .line 157
    iget-object v4, p0, Lcom/googlecode/mp4parser/a/d/d;->d:Lcom/googlecode/mp4parser/a/g;

    invoke-interface {v4}, Lcom/googlecode/mp4parser/a/g;->b()[J

    move-result-object v4

    invoke-static {v4, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    if-lt v2, v1, :cond_4

    .line 161
    monitor-exit p0

    return-object v0

    .line 159
    :cond_4
    :try_start_1
    aget-wide v3, v0, v2

    iget v5, p0, Lcom/googlecode/mp4parser/a/d/d;->f:I

    int-to-long v5, v5

    sub-long/2addr v3, v5

    aput-wide v3, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    .line 163
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/b/a/a/u$a;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d/d;->d:Lcom/googlecode/mp4parser/a/g;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/g;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d/d;->d:Lcom/googlecode/mp4parser/a/g;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/g;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d/d;->d:Lcom/googlecode/mp4parser/a/g;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/g;->c()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/a/d/d;->f:I

    iget v2, p0, Lcom/googlecode/mp4parser/a/d/d;->g:I

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d/d;->d:Lcom/googlecode/mp4parser/a/g;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/g;->close()V

    return-void
.end method

.method public final d()Lcom/b/a/a/ac;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d/d;->d:Lcom/googlecode/mp4parser/a/g;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/g;->d()Lcom/b/a/a/ac;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/a/f;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d/d;->d:Lcom/googlecode/mp4parser/a/g;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/g;->j()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/a/d/d;->f:I

    iget v2, p0, Lcom/googlecode/mp4parser/a/d/d;->g:I

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized k()[J
    .locals 5

    monitor-enter p0

    .line 71
    :try_start_0
    iget v0, p0, Lcom/googlecode/mp4parser/a/d/d;->g:I

    iget v1, p0, Lcom/googlecode/mp4parser/a/d/d;->f:I

    sub-int/2addr v0, v1

    new-array v1, v0, [J

    .line 72
    iget-object v2, p0, Lcom/googlecode/mp4parser/a/d/d;->d:Lcom/googlecode/mp4parser/a/g;

    invoke-interface {v2}, Lcom/googlecode/mp4parser/a/g;->k()[J

    move-result-object v2

    iget v3, p0, Lcom/googlecode/mp4parser/a/d/d;->f:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final l()Lcom/b/a/a/v;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d/d;->d:Lcom/googlecode/mp4parser/a/g;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/g;->l()Lcom/b/a/a/v;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lcom/googlecode/mp4parser/a/h;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d/d;->d:Lcom/googlecode/mp4parser/a/g;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v0

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d/d;->d:Lcom/googlecode/mp4parser/a/g;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/g;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
