.class final Landroidx/constraintlayout/a/a/a/k;
.super Landroidx/constraintlayout/a/a/a/p;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/a/a/e;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroidx/constraintlayout/a/a/a/p;-><init>(Landroidx/constraintlayout/a/a/e;)V

    return-void
.end method

.method private a(Landroidx/constraintlayout/a/a/a/f;)V
    .locals 1

    .line 44
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/k;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/f;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object p1, p1, Landroidx/constraintlayout/a/a/a/f;->l:Ljava/util/List;

    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/k;->j:Landroidx/constraintlayout/a/a/a/f;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final c()V
    .locals 1

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Landroidx/constraintlayout/a/a/a/k;->e:Landroidx/constraintlayout/a/a/a/m;

    .line 30
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/k;->j:Landroidx/constraintlayout/a/a/a/f;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/a/f;->a()V

    return-void
.end method

.method public final d()V
    .locals 7

    .line 122
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/k;->d:Landroidx/constraintlayout/a/a/e;

    check-cast v0, Landroidx/constraintlayout/a/a/a;

    .line 5052
    iget v1, v0, Landroidx/constraintlayout/a/a/a;->a:I

    .line 127
    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/k;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/a/f;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/a/a/a/f;

    .line 128
    iget v6, v6, Landroidx/constraintlayout/a/a/a/f;->g:I

    if-eq v5, v3, :cond_1

    if-ge v6, v5, :cond_2

    :cond_1
    move v5, v6

    :cond_2
    if-ge v4, v6, :cond_0

    move v4, v6

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_5

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    goto :goto_1

    .line 139
    :cond_4
    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/k;->j:Landroidx/constraintlayout/a/a/a/f;

    .line 6234
    iget v0, v0, Landroidx/constraintlayout/a/a/a;->c:I

    add-int/2addr v4, v0

    .line 139
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/a/a/a/f;->a(I)V

    return-void

    .line 137
    :cond_5
    :goto_1
    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/k;->j:Landroidx/constraintlayout/a/a/a/f;

    .line 5234
    iget v0, v0, Landroidx/constraintlayout/a/a/a;->c:I

    add-int/2addr v5, v0

    .line 137
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/a/a/a/f;->a(I)V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 144
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/k;->d:Landroidx/constraintlayout/a/a/e;

    instance-of v0, v0, Landroidx/constraintlayout/a/a/a;

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/k;->d:Landroidx/constraintlayout/a/a/e;

    check-cast v0, Landroidx/constraintlayout/a/a/a;

    .line 7052
    iget v0, v0, Landroidx/constraintlayout/a/a/a;->a:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/k;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/k;->j:Landroidx/constraintlayout/a/a/a/f;

    iget v1, v1, Landroidx/constraintlayout/a/a/a/f;->g:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/a/a/e;->f(I)V

    goto :goto_1

    .line 149
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/k;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/k;->j:Landroidx/constraintlayout/a/a/a/f;

    iget v1, v1, Landroidx/constraintlayout/a/a/a/f;->g:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/a/a/e;->e(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method final f()V
    .locals 7

    .line 50
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/k;->d:Landroidx/constraintlayout/a/a/e;

    instance-of v0, v0, Landroidx/constraintlayout/a/a/a;

    if-eqz v0, :cond_10

    .line 51
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/k;->j:Landroidx/constraintlayout/a/a/a/f;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/constraintlayout/a/a/a/f;->b:Z

    .line 52
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/k;->d:Landroidx/constraintlayout/a/a/e;

    check-cast v0, Landroidx/constraintlayout/a/a/a;

    .line 1052
    iget v2, v0, Landroidx/constraintlayout/a/a/a;->a:I

    .line 1060
    iget-boolean v3, v0, Landroidx/constraintlayout/a/a/a;->b:Z

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v2, :cond_c

    if-eq v2, v1, :cond_8

    const/4 v1, 0x2

    if-eq v2, v1, :cond_4

    const/4 v1, 0x3

    if-eq v2, v1, :cond_0

    goto/16 :goto_4

    .line 102
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/k;->j:Landroidx/constraintlayout/a/a/a/f;

    sget-object v2, Landroidx/constraintlayout/a/a/a/f$a;->BOTTOM:Landroidx/constraintlayout/a/a/a/f$a;

    iput-object v2, v1, Landroidx/constraintlayout/a/a/a/f;->e:Landroidx/constraintlayout/a/a/a/f$a;

    .line 103
    :goto_0
    iget v1, v0, Landroidx/constraintlayout/a/a/a;->aY:I

    if-ge v5, v1, :cond_3

    .line 104
    iget-object v1, v0, Landroidx/constraintlayout/a/a/a;->aX:[Landroidx/constraintlayout/a/a/e;

    aget-object v1, v1, v5

    if-nez v3, :cond_1

    .line 4714
    iget v2, v1, Landroidx/constraintlayout/a/a/e;->ak:I

    if-eq v2, v4, :cond_2

    .line 108
    :cond_1
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->j:Landroidx/constraintlayout/a/a/a/n;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    .line 109
    iget-object v2, v1, Landroidx/constraintlayout/a/a/a/f;->k:Ljava/util/List;

    iget-object v6, p0, Landroidx/constraintlayout/a/a/a/k;->j:Landroidx/constraintlayout/a/a/a/f;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/k;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/a/f;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 113
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/k;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->j:Landroidx/constraintlayout/a/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/a/a/a/k;->a(Landroidx/constraintlayout/a/a/a/f;)V

    .line 114
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/k;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->j:Landroidx/constraintlayout/a/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/a/a/a/k;->a(Landroidx/constraintlayout/a/a/a/f;)V

    goto/16 :goto_4

    .line 87
    :cond_4
    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/k;->j:Landroidx/constraintlayout/a/a/a/f;

    sget-object v2, Landroidx/constraintlayout/a/a/a/f$a;->TOP:Landroidx/constraintlayout/a/a/a/f$a;

    iput-object v2, v1, Landroidx/constraintlayout/a/a/a/f;->e:Landroidx/constraintlayout/a/a/a/f$a;

    .line 88
    :goto_1
    iget v1, v0, Landroidx/constraintlayout/a/a/a;->aY:I

    if-ge v5, v1, :cond_7

    .line 89
    iget-object v1, v0, Landroidx/constraintlayout/a/a/a;->aX:[Landroidx/constraintlayout/a/a/e;

    aget-object v1, v1, v5

    if-nez v3, :cond_5

    .line 3714
    iget v2, v1, Landroidx/constraintlayout/a/a/e;->ak:I

    if-eq v2, v4, :cond_6

    .line 93
    :cond_5
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->j:Landroidx/constraintlayout/a/a/a/n;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    .line 94
    iget-object v2, v1, Landroidx/constraintlayout/a/a/a/f;->k:Ljava/util/List;

    iget-object v6, p0, Landroidx/constraintlayout/a/a/a/k;->j:Landroidx/constraintlayout/a/a/a/f;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/k;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/a/f;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 98
    :cond_7
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/k;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->j:Landroidx/constraintlayout/a/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/a/a/a/k;->a(Landroidx/constraintlayout/a/a/a/f;)V

    .line 99
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/k;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->j:Landroidx/constraintlayout/a/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/a/a/a/k;->a(Landroidx/constraintlayout/a/a/a/f;)V

    return-void

    .line 72
    :cond_8
    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/k;->j:Landroidx/constraintlayout/a/a/a/f;

    sget-object v2, Landroidx/constraintlayout/a/a/a/f$a;->RIGHT:Landroidx/constraintlayout/a/a/a/f$a;

    iput-object v2, v1, Landroidx/constraintlayout/a/a/a/f;->e:Landroidx/constraintlayout/a/a/a/f$a;

    .line 73
    :goto_2
    iget v1, v0, Landroidx/constraintlayout/a/a/a;->aY:I

    if-ge v5, v1, :cond_b

    .line 74
    iget-object v1, v0, Landroidx/constraintlayout/a/a/a;->aX:[Landroidx/constraintlayout/a/a/e;

    aget-object v1, v1, v5

    if-nez v3, :cond_9

    .line 2714
    iget v2, v1, Landroidx/constraintlayout/a/a/e;->ak:I

    if-eq v2, v4, :cond_a

    .line 78
    :cond_9
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/a/a/l;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/a/l;->k:Landroidx/constraintlayout/a/a/a/f;

    .line 79
    iget-object v2, v1, Landroidx/constraintlayout/a/a/a/f;->k:Ljava/util/List;

    iget-object v6, p0, Landroidx/constraintlayout/a/a/a/k;->j:Landroidx/constraintlayout/a/a/a/f;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/k;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/a/f;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 83
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/k;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/a/a/l;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/l;->j:Landroidx/constraintlayout/a/a/a/f;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/a/a/a/k;->a(Landroidx/constraintlayout/a/a/a/f;)V

    .line 84
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/k;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/a/a/l;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/l;->k:Landroidx/constraintlayout/a/a/a/f;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/a/a/a/k;->a(Landroidx/constraintlayout/a/a/a/f;)V

    return-void

    .line 57
    :cond_c
    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/k;->j:Landroidx/constraintlayout/a/a/a/f;

    sget-object v2, Landroidx/constraintlayout/a/a/a/f$a;->LEFT:Landroidx/constraintlayout/a/a/a/f$a;

    iput-object v2, v1, Landroidx/constraintlayout/a/a/a/f;->e:Landroidx/constraintlayout/a/a/a/f$a;

    .line 58
    :goto_3
    iget v1, v0, Landroidx/constraintlayout/a/a/a;->aY:I

    if-ge v5, v1, :cond_f

    .line 59
    iget-object v1, v0, Landroidx/constraintlayout/a/a/a;->aX:[Landroidx/constraintlayout/a/a/e;

    aget-object v1, v1, v5

    if-nez v3, :cond_d

    .line 1714
    iget v2, v1, Landroidx/constraintlayout/a/a/e;->ak:I

    if-eq v2, v4, :cond_e

    .line 63
    :cond_d
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/a/a/l;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/a/l;->j:Landroidx/constraintlayout/a/a/a/f;

    .line 64
    iget-object v2, v1, Landroidx/constraintlayout/a/a/a/f;->k:Ljava/util/List;

    iget-object v6, p0, Landroidx/constraintlayout/a/a/a/k;->j:Landroidx/constraintlayout/a/a/a/f;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/k;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/a/f;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 68
    :cond_f
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/k;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/a/a/l;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/l;->j:Landroidx/constraintlayout/a/a/a/f;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/a/a/a/k;->a(Landroidx/constraintlayout/a/a/a/f;)V

    .line 69
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/k;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/a/a/l;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/l;->k:Landroidx/constraintlayout/a/a/a/f;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/a/a/a/k;->a(Landroidx/constraintlayout/a/a/a/f;)V

    :cond_10
    :goto_4
    return-void
.end method
