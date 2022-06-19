.class public abstract Landroidx/constraintlayout/a/a/a/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/a/a/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/a/a/a/p$a;
    }
.end annotation


# instance fields
.field public c:I

.field public d:Landroidx/constraintlayout/a/a/e;

.field e:Landroidx/constraintlayout/a/a/a/m;

.field protected f:Landroidx/constraintlayout/a/a/e$a;

.field public g:Landroidx/constraintlayout/a/a/a/g;

.field public h:I

.field public i:Z

.field public j:Landroidx/constraintlayout/a/a/a/f;

.field public k:Landroidx/constraintlayout/a/a/a/f;

.field protected l:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/a/a/e;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroidx/constraintlayout/a/a/a/g;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/a/a/a/g;-><init>(Landroidx/constraintlayout/a/a/a/p;)V

    iput-object v0, p0, Landroidx/constraintlayout/a/a/a/p;->g:Landroidx/constraintlayout/a/a/a/g;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Landroidx/constraintlayout/a/a/a/p;->h:I

    .line 37
    iput-boolean v0, p0, Landroidx/constraintlayout/a/a/a/p;->i:Z

    .line 38
    new-instance v0, Landroidx/constraintlayout/a/a/a/f;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/a/a/a/f;-><init>(Landroidx/constraintlayout/a/a/a/p;)V

    iput-object v0, p0, Landroidx/constraintlayout/a/a/a/p;->j:Landroidx/constraintlayout/a/a/a/f;

    .line 39
    new-instance v0, Landroidx/constraintlayout/a/a/a/f;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/a/a/a/f;-><init>(Landroidx/constraintlayout/a/a/a/p;)V

    iput-object v0, p0, Landroidx/constraintlayout/a/a/a/p;->k:Landroidx/constraintlayout/a/a/a/f;

    .line 41
    sget v0, Landroidx/constraintlayout/a/a/a/p$a;->a:I

    iput v0, p0, Landroidx/constraintlayout/a/a/a/p;->l:I

    .line 44
    iput-object p1, p0, Landroidx/constraintlayout/a/a/a/p;->d:Landroidx/constraintlayout/a/a/e;

    return-void
.end method

.method protected static a(Landroidx/constraintlayout/a/a/d;)Landroidx/constraintlayout/a/a/a/f;
    .locals 3

    .line 95
    iget-object v0, p0, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 99
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/d;->d:Landroidx/constraintlayout/a/a/e;

    .line 100
    iget-object p0, p0, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    iget-object p0, p0, Landroidx/constraintlayout/a/a/d;->e:Landroidx/constraintlayout/a/a/d$a;

    .line 101
    sget-object v2, Landroidx/constraintlayout/a/a/a/p$1;->a:[I

    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/d$a;->ordinal()I

    move-result p0

    aget p0, v2, p0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_5

    const/4 v2, 0x2

    if-eq p0, v2, :cond_4

    const/4 v2, 0x3

    if-eq p0, v2, :cond_3

    const/4 v2, 0x4

    if-eq p0, v2, :cond_2

    const/4 v2, 0x5

    if-eq p0, v2, :cond_1

    goto :goto_0

    .line 119
    :cond_1
    iget-object p0, v0, Landroidx/constraintlayout/a/a/e;->j:Landroidx/constraintlayout/a/a/a/n;

    .line 120
    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    goto :goto_0

    .line 115
    :cond_2
    iget-object p0, v0, Landroidx/constraintlayout/a/a/e;->j:Landroidx/constraintlayout/a/a/a/n;

    .line 116
    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->a:Landroidx/constraintlayout/a/a/a/f;

    goto :goto_0

    .line 111
    :cond_3
    iget-object p0, v0, Landroidx/constraintlayout/a/a/e;->j:Landroidx/constraintlayout/a/a/a/n;

    .line 112
    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    goto :goto_0

    .line 107
    :cond_4
    iget-object p0, v0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/a/a/l;

    .line 108
    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/l;->k:Landroidx/constraintlayout/a/a/a/f;

    goto :goto_0

    .line 103
    :cond_5
    iget-object p0, v0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/a/a/l;

    .line 104
    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/l;->j:Landroidx/constraintlayout/a/a/a/f;

    :goto_0
    return-object v1
.end method

.method protected static a(Landroidx/constraintlayout/a/a/d;I)Landroidx/constraintlayout/a/a/a/f;
    .locals 2

    .line 258
    iget-object v0, p0, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 262
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/d;->d:Landroidx/constraintlayout/a/a/e;

    if-nez p1, :cond_1

    .line 263
    iget-object p1, v0, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/a/a/l;

    goto :goto_0

    :cond_1
    iget-object p1, v0, Landroidx/constraintlayout/a/a/e;->j:Landroidx/constraintlayout/a/a/a/n;

    .line 265
    :goto_0
    iget-object p0, p0, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    iget-object p0, p0, Landroidx/constraintlayout/a/a/d;->e:Landroidx/constraintlayout/a/a/d$a;

    .line 266
    sget-object v0, Landroidx/constraintlayout/a/a/a/p$1;->a:[I

    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/d$a;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    goto :goto_1

    .line 273
    :cond_2
    iget-object v1, p1, Landroidx/constraintlayout/a/a/a/p;->k:Landroidx/constraintlayout/a/a/a/f;

    goto :goto_1

    .line 269
    :cond_3
    iget-object v1, p1, Landroidx/constraintlayout/a/a/a/p;->j:Landroidx/constraintlayout/a/a/a/f;

    :goto_1
    return-object v1
.end method

.method protected static a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;I)V
    .locals 1

    .line 280
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/f;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iput p2, p0, Landroidx/constraintlayout/a/a/a/f;->f:I

    .line 282
    iget-object p1, p1, Landroidx/constraintlayout/a/a/a/f;->k:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected final a(II)I
    .locals 1

    if-nez p2, :cond_1

    .line 234
    iget-object p2, p0, Landroidx/constraintlayout/a/a/a/p;->d:Landroidx/constraintlayout/a/a/e;

    iget p2, p2, Landroidx/constraintlayout/a/a/e;->s:I

    .line 235
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/p;->d:Landroidx/constraintlayout/a/a/e;

    iget v0, v0, Landroidx/constraintlayout/a/a/e;->r:I

    .line 236
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lez p2, :cond_0

    .line 238
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    if-eq v0, p1, :cond_3

    goto :goto_0

    .line 244
    :cond_1
    iget-object p2, p0, Landroidx/constraintlayout/a/a/a/p;->d:Landroidx/constraintlayout/a/a/e;

    iget p2, p2, Landroidx/constraintlayout/a/a/e;->v:I

    .line 245
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/p;->d:Landroidx/constraintlayout/a/a/e;

    iget v0, v0, Landroidx/constraintlayout/a/a/e;->u:I

    .line 246
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lez p2, :cond_2

    .line 248
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_2
    if-eq v0, p1, :cond_3

    :goto_0
    move p1, v0

    :cond_3
    return p1
.end method

.method protected final a(Landroidx/constraintlayout/a/a/a/f;Landroidx/constraintlayout/a/a/a/f;ILandroidx/constraintlayout/a/a/a/g;)V
    .locals 2

    .line 286
    iget-object v0, p1, Landroidx/constraintlayout/a/a/a/f;->l:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v0, p1, Landroidx/constraintlayout/a/a/a/f;->l:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/p;->g:Landroidx/constraintlayout/a/a/a/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    iput p3, p1, Landroidx/constraintlayout/a/a/a/f;->h:I

    .line 289
    iput-object p4, p1, Landroidx/constraintlayout/a/a/a/f;->i:Landroidx/constraintlayout/a/a/a/g;

    .line 290
    iget-object p2, p2, Landroidx/constraintlayout/a/a/a/f;->k:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object p2, p4, Landroidx/constraintlayout/a/a/a/g;->k:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final a(Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/a/d;I)V
    .locals 8

    .line 127
    invoke-static {p1}, Landroidx/constraintlayout/a/a/a/p;->a(Landroidx/constraintlayout/a/a/d;)Landroidx/constraintlayout/a/a/a/f;

    move-result-object v0

    .line 128
    invoke-static {p2}, Landroidx/constraintlayout/a/a/a/p;->a(Landroidx/constraintlayout/a/a/d;)Landroidx/constraintlayout/a/a/a/f;

    move-result-object v1

    .line 130
    iget-boolean v2, v0, Landroidx/constraintlayout/a/a/a/f;->j:Z

    if-eqz v2, :cond_f

    iget-boolean v2, v1, Landroidx/constraintlayout/a/a/a/f;->j:Z

    if-nez v2, :cond_0

    goto/16 :goto_6

    .line 134
    :cond_0
    iget v2, v0, Landroidx/constraintlayout/a/a/a/f;->g:I

    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result p1

    add-int/2addr v2, p1

    .line 135
    iget p1, v1, Landroidx/constraintlayout/a/a/a/f;->g:I

    invoke-virtual {p2}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result p2

    sub-int/2addr p1, p2

    sub-int p2, p1, v2

    .line 138
    iget-object v3, p0, Landroidx/constraintlayout/a/a/a/p;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-boolean v3, v3, Landroidx/constraintlayout/a/a/a/g;->j:Z

    const/high16 v4, 0x3f000000    # 0.5f

    if-nez v3, :cond_a

    iget-object v3, p0, Landroidx/constraintlayout/a/a/a/p;->f:Landroidx/constraintlayout/a/a/e$a;

    sget-object v5, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v3, v5, :cond_a

    .line 2171
    iget v3, p0, Landroidx/constraintlayout/a/a/a/p;->c:I

    if-eqz v3, :cond_9

    const/4 v5, 0x1

    if-eq v3, v5, :cond_8

    const/4 v6, 0x2

    if-eq v3, v6, :cond_5

    const/4 v6, 0x3

    if-eq v3, v6, :cond_1

    goto/16 :goto_4

    .line 2199
    :cond_1
    iget-object v3, p0, Landroidx/constraintlayout/a/a/a/p;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/a/a/l;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/a/l;->f:Landroidx/constraintlayout/a/a/e$a;

    sget-object v7, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v3, v7, :cond_2

    iget-object v3, p0, Landroidx/constraintlayout/a/a/a/p;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/a/a/l;

    iget v3, v3, Landroidx/constraintlayout/a/a/a/l;->c:I

    if-ne v3, v6, :cond_2

    iget-object v3, p0, Landroidx/constraintlayout/a/a/a/p;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->j:Landroidx/constraintlayout/a/a/a/n;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/a/n;->f:Landroidx/constraintlayout/a/a/e$a;

    sget-object v7, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v3, v7, :cond_2

    iget-object v3, p0, Landroidx/constraintlayout/a/a/a/p;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->j:Landroidx/constraintlayout/a/a/a/n;

    iget v3, v3, Landroidx/constraintlayout/a/a/a/n;->c:I

    if-eq v3, v6, :cond_a

    .line 2205
    :cond_2
    iget-object v3, p0, Landroidx/constraintlayout/a/a/a/p;->d:Landroidx/constraintlayout/a/a/e;

    if-nez p3, :cond_3

    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->j:Landroidx/constraintlayout/a/a/a/n;

    goto :goto_0

    :cond_3
    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/a/a/l;

    .line 2206
    :goto_0
    iget-object v6, v3, Landroidx/constraintlayout/a/a/a/p;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-boolean v6, v6, Landroidx/constraintlayout/a/a/a/g;->j:Z

    if-eqz v6, :cond_a

    .line 2207
    iget-object v6, p0, Landroidx/constraintlayout/a/a/a/p;->d:Landroidx/constraintlayout/a/a/e;

    .line 3302
    iget v6, v6, Landroidx/constraintlayout/a/a/e;->V:F

    if-ne p3, v5, :cond_4

    .line 2210
    iget-object v3, v3, Landroidx/constraintlayout/a/a/a/p;->g:Landroidx/constraintlayout/a/a/a/g;

    iget v3, v3, Landroidx/constraintlayout/a/a/a/g;->g:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    add-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_1

    .line 2212
    :cond_4
    iget-object v3, v3, Landroidx/constraintlayout/a/a/a/p;->g:Landroidx/constraintlayout/a/a/a/g;

    iget v3, v3, Landroidx/constraintlayout/a/a/a/g;->g:I

    int-to-float v3, v3

    mul-float v6, v6, v3

    add-float/2addr v6, v4

    float-to-int v3, v6

    .line 2214
    :goto_1
    iget-object v5, p0, Landroidx/constraintlayout/a/a/a/p;->g:Landroidx/constraintlayout/a/a/a/g;

    invoke-virtual {v5, v3}, Landroidx/constraintlayout/a/a/a/g;->a(I)V

    goto :goto_4

    .line 2177
    :cond_5
    iget-object v3, p0, Landroidx/constraintlayout/a/a/a/p;->d:Landroidx/constraintlayout/a/a/e;

    .line 2620
    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->S:Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_a

    if-nez p3, :cond_6

    .line 2179
    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/a/a/l;

    goto :goto_2

    :cond_6
    iget-object v3, v3, Landroidx/constraintlayout/a/a/e;->j:Landroidx/constraintlayout/a/a/a/n;

    .line 2182
    :goto_2
    iget-object v5, v3, Landroidx/constraintlayout/a/a/a/p;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-boolean v5, v5, Landroidx/constraintlayout/a/a/a/g;->j:Z

    if-eqz v5, :cond_a

    .line 2183
    iget-object v5, p0, Landroidx/constraintlayout/a/a/a/p;->d:Landroidx/constraintlayout/a/a/e;

    if-nez p3, :cond_7

    iget v5, v5, Landroidx/constraintlayout/a/a/e;->t:F

    goto :goto_3

    :cond_7
    iget v5, v5, Landroidx/constraintlayout/a/a/e;->w:F

    .line 2186
    :goto_3
    iget-object v3, v3, Landroidx/constraintlayout/a/a/a/p;->g:Landroidx/constraintlayout/a/a/a/g;

    iget v3, v3, Landroidx/constraintlayout/a/a/a/g;->g:I

    int-to-float v3, v3

    mul-float v3, v3, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 2188
    iget-object v5, p0, Landroidx/constraintlayout/a/a/a/p;->g:Landroidx/constraintlayout/a/a/a/g;

    invoke-virtual {p0, v3, p3}, Landroidx/constraintlayout/a/a/a/p;->a(II)I

    move-result v3

    invoke-virtual {v5, v3}, Landroidx/constraintlayout/a/a/a/g;->a(I)V

    goto :goto_4

    .line 2194
    :cond_8
    iget-object v3, p0, Landroidx/constraintlayout/a/a/a/p;->g:Landroidx/constraintlayout/a/a/a/g;

    iget v3, v3, Landroidx/constraintlayout/a/a/a/g;->m:I

    invoke-virtual {p0, v3, p3}, Landroidx/constraintlayout/a/a/a/p;->a(II)I

    move-result v3

    .line 2195
    iget-object v5, p0, Landroidx/constraintlayout/a/a/a/p;->g:Landroidx/constraintlayout/a/a/a/g;

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v5, v3}, Landroidx/constraintlayout/a/a/a/g;->a(I)V

    goto :goto_4

    .line 2173
    :cond_9
    iget-object v3, p0, Landroidx/constraintlayout/a/a/a/p;->g:Landroidx/constraintlayout/a/a/a/g;

    invoke-virtual {p0, p2, p3}, Landroidx/constraintlayout/a/a/a/p;->a(II)I

    move-result v5

    invoke-virtual {v3, v5}, Landroidx/constraintlayout/a/a/a/g;->a(I)V

    .line 143
    :cond_a
    :goto_4
    iget-object v3, p0, Landroidx/constraintlayout/a/a/a/p;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-boolean v3, v3, Landroidx/constraintlayout/a/a/a/g;->j:Z

    if-nez v3, :cond_b

    return-void

    .line 147
    :cond_b
    iget-object v3, p0, Landroidx/constraintlayout/a/a/a/p;->g:Landroidx/constraintlayout/a/a/a/g;

    iget v3, v3, Landroidx/constraintlayout/a/a/a/g;->g:I

    if-ne v3, p2, :cond_c

    .line 148
    iget-object p2, p0, Landroidx/constraintlayout/a/a/a/p;->j:Landroidx/constraintlayout/a/a/a/f;

    invoke-virtual {p2, v2}, Landroidx/constraintlayout/a/a/a/f;->a(I)V

    .line 149
    iget-object p2, p0, Landroidx/constraintlayout/a/a/a/p;->k:Landroidx/constraintlayout/a/a/a/f;

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/a/a/a/f;->a(I)V

    return-void

    .line 154
    :cond_c
    iget-object p2, p0, Landroidx/constraintlayout/a/a/a/p;->d:Landroidx/constraintlayout/a/a/e;

    if-nez p3, :cond_d

    .line 4010
    iget p2, p2, Landroidx/constraintlayout/a/a/e;->ah:F

    goto :goto_5

    .line 4020
    :cond_d
    iget p2, p2, Landroidx/constraintlayout/a/a/e;->ai:F

    :goto_5
    if-ne v0, v1, :cond_e

    .line 158
    iget v2, v0, Landroidx/constraintlayout/a/a/a/f;->g:I

    .line 159
    iget p1, v1, Landroidx/constraintlayout/a/a/a/f;->g:I

    const/high16 p2, 0x3f000000    # 0.5f

    :cond_e
    sub-int/2addr p1, v2

    .line 165
    iget-object p3, p0, Landroidx/constraintlayout/a/a/a/p;->g:Landroidx/constraintlayout/a/a/a/g;

    iget p3, p3, Landroidx/constraintlayout/a/a/a/g;->g:I

    sub-int/2addr p1, p3

    .line 166
    iget-object p3, p0, Landroidx/constraintlayout/a/a/a/p;->j:Landroidx/constraintlayout/a/a/a/f;

    int-to-float v0, v2

    add-float/2addr v0, v4

    int-to-float p1, p1

    mul-float p1, p1, p2

    add-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {p3, p1}, Landroidx/constraintlayout/a/a/a/f;->a(I)V

    .line 167
    iget-object p1, p0, Landroidx/constraintlayout/a/a/a/p;->k:Landroidx/constraintlayout/a/a/a/f;

    iget-object p2, p0, Landroidx/constraintlayout/a/a/a/p;->j:Landroidx/constraintlayout/a/a/a/f;

    iget p2, p2, Landroidx/constraintlayout/a/a/a/f;->g:I

    iget-object p3, p0, Landroidx/constraintlayout/a/a/a/p;->g:Landroidx/constraintlayout/a/a/a/g;

    iget p3, p3, Landroidx/constraintlayout/a/a/a/g;->g:I

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/a/a/a/f;->a(I)V

    :cond_f
    :goto_6
    return-void
.end method

.method public abstract a()Z
.end method

.method public b()J
    .locals 2

    .line 295
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/p;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/a/g;->j:Z

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/p;->g:Landroidx/constraintlayout/a/a/a/g;

    iget v0, v0, Landroidx/constraintlayout/a/a/a/g;->g:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method abstract c()V
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public abstract e()V
.end method

.method abstract f()V
.end method
