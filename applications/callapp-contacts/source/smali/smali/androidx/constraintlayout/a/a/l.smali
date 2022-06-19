.class public Landroidx/constraintlayout/a/a/l;
.super Landroidx/constraintlayout/a/a/j;
.source "SourceFile"


# instance fields
.field private a:I

.field public aZ:I

.field private b:I

.field public ba:I

.field public bb:I

.field public bc:I

.field public bd:I

.field public be:I

.field public bf:Z

.field public bg:I

.field public bh:I

.field protected bi:Landroidx/constraintlayout/a/a/a/b$a;

.field bj:Landroidx/constraintlayout/a/a/a/b$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroidx/constraintlayout/a/a/j;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Landroidx/constraintlayout/a/a/l;->aZ:I

    .line 29
    iput v0, p0, Landroidx/constraintlayout/a/a/l;->ba:I

    .line 30
    iput v0, p0, Landroidx/constraintlayout/a/a/l;->a:I

    .line 31
    iput v0, p0, Landroidx/constraintlayout/a/a/l;->b:I

    .line 32
    iput v0, p0, Landroidx/constraintlayout/a/a/l;->bb:I

    .line 33
    iput v0, p0, Landroidx/constraintlayout/a/a/l;->bc:I

    .line 34
    iput v0, p0, Landroidx/constraintlayout/a/a/l;->bd:I

    .line 35
    iput v0, p0, Landroidx/constraintlayout/a/a/l;->be:I

    .line 37
    iput-boolean v0, p0, Landroidx/constraintlayout/a/a/l;->bf:Z

    .line 38
    iput v0, p0, Landroidx/constraintlayout/a/a/l;->bg:I

    .line 39
    iput v0, p0, Landroidx/constraintlayout/a/a/l;->bh:I

    .line 41
    new-instance v0, Landroidx/constraintlayout/a/a/a/b$a;

    invoke-direct {v0}, Landroidx/constraintlayout/a/a/a/b$a;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/a/a/l;->bi:Landroidx/constraintlayout/a/a/a/b$a;

    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Landroidx/constraintlayout/a/a/l;->bj:Landroidx/constraintlayout/a/a/a/b$b;

    return-void
.end method


# virtual methods
.method public a(IIII)V
    .locals 0

    return-void
.end method

.method protected final a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/e$a;ILandroidx/constraintlayout/a/a/e$a;I)V
    .locals 1

    .line 207
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/a/a/l;->bj:Landroidx/constraintlayout/a/a/a/b$b;

    if-nez v0, :cond_0

    .line 1620
    iget-object v0, p0, Landroidx/constraintlayout/a/a/e;->S:Landroidx/constraintlayout/a/a/e;

    if-eqz v0, :cond_0

    .line 2620
    iget-object v0, p0, Landroidx/constraintlayout/a/a/e;->S:Landroidx/constraintlayout/a/a/e;

    .line 208
    check-cast v0, Landroidx/constraintlayout/a/a/f;

    .line 209
    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/f;->f()Landroidx/constraintlayout/a/a/a/b$b;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/a/a/l;->bj:Landroidx/constraintlayout/a/a/a/b$b;

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/a/a/l;->bi:Landroidx/constraintlayout/a/a/a/b$a;

    iput-object p2, v0, Landroidx/constraintlayout/a/a/a/b$a;->d:Landroidx/constraintlayout/a/a/e$a;

    .line 212
    iget-object p2, p0, Landroidx/constraintlayout/a/a/l;->bi:Landroidx/constraintlayout/a/a/a/b$a;

    iput-object p4, p2, Landroidx/constraintlayout/a/a/a/b$a;->e:Landroidx/constraintlayout/a/a/e$a;

    .line 213
    iget-object p2, p0, Landroidx/constraintlayout/a/a/l;->bi:Landroidx/constraintlayout/a/a/a/b$a;

    iput p3, p2, Landroidx/constraintlayout/a/a/a/b$a;->f:I

    .line 214
    iget-object p2, p0, Landroidx/constraintlayout/a/a/l;->bi:Landroidx/constraintlayout/a/a/a/b$a;

    iput p5, p2, Landroidx/constraintlayout/a/a/a/b$a;->g:I

    .line 215
    iget-object p2, p0, Landroidx/constraintlayout/a/a/l;->bj:Landroidx/constraintlayout/a/a/a/b$b;

    iget-object p3, p0, Landroidx/constraintlayout/a/a/l;->bi:Landroidx/constraintlayout/a/a/a/b$a;

    invoke-interface {p2, p1, p3}, Landroidx/constraintlayout/a/a/a/b$b;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$a;)V

    .line 216
    iget-object p2, p0, Landroidx/constraintlayout/a/a/l;->bi:Landroidx/constraintlayout/a/a/a/b$a;

    iget p2, p2, Landroidx/constraintlayout/a/a/a/b$a;->h:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/a/a/e;->g(I)V

    .line 217
    iget-object p2, p0, Landroidx/constraintlayout/a/a/l;->bi:Landroidx/constraintlayout/a/a/a/b$a;

    iget p2, p2, Landroidx/constraintlayout/a/a/a/b$a;->i:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/a/a/e;->h(I)V

    .line 218
    iget-object p2, p0, Landroidx/constraintlayout/a/a/l;->bi:Landroidx/constraintlayout/a/a/a/b$a;

    iget-boolean p2, p2, Landroidx/constraintlayout/a/a/a/b$a;->k:Z

    .line 3288
    iput-boolean p2, p1, Landroidx/constraintlayout/a/a/e;->C:Z

    .line 219
    iget-object p2, p0, Landroidx/constraintlayout/a/a/l;->bi:Landroidx/constraintlayout/a/a/a/b$a;

    iget p2, p2, Landroidx/constraintlayout/a/a/a/b$a;->j:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/a/a/e;->k(I)V

    return-void
.end method

.method public final d()V
    .locals 3

    const/4 v0, 0x0

    .line 130
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/a/a/l;->aY:I

    if-ge v0, v1, :cond_1

    .line 131
    iget-object v1, p0, Landroidx/constraintlayout/a/a/l;->aX:[Landroidx/constraintlayout/a/a/e;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 1252
    iput-boolean v2, v1, Landroidx/constraintlayout/a/a/e;->E:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final e()Z
    .locals 8

    .line 153
    iget-object v0, p0, Landroidx/constraintlayout/a/a/l;->S:Landroidx/constraintlayout/a/a/e;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Landroidx/constraintlayout/a/a/l;->S:Landroidx/constraintlayout/a/a/e;

    check-cast v0, Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/f;->f()Landroidx/constraintlayout/a/a/a/b$b;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    .line 160
    :goto_1
    iget v3, p0, Landroidx/constraintlayout/a/a/l;->aY:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_6

    .line 161
    iget-object v3, p0, Landroidx/constraintlayout/a/a/l;->aX:[Landroidx/constraintlayout/a/a/e;

    aget-object v3, v3, v2

    if-eqz v3, :cond_5

    .line 166
    instance-of v5, v3, Landroidx/constraintlayout/a/a/h;

    if-nez v5, :cond_5

    .line 170
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/a/a/e;->l(I)Landroidx/constraintlayout/a/a/e$a;

    move-result-object v5

    .line 171
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/a/a/e;->l(I)Landroidx/constraintlayout/a/a/e$a;

    move-result-object v6

    .line 173
    sget-object v7, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v5, v7, :cond_2

    iget v7, v3, Landroidx/constraintlayout/a/a/e;->o:I

    if-eq v7, v4, :cond_2

    sget-object v7, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v6, v7, :cond_2

    iget v7, v3, Landroidx/constraintlayout/a/a/e;->p:I

    if-eq v7, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_5

    .line 184
    sget-object v4, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v5, v4, :cond_3

    .line 185
    sget-object v5, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    .line 187
    :cond_3
    sget-object v4, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v6, v4, :cond_4

    .line 188
    sget-object v6, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    .line 190
    :cond_4
    iget-object v4, p0, Landroidx/constraintlayout/a/a/l;->bi:Landroidx/constraintlayout/a/a/a/b$a;

    iput-object v5, v4, Landroidx/constraintlayout/a/a/a/b$a;->d:Landroidx/constraintlayout/a/a/e$a;

    .line 191
    iget-object v4, p0, Landroidx/constraintlayout/a/a/l;->bi:Landroidx/constraintlayout/a/a/a/b$a;

    iput-object v6, v4, Landroidx/constraintlayout/a/a/a/b$a;->e:Landroidx/constraintlayout/a/a/e$a;

    .line 192
    iget-object v4, p0, Landroidx/constraintlayout/a/a/l;->bi:Landroidx/constraintlayout/a/a/a/b$a;

    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result v5

    iput v5, v4, Landroidx/constraintlayout/a/a/a/b$a;->f:I

    .line 193
    iget-object v4, p0, Landroidx/constraintlayout/a/a/l;->bi:Landroidx/constraintlayout/a/a/a/b$a;

    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result v5

    iput v5, v4, Landroidx/constraintlayout/a/a/a/b$a;->g:I

    .line 194
    iget-object v4, p0, Landroidx/constraintlayout/a/a/l;->bi:Landroidx/constraintlayout/a/a/a/b$a;

    invoke-interface {v0, v3, v4}, Landroidx/constraintlayout/a/a/a/b$b;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$a;)V

    .line 195
    iget-object v4, p0, Landroidx/constraintlayout/a/a/l;->bi:Landroidx/constraintlayout/a/a/a/b$a;

    iget v4, v4, Landroidx/constraintlayout/a/a/a/b$a;->h:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/a/a/e;->g(I)V

    .line 196
    iget-object v4, p0, Landroidx/constraintlayout/a/a/l;->bi:Landroidx/constraintlayout/a/a/a/b$a;

    iget v4, v4, Landroidx/constraintlayout/a/a/a/b$a;->i:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/a/a/e;->h(I)V

    .line 197
    iget-object v4, p0, Landroidx/constraintlayout/a/a/l;->bi:Landroidx/constraintlayout/a/a/a/b$a;

    iget v4, v4, Landroidx/constraintlayout/a/a/a/b$a;->j:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/a/a/e;->k(I)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return v4
.end method

.method public final f_()V
    .locals 0

    .line 126
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/l;->d()V

    return-void
.end method

.method public final g(II)V
    .locals 0

    .line 147
    iput p1, p0, Landroidx/constraintlayout/a/a/l;->bg:I

    .line 148
    iput p2, p0, Landroidx/constraintlayout/a/a/l;->bh:I

    return-void
.end method

.method public final p(I)V
    .locals 0

    .line 48
    iput p1, p0, Landroidx/constraintlayout/a/a/l;->a:I

    .line 49
    iput p1, p0, Landroidx/constraintlayout/a/a/l;->aZ:I

    .line 50
    iput p1, p0, Landroidx/constraintlayout/a/a/l;->b:I

    .line 51
    iput p1, p0, Landroidx/constraintlayout/a/a/l;->ba:I

    .line 52
    iput p1, p0, Landroidx/constraintlayout/a/a/l;->bb:I

    .line 53
    iput p1, p0, Landroidx/constraintlayout/a/a/l;->bc:I

    return-void
.end method

.method public final q(I)V
    .locals 0

    .line 67
    iput p1, p0, Landroidx/constraintlayout/a/a/l;->a:I

    .line 68
    iput p1, p0, Landroidx/constraintlayout/a/a/l;->bd:I

    return-void
.end method

.method public final r(I)V
    .locals 0

    .line 88
    iput p1, p0, Landroidx/constraintlayout/a/a/l;->b:I

    .line 89
    iput p1, p0, Landroidx/constraintlayout/a/a/l;->be:I

    return-void
.end method
