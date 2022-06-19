.class public final Landroidx/constraintlayout/a/a/a/n;
.super Landroidx/constraintlayout/a/a/a/p;
.source "SourceFile"


# instance fields
.field public a:Landroidx/constraintlayout/a/a/a/f;

.field b:Landroidx/constraintlayout/a/a/a/g;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/a/a/e;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Landroidx/constraintlayout/a/a/a/p;-><init>(Landroidx/constraintlayout/a/a/e;)V

    .line 34
    new-instance p1, Landroidx/constraintlayout/a/a/a/f;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/a/a/a/f;-><init>(Landroidx/constraintlayout/a/a/a/p;)V

    iput-object p1, p0, Landroidx/constraintlayout/a/a/a/n;->a:Landroidx/constraintlayout/a/a/a/f;

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Landroidx/constraintlayout/a/a/a/n;->b:Landroidx/constraintlayout/a/a/a/g;

    .line 39
    iget-object p1, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    sget-object v0, Landroidx/constraintlayout/a/a/a/f$a;->TOP:Landroidx/constraintlayout/a/a/a/f$a;

    iput-object v0, p1, Landroidx/constraintlayout/a/a/a/f;->e:Landroidx/constraintlayout/a/a/a/f$a;

    .line 40
    iget-object p1, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    sget-object v0, Landroidx/constraintlayout/a/a/a/f$a;->BOTTOM:Landroidx/constraintlayout/a/a/a/f$a;

    iput-object v0, p1, Landroidx/constraintlayout/a/a/a/f;->e:Landroidx/constraintlayout/a/a/a/f$a;

    .line 41
    iget-object p1, p0, Landroidx/constraintlayout/a/a/a/n;->a:Landroidx/constraintlayout/a/a/a/f;

    sget-object v0, Landroidx/constraintlayout/a/a/a/f$a;->BASELINE:Landroidx/constraintlayout/a/a/a/f$a;

    iput-object v0, p1, Landroidx/constraintlayout/a/a/a/f;->e:Landroidx/constraintlayout/a/a/a/f$a;

    const/4 p1, 0x1

    .line 42
    iput p1, p0, Landroidx/constraintlayout/a/a/a/n;->h:I

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 3

    .line 74
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/p;->f:Landroidx/constraintlayout/a/a/e$a;

    sget-object v1, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 75
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/p;->d:Landroidx/constraintlayout/a/a/e;

    iget v0, v0, Landroidx/constraintlayout/a/a/e;->p:I

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method final c()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->e:Landroidx/constraintlayout/a/a/a/m;

    .line 53
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/a/f;->a()V

    .line 54
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/a/f;->a()V

    .line 55
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->a:Landroidx/constraintlayout/a/a/a/f;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/a/f;->a()V

    .line 56
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/a/g;->a()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Landroidx/constraintlayout/a/a/a/n;->i:Z

    return-void
.end method

.method public final d()V
    .locals 6

    .line 85
    sget-object v0, Landroidx/constraintlayout/a/a/a/n$1;->a:[I

    iget v1, p0, Landroidx/constraintlayout/a/a/a/n;->l:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    .line 98
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/a/g;->c:Z

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/a/g;->j:Z

    if-nez v0, :cond_5

    .line 99
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->f:Landroidx/constraintlayout/a/a/e$a;

    sget-object v5, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v0, v5, :cond_5

    .line 100
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget v0, v0, Landroidx/constraintlayout/a/a/e;->p:I

    const/4 v5, 0x2

    if-eq v0, v5, :cond_4

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    .line 102
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/a/a/l;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/l;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/a/g;->j:Z

    if-eqz v0, :cond_5

    .line 104
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/e;->u()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_2

    .line 110
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/a/a/l;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/l;->g:Landroidx/constraintlayout/a/a/a/g;

    iget v0, v0, Landroidx/constraintlayout/a/a/a/g;->g:I

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    .line 4302
    iget v1, v1, Landroidx/constraintlayout/a/a/e;->V:F

    goto :goto_0

    .line 107
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/a/a/l;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/l;->g:Landroidx/constraintlayout/a/a/a/g;

    iget v0, v0, Landroidx/constraintlayout/a/a/a/g;->g:I

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    .line 3302
    iget v1, v1, Landroidx/constraintlayout/a/a/e;->V:F

    mul-float v0, v0, v1

    goto :goto_1

    .line 113
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/a/a/l;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/l;->g:Landroidx/constraintlayout/a/a/a/g;

    iget v0, v0, Landroidx/constraintlayout/a/a/a/g;->g:I

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    .line 5302
    iget v1, v1, Landroidx/constraintlayout/a/a/e;->V:F

    :goto_0
    div-float/2addr v0, v1

    :goto_1
    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 116
    :goto_2
    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/a/a/a/g;->a(I)V

    goto :goto_3

    .line 120
    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    .line 5620
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->S:Landroidx/constraintlayout/a/a/e;

    if-eqz v0, :cond_5

    .line 122
    iget-object v1, v0, Landroidx/constraintlayout/a/a/e;->j:Landroidx/constraintlayout/a/a/a/n;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-boolean v1, v1, Landroidx/constraintlayout/a/a/a/g;->j:Z

    if-eqz v1, :cond_5

    .line 123
    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget v1, v1, Landroidx/constraintlayout/a/a/e;->w:F

    .line 124
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->j:Landroidx/constraintlayout/a/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget v0, v0, Landroidx/constraintlayout/a/a/a/g;->g:I

    int-to-float v0, v0

    mul-float v0, v0, v1

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 126
    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/a/a/a/g;->a(I)V

    .line 134
    :cond_5
    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/a/f;->c:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/a/f;->c:Z

    if-nez v0, :cond_6

    goto/16 :goto_5

    .line 137
    :cond_6
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/a/f;->j:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/a/f;->j:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/a/g;->j:Z

    if-eqz v0, :cond_7

    return-void

    .line 141
    :cond_7
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/a/g;->j:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->f:Landroidx/constraintlayout/a/a/e$a;

    sget-object v1, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget v0, v0, Landroidx/constraintlayout/a/a/e;->o:I

    if-nez v0, :cond_8

    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    .line 144
    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/e;->x()Z

    move-result v0

    if-nez v0, :cond_8

    .line 146
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/f;->l:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/a/a/a/f;

    .line 147
    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/a/f;->l:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/a/a/a/f;

    .line 148
    iget v0, v0, Landroidx/constraintlayout/a/a/a/f;->g:I

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget v2, v2, Landroidx/constraintlayout/a/a/a/f;->f:I

    add-int/2addr v0, v2

    .line 149
    iget v1, v1, Landroidx/constraintlayout/a/a/a/f;->g:I

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    iget v2, v2, Landroidx/constraintlayout/a/a/a/f;->f:I

    add-int/2addr v1, v2

    sub-int v2, v1, v0

    .line 152
    iget-object v3, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    invoke-virtual {v3, v0}, Landroidx/constraintlayout/a/a/a/f;->a(I)V

    .line 153
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/a/a/a/f;->a(I)V

    .line 154
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/a/a/a/g;->a(I)V

    return-void

    .line 158
    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/a/g;->j:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->f:Landroidx/constraintlayout/a/a/e$a;

    sget-object v1, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v0, v1, :cond_a

    iget v0, p0, Landroidx/constraintlayout/a/a/a/n;->c:I

    if-ne v0, v2, :cond_a

    .line 161
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 162
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/f;->l:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/a/a/a/f;

    .line 163
    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/a/f;->l:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/a/a/a/f;

    .line 164
    iget v0, v0, Landroidx/constraintlayout/a/a/a/f;->g:I

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget v2, v2, Landroidx/constraintlayout/a/a/a/f;->f:I

    add-int/2addr v0, v2

    .line 165
    iget v1, v1, Landroidx/constraintlayout/a/a/a/f;->g:I

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    iget v2, v2, Landroidx/constraintlayout/a/a/a/f;->f:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    .line 167
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget v0, v0, Landroidx/constraintlayout/a/a/a/g;->m:I

    if-ge v1, v0, :cond_9

    .line 168
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/a/a/a/g;->a(I)V

    goto :goto_4

    .line 170
    :cond_9
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget v1, v1, Landroidx/constraintlayout/a/a/a/g;->m:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/a/a/a/g;->a(I)V

    .line 175
    :cond_a
    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/a/g;->j:Z

    if-nez v0, :cond_b

    return-void

    .line 179
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 180
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/f;->l:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/a/a/a/f;

    .line 181
    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/a/f;->l:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/a/a/a/f;

    .line 182
    iget v2, v0, Landroidx/constraintlayout/a/a/a/f;->g:I

    iget-object v4, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget v4, v4, Landroidx/constraintlayout/a/a/a/f;->f:I

    add-int/2addr v2, v4

    .line 183
    iget v4, v1, Landroidx/constraintlayout/a/a/a/f;->g:I

    iget-object v5, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    iget v5, v5, Landroidx/constraintlayout/a/a/a/f;->f:I

    add-int/2addr v4, v5

    .line 184
    iget-object v5, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    .line 6020
    iget v5, v5, Landroidx/constraintlayout/a/a/e;->ai:F

    if-ne v0, v1, :cond_c

    .line 186
    iget v2, v0, Landroidx/constraintlayout/a/a/a/f;->g:I

    .line 187
    iget v4, v1, Landroidx/constraintlayout/a/a/a/f;->g:I

    const/high16 v5, 0x3f000000    # 0.5f

    :cond_c
    sub-int/2addr v4, v2

    .line 192
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget v0, v0, Landroidx/constraintlayout/a/a/a/g;->g:I

    sub-int/2addr v4, v0

    .line 193
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    int-to-float v1, v2

    add-float/2addr v1, v3

    int-to-float v2, v4

    mul-float v2, v2, v5

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/a/a/a/f;->a(I)V

    .line 194
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget v1, v1, Landroidx/constraintlayout/a/a/a/f;->g:I

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget v2, v2, Landroidx/constraintlayout/a/a/a/g;->g:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/a/a/a/f;->a(I)V

    :cond_d
    :goto_5
    return-void

    .line 93
    :cond_e
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->I:Landroidx/constraintlayout/a/a/d;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;I)V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 424
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/a/f;->j:Z

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget v1, v1, Landroidx/constraintlayout/a/a/a/f;->g:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/a/a/e;->f(I)V

    :cond_0
    return-void
.end method

.method final f()V
    .locals 7

    .line 200
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/e;->e:Z

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/a/a/a/g;->a(I)V

    .line 203
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/a/g;->j:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 204
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    .line 6975
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v0, v0, v1

    .line 204
    iput-object v0, p0, Landroidx/constraintlayout/a/a/a/p;->f:Landroidx/constraintlayout/a/a/e$a;

    .line 205
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    .line 7046
    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/e;->C:Z

    if-eqz v0, :cond_1

    .line 206
    new-instance v0, Landroidx/constraintlayout/a/a/a/a;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/a/a/a/a;-><init>(Landroidx/constraintlayout/a/a/a/p;)V

    iput-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->b:Landroidx/constraintlayout/a/a/a/g;

    .line 208
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/p;->f:Landroidx/constraintlayout/a/a/e$a;

    sget-object v2, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-eq v0, v2, :cond_4

    .line 209
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->f:Landroidx/constraintlayout/a/a/e$a;

    sget-object v2, Landroidx/constraintlayout/a/a/e$a;->MATCH_PARENT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v0, v2, :cond_2

    .line 210
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    .line 7620
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->S:Landroidx/constraintlayout/a/a/e;

    if-eqz v0, :cond_2

    .line 7975
    iget-object v2, v0, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v2, v2, v1

    .line 211
    sget-object v3, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    if-ne v2, v3, :cond_2

    .line 212
    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result v1

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/e;->I:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v2

    sub-int/2addr v1, v2

    .line 213
    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v3, v0, Landroidx/constraintlayout/a/a/e;->j:Landroidx/constraintlayout/a/a/a/n;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v4, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v4, v4, Landroidx/constraintlayout/a/a/e;->I:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v4}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;I)V

    .line 214
    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->j:Landroidx/constraintlayout/a/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    iget-object v3, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v3

    neg-int v3, v3

    invoke-static {v2, v0, v3}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;I)V

    .line 215
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/a/a/a/g;->a(I)V

    return-void

    .line 219
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->f:Landroidx/constraintlayout/a/a/e$a;

    sget-object v2, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    if-ne v0, v2, :cond_4

    .line 220
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/a/a/a/g;->a(I)V

    goto :goto_0

    .line 224
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->f:Landroidx/constraintlayout/a/a/e$a;

    sget-object v2, Landroidx/constraintlayout/a/a/e$a;->MATCH_PARENT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v0, v2, :cond_4

    .line 225
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    .line 8620
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->S:Landroidx/constraintlayout/a/a/e;

    if-eqz v0, :cond_4

    .line 8975
    iget-object v2, v0, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v2, v2, v1

    .line 226
    sget-object v3, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    if-ne v2, v3, :cond_4

    .line 227
    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v2, v0, Landroidx/constraintlayout/a/a/e;->j:Landroidx/constraintlayout/a/a/a/n;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v3, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->I:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;I)V

    .line 228
    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->j:Landroidx/constraintlayout/a/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v2

    neg-int v2, v2

    invoke-static {v1, v0, v2}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;I)V

    return-void

    .line 242
    :cond_4
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/a/g;->j:Z

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/e;->e:Z

    if-eqz v0, :cond_11

    .line 243
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v0, v0, v4

    iget-object v0, v0, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v0, v0, v5

    iget-object v0, v0, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v0, :cond_8

    .line 244
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/e;->x()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 245
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/a/a/a/f;->f:I

    .line 246
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroidx/constraintlayout/a/a/a/f;->f:I

    goto :goto_1

    .line 248
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v0, v0, v4

    invoke-static {v0}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/d;)Landroidx/constraintlayout/a/a/a/f;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 250
    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v3, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v3

    invoke-static {v2, v0, v3}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;I)V

    .line 252
    :cond_6
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v0, v0, v5

    invoke-static {v0}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/d;)Landroidx/constraintlayout/a/a/a/f;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 254
    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    iget-object v3, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v3

    neg-int v3, v3

    invoke-static {v2, v0, v3}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;I)V

    .line 256
    :cond_7
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iput-boolean v1, v0, Landroidx/constraintlayout/a/a/a/f;->b:Z

    .line 257
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    iput-boolean v1, v0, Landroidx/constraintlayout/a/a/a/f;->b:Z

    .line 259
    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    .line 9046
    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/e;->C:Z

    if-eqz v0, :cond_1e

    .line 260
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->a:Landroidx/constraintlayout/a/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    .line 9055
    iget v2, v2, Landroidx/constraintlayout/a/a/e;->ad:I

    .line 260
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;I)V

    return-void

    .line 262
    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v0, v0, v4

    iget-object v0, v0, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v0, :cond_a

    .line 263
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v0, v0, v4

    invoke-static {v0}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/d;)Landroidx/constraintlayout/a/a/a/f;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 265
    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v2

    invoke-static {v1, v0, v2}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;I)V

    .line 266
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget v2, v2, Landroidx/constraintlayout/a/a/a/g;->g:I

    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;I)V

    .line 267
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    .line 10046
    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/e;->C:Z

    if-eqz v0, :cond_9

    .line 268
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->a:Landroidx/constraintlayout/a/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    .line 10055
    iget v2, v2, Landroidx/constraintlayout/a/a/e;->ad:I

    .line 268
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;I)V

    :cond_9
    return-void

    .line 271
    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v0, v0, v5

    iget-object v0, v0, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v0, :cond_d

    .line 272
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v0, v0, v5

    invoke-static {v0}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/d;)Landroidx/constraintlayout/a/a/a/f;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 274
    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v2

    neg-int v2, v2

    invoke-static {v1, v0, v2}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;I)V

    .line 275
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget v2, v2, Landroidx/constraintlayout/a/a/a/g;->g:I

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;I)V

    .line 277
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    .line 11046
    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/e;->C:Z

    if-eqz v0, :cond_c

    .line 278
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->a:Landroidx/constraintlayout/a/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    .line 11055
    iget v2, v2, Landroidx/constraintlayout/a/a/e;->ad:I

    .line 278
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;I)V

    :cond_c
    return-void

    .line 280
    :cond_d
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v0, v0, v3

    iget-object v0, v0, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v0, :cond_f

    .line 281
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v0, v0, v3

    invoke-static {v0}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/d;)Landroidx/constraintlayout/a/a/a/f;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 283
    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->a:Landroidx/constraintlayout/a/a/a/f;

    invoke-static {v1, v0, v2}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;I)V

    .line 284
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->a:Landroidx/constraintlayout/a/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    .line 12055
    iget v2, v2, Landroidx/constraintlayout/a/a/e;->ad:I

    neg-int v2, v2

    .line 284
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;I)V

    .line 285
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget v2, v2, Landroidx/constraintlayout/a/a/a/g;->g:I

    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;I)V

    :cond_e
    return-void

    .line 289
    :cond_f
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    instance-of v0, v0, Landroidx/constraintlayout/a/a/i;

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    .line 12620
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->S:Landroidx/constraintlayout/a/a/e;

    if-eqz v0, :cond_1e

    .line 289
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    sget-object v1, Landroidx/constraintlayout/a/a/d$a;->CENTER:Landroidx/constraintlayout/a/a/d$a;

    .line 290
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-nez v0, :cond_1e

    .line 291
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    .line 13620
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->S:Landroidx/constraintlayout/a/a/e;

    .line 291
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->j:Landroidx/constraintlayout/a/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    .line 292
    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/e;->n()I

    move-result v2

    invoke-static {v1, v0, v2}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;I)V

    .line 293
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget v2, v2, Landroidx/constraintlayout/a/a/a/g;->g:I

    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;I)V

    .line 294
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    .line 14046
    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/e;->C:Z

    if-eqz v0, :cond_10

    .line 295
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->a:Landroidx/constraintlayout/a/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    .line 14055
    iget v2, v2, Landroidx/constraintlayout/a/a/e;->ad:I

    .line 295
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;I)V

    :cond_10
    return-void

    .line 300
    :cond_11
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/a/g;->j:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->f:Landroidx/constraintlayout/a/a/e$a;

    sget-object v6, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v0, v6, :cond_14

    .line 301
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget v0, v0, Landroidx/constraintlayout/a/a/e;->p:I

    if-eq v0, v4, :cond_13

    if-eq v0, v5, :cond_12

    goto :goto_2

    .line 303
    :cond_12
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/e;->x()Z

    move-result v0

    if-nez v0, :cond_15

    .line 304
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget v0, v0, Landroidx/constraintlayout/a/a/e;->o:I

    if-eq v0, v5, :cond_15

    .line 310
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/a/a/l;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/l;->g:Landroidx/constraintlayout/a/a/a/g;

    .line 311
    iget-object v6, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-object v6, v6, Landroidx/constraintlayout/a/a/a/g;->l:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/f;->k:Ljava/util/List;

    iget-object v6, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iput-boolean v1, v0, Landroidx/constraintlayout/a/a/a/g;->b:Z

    .line 314
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/g;->k:Ljava/util/List;

    iget-object v6, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/g;->k:Ljava/util/List;

    iget-object v6, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 320
    :cond_13
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    .line 14620
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->S:Landroidx/constraintlayout/a/a/e;

    if-eqz v0, :cond_15

    .line 324
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->j:Landroidx/constraintlayout/a/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    .line 325
    iget-object v6, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-object v6, v6, Landroidx/constraintlayout/a/a/a/g;->l:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/f;->k:Ljava/util/List;

    iget-object v6, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iput-boolean v1, v0, Landroidx/constraintlayout/a/a/a/g;->b:Z

    .line 328
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/g;->k:Ljava/util/List;

    iget-object v6, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/g;->k:Ljava/util/List;

    iget-object v6, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 336
    :cond_14
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/a/a/a/g;->a(Landroidx/constraintlayout/a/a/a/d;)V

    .line 338
    :cond_15
    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v0, v0, v4

    iget-object v0, v0, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v0, v0, v5

    iget-object v0, v0, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v0, :cond_17

    .line 339
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/e;->x()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 340
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v2

    iput v2, v0, Landroidx/constraintlayout/a/a/a/f;->f:I

    .line 341
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v2

    neg-int v2, v2

    iput v2, v0, Landroidx/constraintlayout/a/a/a/f;->f:I

    goto :goto_3

    .line 343
    :cond_16
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v0, v0, v4

    invoke-static {v0}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/d;)Landroidx/constraintlayout/a/a/a/f;

    move-result-object v0

    .line 344
    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v2, v2, v5

    invoke-static {v2}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/d;)Landroidx/constraintlayout/a/a/a/f;

    move-result-object v2

    .line 353
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/a/a/a/f;->a(Landroidx/constraintlayout/a/a/a/d;)V

    .line 354
    invoke-virtual {v2, p0}, Landroidx/constraintlayout/a/a/a/f;->a(Landroidx/constraintlayout/a/a/a/d;)V

    .line 356
    sget v0, Landroidx/constraintlayout/a/a/a/p$a;->d:I

    iput v0, p0, Landroidx/constraintlayout/a/a/a/n;->l:I

    .line 358
    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    .line 15046
    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/e;->C:Z

    if-eqz v0, :cond_1d

    .line 359
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->a:Landroidx/constraintlayout/a/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v3, p0, Landroidx/constraintlayout/a/a/a/n;->b:Landroidx/constraintlayout/a/a/a/g;

    invoke-virtual {p0, v0, v2, v1, v3}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;ILandroidx/constraintlayout/a/a/a/g;)V

    goto/16 :goto_4

    .line 361
    :cond_17
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v0, v0, v4

    iget-object v0, v0, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    const/4 v6, 0x0

    if-eqz v0, :cond_19

    .line 362
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v0, v0, v4

    invoke-static {v0}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/d;)Landroidx/constraintlayout/a/a/a/f;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 364
    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v3, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v3

    invoke-static {v2, v0, v3}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;I)V

    .line 365
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v3, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    invoke-virtual {p0, v0, v2, v1, v3}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;ILandroidx/constraintlayout/a/a/a/g;)V

    .line 366
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    .line 16046
    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/e;->C:Z

    if-eqz v0, :cond_18

    .line 367
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->a:Landroidx/constraintlayout/a/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v3, p0, Landroidx/constraintlayout/a/a/a/n;->b:Landroidx/constraintlayout/a/a/a/g;

    invoke-virtual {p0, v0, v2, v1, v3}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;ILandroidx/constraintlayout/a/a/a/g;)V

    .line 369
    :cond_18
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->f:Landroidx/constraintlayout/a/a/e$a;

    sget-object v2, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v0, v2, :cond_1d

    .line 370
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    .line 16302
    iget v0, v0, Landroidx/constraintlayout/a/a/e;->V:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_1d

    .line 371
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/a/a/l;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/l;->f:Landroidx/constraintlayout/a/a/e$a;

    sget-object v2, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v0, v2, :cond_1d

    .line 372
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/a/a/l;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/l;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/g;->k:Ljava/util/List;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/g;->l:Ljava/util/List;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/a/a/l;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/a/l;->g:Landroidx/constraintlayout/a/a/a/g;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iput-object p0, v0, Landroidx/constraintlayout/a/a/a/g;->a:Landroidx/constraintlayout/a/a/a/d;

    goto/16 :goto_4

    .line 379
    :cond_19
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v0, v0, v5

    iget-object v0, v0, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    const/4 v4, -0x1

    if-eqz v0, :cond_1a

    .line 380
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v0, v0, v5

    invoke-static {v0}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/d;)Landroidx/constraintlayout/a/a/a/f;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 382
    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    iget-object v3, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v3

    neg-int v3, v3

    invoke-static {v2, v0, v3}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;I)V

    .line 383
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    iget-object v3, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    invoke-virtual {p0, v0, v2, v4, v3}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;ILandroidx/constraintlayout/a/a/a/g;)V

    .line 384
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    .line 17046
    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/e;->C:Z

    if-eqz v0, :cond_1d

    .line 385
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->a:Landroidx/constraintlayout/a/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v3, p0, Landroidx/constraintlayout/a/a/a/n;->b:Landroidx/constraintlayout/a/a/a/g;

    invoke-virtual {p0, v0, v2, v1, v3}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;ILandroidx/constraintlayout/a/a/a/g;)V

    goto/16 :goto_4

    .line 388
    :cond_1a
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v0, v0, v3

    iget-object v0, v0, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v0, :cond_1b

    .line 389
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v0, v0, v3

    invoke-static {v0}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/d;)Landroidx/constraintlayout/a/a/a/f;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 391
    iget-object v3, p0, Landroidx/constraintlayout/a/a/a/n;->a:Landroidx/constraintlayout/a/a/a/f;

    invoke-static {v3, v0, v2}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;I)V

    .line 392
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->a:Landroidx/constraintlayout/a/a/a/f;

    iget-object v3, p0, Landroidx/constraintlayout/a/a/a/n;->b:Landroidx/constraintlayout/a/a/a/g;

    invoke-virtual {p0, v0, v2, v4, v3}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;ILandroidx/constraintlayout/a/a/a/g;)V

    .line 393
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v3, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    invoke-virtual {p0, v0, v2, v1, v3}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;ILandroidx/constraintlayout/a/a/a/g;)V

    goto :goto_4

    .line 397
    :cond_1b
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    instance-of v0, v0, Landroidx/constraintlayout/a/a/i;

    if-nez v0, :cond_1d

    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    .line 17620
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->S:Landroidx/constraintlayout/a/a/e;

    if-eqz v0, :cond_1d

    .line 398
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    .line 18620
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->S:Landroidx/constraintlayout/a/a/e;

    .line 398
    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->j:Landroidx/constraintlayout/a/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    .line 399
    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v3, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/e;->n()I

    move-result v3

    invoke-static {v2, v0, v3}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;I)V

    .line 400
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v3, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    invoke-virtual {p0, v0, v2, v1, v3}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;ILandroidx/constraintlayout/a/a/a/g;)V

    .line 401
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    .line 19046
    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/e;->C:Z

    if-eqz v0, :cond_1c

    .line 402
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->a:Landroidx/constraintlayout/a/a/a/f;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-object v3, p0, Landroidx/constraintlayout/a/a/a/n;->b:Landroidx/constraintlayout/a/a/a/g;

    invoke-virtual {p0, v0, v2, v1, v3}, Landroidx/constraintlayout/a/a/a/n;->a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;ILandroidx/constraintlayout/a/a/a/g;)V

    .line 404
    :cond_1c
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->f:Landroidx/constraintlayout/a/a/e$a;

    sget-object v2, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v0, v2, :cond_1d

    .line 405
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    .line 19302
    iget v0, v0, Landroidx/constraintlayout/a/a/e;->V:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_1d

    .line 406
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/a/a/l;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/l;->f:Landroidx/constraintlayout/a/a/e$a;

    sget-object v2, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v0, v2, :cond_1d

    .line 407
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/a/a/l;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/l;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/g;->k:Ljava/util/List;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/g;->l:Ljava/util/List;

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/a/a/l;

    iget-object v2, v2, Landroidx/constraintlayout/a/a/a/l;->g:Landroidx/constraintlayout/a/a/a/g;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iput-object p0, v0, Landroidx/constraintlayout/a/a/a/g;->a:Landroidx/constraintlayout/a/a/a/d;

    .line 417
    :cond_1d
    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/g;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1e

    .line 418
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iput-boolean v1, v0, Landroidx/constraintlayout/a/a/a/g;->c:Z

    :cond_1e
    return-void
.end method

.method public final g()V
    .locals 2

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Landroidx/constraintlayout/a/a/a/n;->i:Z

    .line 63
    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/a/f;->a()V

    .line 64
    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    iput-boolean v0, v1, Landroidx/constraintlayout/a/a/a/f;->j:Z

    .line 65
    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/a/f;->a()V

    .line 66
    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    iput-boolean v0, v1, Landroidx/constraintlayout/a/a/a/f;->j:Z

    .line 67
    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->a:Landroidx/constraintlayout/a/a/a/f;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/a/f;->a()V

    .line 68
    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->a:Landroidx/constraintlayout/a/a/a/f;

    iput-boolean v0, v1, Landroidx/constraintlayout/a/a/a/f;->j:Z

    .line 69
    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iput-boolean v0, v1, Landroidx/constraintlayout/a/a/a/g;->j:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VerticalRun "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->d:Landroidx/constraintlayout/a/a/e;

    .line 2723
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->al:Ljava/lang/String;

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
