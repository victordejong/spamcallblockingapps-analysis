.class public final Landroidx/constraintlayout/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroidx/constraintlayout/a/a/e;

.field protected b:Landroidx/constraintlayout/a/a/e;

.field protected c:Landroidx/constraintlayout/a/a/e;

.field protected d:Landroidx/constraintlayout/a/a/e;

.field protected e:Landroidx/constraintlayout/a/a/e;

.field protected f:Landroidx/constraintlayout/a/a/e;

.field protected g:Landroidx/constraintlayout/a/a/e;

.field protected h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/a/a/e;",
            ">;"
        }
    .end annotation
.end field

.field protected i:I

.field protected j:I

.field protected k:F

.field l:I

.field m:I

.field n:I

.field o:Z

.field protected p:Z

.field protected q:Z

.field protected r:Z

.field protected s:Z

.field t:Z

.field private u:I

.field private v:Z


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/a/a/e;IZ)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Landroidx/constraintlayout/a/a/c;->k:F

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Landroidx/constraintlayout/a/a/c;->v:Z

    .line 64
    iput-object p1, p0, Landroidx/constraintlayout/a/a/c;->a:Landroidx/constraintlayout/a/a/e;

    .line 65
    iput p2, p0, Landroidx/constraintlayout/a/a/c;->u:I

    .line 66
    iput-boolean p3, p0, Landroidx/constraintlayout/a/a/c;->v:Z

    return-void
.end method


# virtual methods
.method final a()V
    .locals 15

    .line 84
    iget v0, p0, Landroidx/constraintlayout/a/a/c;->u:I

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    .line 85
    iget-object v2, p0, Landroidx/constraintlayout/a/a/c;->a:Landroidx/constraintlayout/a/a/e;

    const/4 v3, 0x1

    .line 86
    iput-boolean v3, p0, Landroidx/constraintlayout/a/a/c;->o:Z

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    :goto_0
    if-nez v6, :cond_17

    .line 93
    iget v7, p0, Landroidx/constraintlayout/a/a/c;->i:I

    add-int/2addr v7, v3

    iput v7, p0, Landroidx/constraintlayout/a/a/c;->i:I

    .line 94
    iget-object v7, v2, Landroidx/constraintlayout/a/a/e;->aD:[Landroidx/constraintlayout/a/a/e;

    iget v8, p0, Landroidx/constraintlayout/a/a/c;->u:I

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 95
    iget-object v7, v2, Landroidx/constraintlayout/a/a/e;->aC:[Landroidx/constraintlayout/a/a/e;

    iget v8, p0, Landroidx/constraintlayout/a/a/c;->u:I

    aput-object v9, v7, v8

    .line 1714
    iget v7, v2, Landroidx/constraintlayout/a/a/e;->ak:I

    const/16 v8, 0x8

    if-eq v7, v8, :cond_12

    .line 97
    iget v7, p0, Landroidx/constraintlayout/a/a/c;->l:I

    add-int/2addr v7, v3

    iput v7, p0, Landroidx/constraintlayout/a/a/c;->l:I

    .line 98
    iget v7, p0, Landroidx/constraintlayout/a/a/c;->u:I

    invoke-virtual {v2, v7}, Landroidx/constraintlayout/a/a/e;->l(I)Landroidx/constraintlayout/a/a/e$a;

    move-result-object v7

    sget-object v10, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-eq v7, v10, :cond_2

    .line 99
    iget v7, p0, Landroidx/constraintlayout/a/a/c;->m:I

    iget v10, p0, Landroidx/constraintlayout/a/a/c;->u:I

    if-nez v10, :cond_0

    .line 1893
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result v10

    goto :goto_1

    :cond_0
    if-ne v10, v3, :cond_1

    .line 1895
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result v10

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    add-int/2addr v7, v10

    .line 99
    iput v7, p0, Landroidx/constraintlayout/a/a/c;->m:I

    .line 101
    :cond_2
    iget v7, p0, Landroidx/constraintlayout/a/a/c;->m:I

    iget-object v10, v2, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v10, v10, v0

    invoke-virtual {v10}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v10

    add-int/2addr v7, v10

    iput v7, p0, Landroidx/constraintlayout/a/a/c;->m:I

    .line 102
    iget-object v10, v2, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    add-int/lit8 v11, v0, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v10

    add-int/2addr v7, v10

    iput v7, p0, Landroidx/constraintlayout/a/a/c;->m:I

    .line 103
    iget v7, p0, Landroidx/constraintlayout/a/a/c;->n:I

    iget-object v10, v2, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v10, v10, v0

    invoke-virtual {v10}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v10

    add-int/2addr v7, v10

    iput v7, p0, Landroidx/constraintlayout/a/a/c;->n:I

    .line 104
    iget-object v10, v2, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v10

    add-int/2addr v7, v10

    iput v7, p0, Landroidx/constraintlayout/a/a/c;->n:I

    .line 106
    iget-object v7, p0, Landroidx/constraintlayout/a/a/c;->b:Landroidx/constraintlayout/a/a/e;

    if-nez v7, :cond_3

    .line 107
    iput-object v2, p0, Landroidx/constraintlayout/a/a/c;->b:Landroidx/constraintlayout/a/a/e;

    .line 109
    :cond_3
    iput-object v2, p0, Landroidx/constraintlayout/a/a/c;->d:Landroidx/constraintlayout/a/a/e;

    .line 112
    iget-object v7, v2, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    iget v10, p0, Landroidx/constraintlayout/a/a/c;->u:I

    aget-object v7, v7, v10

    sget-object v10, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v7, v10, :cond_12

    .line 113
    iget-object v7, v2, Landroidx/constraintlayout/a/a/e;->q:[I

    iget v10, p0, Landroidx/constraintlayout/a/a/c;->u:I

    aget v7, v7, v10

    const/4 v10, 0x3

    const/4 v11, 0x0

    if-eqz v7, :cond_4

    iget-object v7, v2, Landroidx/constraintlayout/a/a/e;->q:[I

    iget v12, p0, Landroidx/constraintlayout/a/a/c;->u:I

    aget v7, v7, v12

    if-eq v7, v10, :cond_4

    iget-object v7, v2, Landroidx/constraintlayout/a/a/e;->q:[I

    iget v12, p0, Landroidx/constraintlayout/a/a/c;->u:I

    aget v7, v7, v12

    if-ne v7, v1, :cond_d

    .line 116
    :cond_4
    iget v7, p0, Landroidx/constraintlayout/a/a/c;->j:I

    add-int/2addr v7, v3

    iput v7, p0, Landroidx/constraintlayout/a/a/c;->j:I

    .line 117
    iget-object v7, v2, Landroidx/constraintlayout/a/a/e;->aB:[F

    iget v12, p0, Landroidx/constraintlayout/a/a/c;->u:I

    aget v7, v7, v12

    cmpl-float v12, v7, v11

    if-lez v12, :cond_5

    .line 119
    iget v12, p0, Landroidx/constraintlayout/a/a/c;->k:F

    iget-object v13, v2, Landroidx/constraintlayout/a/a/e;->aB:[F

    iget v14, p0, Landroidx/constraintlayout/a/a/c;->u:I

    aget v13, v13, v14

    add-float/2addr v12, v13

    iput v12, p0, Landroidx/constraintlayout/a/a/c;->k:F

    .line 122
    :cond_5
    iget v12, p0, Landroidx/constraintlayout/a/a/c;->u:I

    .line 2714
    iget v13, v2, Landroidx/constraintlayout/a/a/e;->ak:I

    if-eq v13, v8, :cond_7

    .line 2077
    iget-object v8, v2, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v8, v8, v12

    sget-object v13, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v8, v13, :cond_7

    iget-object v8, v2, Landroidx/constraintlayout/a/a/e;->q:[I

    aget v8, v8, v12

    if-eqz v8, :cond_6

    iget-object v8, v2, Landroidx/constraintlayout/a/a/e;->q:[I

    aget v8, v8, v12

    if-ne v8, v10, :cond_7

    :cond_6
    const/4 v8, 0x1

    goto :goto_2

    :cond_7
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_a

    cmpg-float v7, v7, v11

    if-gez v7, :cond_8

    .line 124
    iput-boolean v3, p0, Landroidx/constraintlayout/a/a/c;->p:Z

    goto :goto_3

    .line 126
    :cond_8
    iput-boolean v3, p0, Landroidx/constraintlayout/a/a/c;->q:Z

    .line 128
    :goto_3
    iget-object v7, p0, Landroidx/constraintlayout/a/a/c;->h:Ljava/util/ArrayList;

    if-nez v7, :cond_9

    .line 129
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroidx/constraintlayout/a/a/c;->h:Ljava/util/ArrayList;

    .line 131
    :cond_9
    iget-object v7, p0, Landroidx/constraintlayout/a/a/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_a
    iget-object v7, p0, Landroidx/constraintlayout/a/a/c;->f:Landroidx/constraintlayout/a/a/e;

    if-nez v7, :cond_b

    .line 135
    iput-object v2, p0, Landroidx/constraintlayout/a/a/c;->f:Landroidx/constraintlayout/a/a/e;

    .line 137
    :cond_b
    iget-object v7, p0, Landroidx/constraintlayout/a/a/c;->g:Landroidx/constraintlayout/a/a/e;

    if-eqz v7, :cond_c

    .line 138
    iget-object v7, v7, Landroidx/constraintlayout/a/a/e;->aC:[Landroidx/constraintlayout/a/a/e;

    iget v8, p0, Landroidx/constraintlayout/a/a/c;->u:I

    aput-object v2, v7, v8

    .line 140
    :cond_c
    iput-object v2, p0, Landroidx/constraintlayout/a/a/c;->g:Landroidx/constraintlayout/a/a/e;

    .line 142
    :cond_d
    iget v7, p0, Landroidx/constraintlayout/a/a/c;->u:I

    if-nez v7, :cond_f

    .line 143
    iget v7, v2, Landroidx/constraintlayout/a/a/e;->o:I

    if-nez v7, :cond_10

    .line 145
    iget v7, v2, Landroidx/constraintlayout/a/a/e;->r:I

    if-nez v7, :cond_e

    iget v7, v2, Landroidx/constraintlayout/a/a/e;->s:I

    if-eqz v7, :cond_11

    .line 146
    :cond_e
    iput-boolean v4, p0, Landroidx/constraintlayout/a/a/c;->o:Z

    goto :goto_4

    .line 149
    :cond_f
    iget v7, v2, Landroidx/constraintlayout/a/a/e;->p:I

    if-nez v7, :cond_10

    .line 151
    iget v7, v2, Landroidx/constraintlayout/a/a/e;->u:I

    if-nez v7, :cond_10

    iget v7, v2, Landroidx/constraintlayout/a/a/e;->v:I

    if-eqz v7, :cond_11

    .line 152
    :cond_10
    iput-boolean v4, p0, Landroidx/constraintlayout/a/a/c;->o:Z

    .line 155
    :cond_11
    :goto_4
    iget v7, v2, Landroidx/constraintlayout/a/a/e;->V:F

    cmpl-float v7, v7, v11

    if-eqz v7, :cond_12

    .line 157
    iput-boolean v4, p0, Landroidx/constraintlayout/a/a/c;->o:Z

    .line 158
    iput-boolean v3, p0, Landroidx/constraintlayout/a/a/c;->s:Z

    :cond_12
    if-eq v5, v2, :cond_13

    .line 163
    iget-object v5, v5, Landroidx/constraintlayout/a/a/e;->aD:[Landroidx/constraintlayout/a/a/e;

    iget v7, p0, Landroidx/constraintlayout/a/a/c;->u:I

    aput-object v2, v5, v7

    .line 168
    :cond_13
    iget-object v5, v2, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    add-int/lit8 v7, v0, 0x1

    aget-object v5, v5, v7

    iget-object v5, v5, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v5, :cond_15

    .line 170
    iget-object v5, v5, Landroidx/constraintlayout/a/a/d;->d:Landroidx/constraintlayout/a/a/e;

    .line 171
    iget-object v7, v5, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v7, v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-eqz v7, :cond_15

    iget-object v7, v5, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v7, v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    iget-object v7, v7, Landroidx/constraintlayout/a/a/d;->d:Landroidx/constraintlayout/a/a/e;

    if-eq v7, v2, :cond_14

    goto :goto_5

    :cond_14
    move-object v9, v5

    :cond_15
    :goto_5
    if-eqz v9, :cond_16

    move-object v5, v2

    move-object v2, v9

    goto/16 :goto_0

    :cond_16
    move-object v5, v2

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 184
    :cond_17
    iget-object v1, p0, Landroidx/constraintlayout/a/a/c;->b:Landroidx/constraintlayout/a/a/e;

    if-eqz v1, :cond_18

    .line 185
    iget v5, p0, Landroidx/constraintlayout/a/a/c;->m:I

    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v1

    sub-int/2addr v5, v1

    iput v5, p0, Landroidx/constraintlayout/a/a/c;->m:I

    .line 187
    :cond_18
    iget-object v1, p0, Landroidx/constraintlayout/a/a/c;->d:Landroidx/constraintlayout/a/a/e;

    if-eqz v1, :cond_19

    .line 188
    iget v5, p0, Landroidx/constraintlayout/a/a/c;->m:I

    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->P:[Landroidx/constraintlayout/a/a/d;

    add-int/2addr v0, v3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v0

    sub-int/2addr v5, v0

    iput v5, p0, Landroidx/constraintlayout/a/a/c;->m:I

    .line 190
    :cond_19
    iput-object v2, p0, Landroidx/constraintlayout/a/a/c;->c:Landroidx/constraintlayout/a/a/e;

    .line 192
    iget v0, p0, Landroidx/constraintlayout/a/a/c;->u:I

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Landroidx/constraintlayout/a/a/c;->v:Z

    if-eqz v0, :cond_1a

    .line 193
    iput-object v2, p0, Landroidx/constraintlayout/a/a/c;->e:Landroidx/constraintlayout/a/a/e;

    goto :goto_6

    .line 195
    :cond_1a
    iget-object v0, p0, Landroidx/constraintlayout/a/a/c;->a:Landroidx/constraintlayout/a/a/e;

    iput-object v0, p0, Landroidx/constraintlayout/a/a/c;->e:Landroidx/constraintlayout/a/a/e;

    .line 198
    :goto_6
    iget-boolean v0, p0, Landroidx/constraintlayout/a/a/c;->q:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Landroidx/constraintlayout/a/a/c;->p:Z

    if-eqz v0, :cond_1b

    goto :goto_7

    :cond_1b
    const/4 v3, 0x0

    :goto_7
    iput-boolean v3, p0, Landroidx/constraintlayout/a/a/c;->r:Z

    return-void
.end method
