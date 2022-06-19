.class public final Lcom/b/a/a/x;
.super Lcom/googlecode/mp4parser/b;
.source "SourceFile"


# instance fields
.field private a:Lcom/b/a/a/y;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "stbl"

    .line 42
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/b/a/a/v;
    .locals 3

    .line 46
    invoke-virtual {p0}, Lcom/b/a/a/x;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/a/b;

    .line 47
    instance-of v2, v1, Lcom/b/a/a/v;

    if-eqz v2, :cond_0

    .line 48
    check-cast v1, Lcom/b/a/a/v;

    return-object v1
.end method

.method public final c()Lcom/b/a/a/w;
    .locals 3

    .line 55
    invoke-virtual {p0}, Lcom/b/a/a/x;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/a/b;

    .line 56
    instance-of v2, v1, Lcom/b/a/a/w;

    if-eqz v2, :cond_0

    .line 57
    check-cast v1, Lcom/b/a/a/w;

    return-object v1
.end method

.method public final d()Lcom/b/a/a/y;
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/b/a/a/x;->a:Lcom/b/a/a/y;

    if-eqz v0, :cond_0

    return-object v0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/b/a/a/x;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/a/b;

    .line 68
    instance-of v2, v1, Lcom/b/a/a/y;

    if-eqz v2, :cond_1

    .line 69
    check-cast v1, Lcom/b/a/a/y;

    iput-object v1, p0, Lcom/b/a/a/x;->a:Lcom/b/a/a/y;

    return-object v1
.end method

.method public final e()Lcom/b/a/a/c;
    .locals 3

    .line 77
    invoke-virtual {p0}, Lcom/b/a/a/x;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/a/b;

    .line 78
    instance-of v2, v1, Lcom/b/a/a/c;

    if-eqz v2, :cond_0

    .line 79
    check-cast v1, Lcom/b/a/a/c;

    return-object v1
.end method

.method public final f()Lcom/b/a/a/af;
    .locals 3

    .line 87
    invoke-virtual {p0}, Lcom/b/a/a/x;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/a/b;

    .line 88
    instance-of v2, v1, Lcom/b/a/a/af;

    if-eqz v2, :cond_0

    .line 89
    check-cast v1, Lcom/b/a/a/af;

    return-object v1
.end method

.method public final g()Lcom/b/a/a/ae;
    .locals 3

    .line 96
    invoke-virtual {p0}, Lcom/b/a/a/x;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/a/b;

    .line 97
    instance-of v2, v1, Lcom/b/a/a/ae;

    if-eqz v2, :cond_0

    .line 98
    check-cast v1, Lcom/b/a/a/ae;

    return-object v1
.end method

.method public final h()Lcom/b/a/a/d;
    .locals 3

    .line 105
    invoke-virtual {p0}, Lcom/b/a/a/x;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/a/b;

    .line 106
    instance-of v2, v1, Lcom/b/a/a/d;

    if-eqz v2, :cond_0

    .line 107
    check-cast v1, Lcom/b/a/a/d;

    return-object v1
.end method

.method public final i()Lcom/b/a/a/u;
    .locals 3

    .line 114
    invoke-virtual {p0}, Lcom/b/a/a/x;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/a/b;

    .line 115
    instance-of v2, v1, Lcom/b/a/a/u;

    if-eqz v2, :cond_0

    .line 116
    check-cast v1, Lcom/b/a/a/u;

    return-object v1
.end method
