.class final Lcom/jjoe64/graphview/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jjoe64/graphview/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jjoe64/graphview/j;


# direct methods
.method constructor <init>(Lcom/jjoe64/graphview/j;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 15

    move-object v0, p0

    .line 129
    iget-object v1, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v1, v1, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/g;->a()D

    move-result-wide v1

    .line 131
    iget-object v3, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-wide v3, v3, Lcom/jjoe64/graphview/j;->g:D

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-eqz v7, :cond_0

    .line 132
    iget-object v3, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-wide v3, v3, Lcom/jjoe64/graphview/j;->g:D

    cmpl-double v7, v1, v3

    if-lez v7, :cond_0

    .line 133
    iget-object v1, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-wide v1, v1, Lcom/jjoe64/graphview/j;->g:D

    .line 137
    :cond_0
    iget-object v3, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v3, v3, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v3, v3, Lcom/jjoe64/graphview/g;->a:D

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double v9, v1, v7

    add-double/2addr v3, v9

    .line 140
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xb

    if-lt v9, v10, :cond_1

    iget-object v9, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-boolean v9, v9, Lcom/jjoe64/graphview/j;->c:Z

    if-eqz v9, :cond_1

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanX()F

    move-result v11

    div-float/2addr v9, v11

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v9

    :goto_0
    float-to-double v11, v9

    div-double/2addr v1, v11

    .line 147
    iget-object v9, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v9, v9, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    div-double v11, v1, v7

    sub-double/2addr v3, v11

    iput-wide v3, v9, Lcom/jjoe64/graphview/g;->a:D

    .line 148
    iget-object v3, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v3, v3, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-object v4, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v4, v4, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v11, v4, Lcom/jjoe64/graphview/g;->a:D

    add-double/2addr v11, v1

    iput-wide v11, v3, Lcom/jjoe64/graphview/g;->b:D

    .line 151
    iget-object v3, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/jjoe64/graphview/j;->a(Z)D

    move-result-wide v11

    .line 152
    iget-object v3, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    .line 1049
    iget-object v3, v3, Lcom/jjoe64/graphview/j;->d:Lcom/jjoe64/graphview/g;

    .line 152
    iget-wide v13, v3, Lcom/jjoe64/graphview/g;->a:D

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_2

    .line 153
    iget-object v3, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    .line 2049
    iget-object v3, v3, Lcom/jjoe64/graphview/j;->d:Lcom/jjoe64/graphview/g;

    .line 153
    iget-wide v13, v3, Lcom/jjoe64/graphview/g;->a:D

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    .line 155
    :cond_2
    iget-object v3, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v3, v3, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v13, v3, Lcom/jjoe64/graphview/g;->a:D

    cmpg-double v3, v13, v11

    if-gez v3, :cond_3

    .line 156
    iget-object v3, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v3, v3, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iput-wide v11, v3, Lcom/jjoe64/graphview/g;->a:D

    .line 157
    iget-object v3, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v3, v3, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-object v9, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v9, v9, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v13, v9, Lcom/jjoe64/graphview/g;->a:D

    add-double/2addr v13, v1

    iput-wide v13, v3, Lcom/jjoe64/graphview/g;->b:D

    .line 161
    :cond_3
    iget-object v3, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    invoke-virtual {v3, v4}, Lcom/jjoe64/graphview/j;->b(Z)D

    move-result-wide v13

    .line 162
    iget-object v3, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    .line 3049
    iget-object v3, v3, Lcom/jjoe64/graphview/j;->d:Lcom/jjoe64/graphview/g;

    .line 162
    iget-wide v7, v3, Lcom/jjoe64/graphview/g;->b:D

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_4

    .line 163
    iget-object v3, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    .line 4049
    iget-object v3, v3, Lcom/jjoe64/graphview/j;->d:Lcom/jjoe64/graphview/g;

    .line 163
    iget-wide v7, v3, Lcom/jjoe64/graphview/g;->b:D

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    :cond_4
    cmpl-double v3, v1, v5

    if-nez v3, :cond_5

    .line 166
    iget-object v3, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v3, v3, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iput-wide v13, v3, Lcom/jjoe64/graphview/g;->b:D

    .line 168
    :cond_5
    iget-object v3, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v3, v3, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v7, v3, Lcom/jjoe64/graphview/g;->a:D

    add-double/2addr v7, v1

    sub-double/2addr v7, v13

    cmpl-double v3, v7, v5

    if-lez v3, :cond_7

    .line 171
    iget-object v3, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v3, v3, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v4, v3, Lcom/jjoe64/graphview/g;->a:D

    sub-double/2addr v4, v7

    cmpl-double v3, v4, v11

    if-lez v3, :cond_6

    .line 172
    iget-object v3, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v3, v3, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v4, v3, Lcom/jjoe64/graphview/g;->a:D

    sub-double/2addr v4, v7

    iput-wide v4, v3, Lcom/jjoe64/graphview/g;->a:D

    .line 173
    iget-object v3, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v3, v3, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-object v4, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v4, v4, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v4, v4, Lcom/jjoe64/graphview/g;->a:D

    add-double/2addr v4, v1

    iput-wide v4, v3, Lcom/jjoe64/graphview/g;->b:D

    goto :goto_1

    .line 176
    :cond_6
    iget-object v1, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v1, v1, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iput-wide v11, v1, Lcom/jjoe64/graphview/g;->a:D

    .line 177
    iget-object v1, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v1, v1, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iput-wide v13, v1, Lcom/jjoe64/graphview/g;->b:D

    .line 183
    :cond_7
    :goto_1
    iget-object v1, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-boolean v1, v1, Lcom/jjoe64/graphview/j;->c:Z

    if-eqz v1, :cond_10

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v10, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanY()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_10

    .line 184
    iget-object v1, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    .line 5049
    iget-object v1, v1, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 184
    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    .line 186
    :goto_2
    iget-object v2, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v2, v2, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    invoke-virtual {v2}, Lcom/jjoe64/graphview/g;->b()D

    move-result-wide v2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    mul-double v2, v2, v4

    .line 188
    iget-object v7, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-wide v7, v7, Lcom/jjoe64/graphview/j;->h:D

    const-wide/16 v9, 0x0

    cmpl-double v11, v7, v9

    if-eqz v11, :cond_9

    .line 189
    iget-object v7, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-wide v7, v7, Lcom/jjoe64/graphview/j;->h:D

    cmpl-double v9, v2, v7

    if-lez v9, :cond_9

    .line 190
    iget-object v2, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-wide v2, v2, Lcom/jjoe64/graphview/j;->h:D

    .line 194
    :cond_9
    iget-object v7, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v7, v7, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v7, v7, Lcom/jjoe64/graphview/g;->d:D

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double v11, v2, v9

    add-double/2addr v7, v11

    .line 196
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanY()F

    move-result v12

    div-float/2addr v11, v12

    float-to-double v11, v11

    div-double/2addr v2, v11

    .line 197
    iget-object v11, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v11, v11, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    div-double v12, v2, v9

    sub-double/2addr v7, v12

    iput-wide v7, v11, Lcom/jjoe64/graphview/g;->d:D

    .line 198
    iget-object v7, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v7, v7, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-object v8, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v8, v8, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v8, v8, Lcom/jjoe64/graphview/g;->d:D

    add-double/2addr v8, v2

    iput-wide v8, v7, Lcom/jjoe64/graphview/g;->c:D

    if-nez v1, :cond_f

    .line 203
    iget-object v1, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/jjoe64/graphview/j;->c(Z)D

    move-result-wide v7

    .line 204
    iget-object v1, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    .line 6049
    iget-object v1, v1, Lcom/jjoe64/graphview/j;->d:Lcom/jjoe64/graphview/g;

    .line 204
    iget-wide v4, v1, Lcom/jjoe64/graphview/g;->d:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_a

    .line 205
    iget-object v1, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    .line 7049
    iget-object v1, v1, Lcom/jjoe64/graphview/j;->d:Lcom/jjoe64/graphview/g;

    .line 205
    iget-wide v4, v1, Lcom/jjoe64/graphview/g;->d:D

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    .line 207
    :cond_a
    iget-object v1, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v1, v1, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v4, v1, Lcom/jjoe64/graphview/g;->d:D

    cmpg-double v1, v4, v7

    if-gez v1, :cond_b

    .line 208
    iget-object v1, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v1, v1, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iput-wide v7, v1, Lcom/jjoe64/graphview/g;->d:D

    .line 209
    iget-object v1, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v1, v1, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-object v4, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v4, v4, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v4, v4, Lcom/jjoe64/graphview/g;->d:D

    add-double/2addr v4, v2

    iput-wide v4, v1, Lcom/jjoe64/graphview/g;->c:D

    .line 213
    :cond_b
    iget-object v1, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/jjoe64/graphview/j;->d(Z)D

    move-result-wide v9

    .line 214
    iget-object v1, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    .line 8049
    iget-object v1, v1, Lcom/jjoe64/graphview/j;->d:Lcom/jjoe64/graphview/g;

    .line 214
    iget-wide v4, v1, Lcom/jjoe64/graphview/g;->c:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_c

    .line 215
    iget-object v1, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    .line 9049
    iget-object v1, v1, Lcom/jjoe64/graphview/j;->d:Lcom/jjoe64/graphview/g;

    .line 215
    iget-wide v4, v1, Lcom/jjoe64/graphview/g;->c:D

    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    :cond_c
    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_d

    .line 218
    iget-object v1, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v1, v1, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iput-wide v9, v1, Lcom/jjoe64/graphview/g;->c:D

    .line 220
    :cond_d
    iget-object v1, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v1, v1, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v4, v1, Lcom/jjoe64/graphview/g;->d:D

    add-double/2addr v4, v2

    sub-double/2addr v4, v9

    const-wide/16 v11, 0x0

    cmpl-double v1, v4, v11

    if-lez v1, :cond_10

    .line 223
    iget-object v1, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v1, v1, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v11, v1, Lcom/jjoe64/graphview/g;->d:D

    sub-double/2addr v11, v4

    cmpl-double v1, v11, v7

    if-lez v1, :cond_e

    .line 224
    iget-object v1, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v1, v1, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v7, v1, Lcom/jjoe64/graphview/g;->d:D

    sub-double/2addr v7, v4

    iput-wide v7, v1, Lcom/jjoe64/graphview/g;->d:D

    .line 225
    iget-object v1, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v1, v1, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-object v4, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v4, v4, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v4, v4, Lcom/jjoe64/graphview/g;->d:D

    add-double/2addr v4, v2

    iput-wide v4, v1, Lcom/jjoe64/graphview/g;->c:D

    goto :goto_3

    .line 228
    :cond_e
    iget-object v1, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v1, v1, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iput-wide v7, v1, Lcom/jjoe64/graphview/g;->d:D

    .line 229
    iget-object v1, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object v1, v1, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iput-wide v9, v1, Lcom/jjoe64/graphview/g;->c:D

    goto :goto_3

    .line 234
    :cond_f
    iget-object v1, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    .line 10049
    iget-object v1, v1, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 234
    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    iget-object v1, v1, Lcom/jjoe64/graphview/h;->e:Lcom/jjoe64/graphview/g;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/g;->b()D

    move-result-wide v1

    mul-double v1, v1, v4

    .line 235
    iget-object v3, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    .line 11049
    iget-object v3, v3, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 235
    iget-object v3, v3, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    iget-object v3, v3, Lcom/jjoe64/graphview/h;->e:Lcom/jjoe64/graphview/g;

    iget-wide v3, v3, Lcom/jjoe64/graphview/g;->d:D

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double v9, v1, v7

    add-double/2addr v3, v9

    .line 236
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanY()F

    move-result v9

    div-float/2addr v5, v9

    float-to-double v9, v5

    div-double/2addr v1, v9

    .line 237
    iget-object v5, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    .line 12049
    iget-object v5, v5, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 237
    iget-object v5, v5, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    iget-object v5, v5, Lcom/jjoe64/graphview/h;->e:Lcom/jjoe64/graphview/g;

    div-double v7, v1, v7

    sub-double/2addr v3, v7

    iput-wide v3, v5, Lcom/jjoe64/graphview/g;->d:D

    .line 238
    iget-object v3, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    .line 13049
    iget-object v3, v3, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 238
    iget-object v3, v3, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    iget-object v3, v3, Lcom/jjoe64/graphview/h;->e:Lcom/jjoe64/graphview/g;

    iget-object v4, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    .line 14049
    iget-object v4, v4, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 238
    iget-object v4, v4, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    iget-object v4, v4, Lcom/jjoe64/graphview/h;->e:Lcom/jjoe64/graphview/g;

    iget-wide v4, v4, Lcom/jjoe64/graphview/g;->d:D

    add-double/2addr v4, v1

    iput-wide v4, v3, Lcom/jjoe64/graphview/g;->c:D

    .line 243
    :cond_10
    :goto_3
    iget-object v1, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    .line 15049
    iget-object v1, v1, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    const/4 v2, 0x1

    .line 243
    invoke-virtual {v1, v2}, Lcom/jjoe64/graphview/GraphView;->a(Z)V

    .line 245
    iget-object v1, v0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    .line 16049
    iget-object v1, v1, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 245
    invoke-static {v1}, Landroidx/core/view/v;->d(Landroid/view/View;)V

    return v2
.end method

.method public final onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .line 259
    iget-object p1, p0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    .line 17049
    iget-object p1, p1, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 17656
    iget-boolean p1, p1, Lcom/jjoe64/graphview/GraphView;->e:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 263
    :cond_0
    iget-object p1, p0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    .line 18049
    iget-boolean p1, p1, Lcom/jjoe64/graphview/j;->l:Z

    if-eqz p1, :cond_1

    .line 264
    iget-object p1, p0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/jjoe64/graphview/j;->j:Z

    :cond_1
    return v0
.end method

.method public final onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    .line 279
    iget-object p1, p0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/jjoe64/graphview/j;->j:Z

    .line 282
    iget-object p1, p0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    iget-object p1, p1, Lcom/jjoe64/graphview/j;->w:Lcom/jjoe64/graphview/j$b;

    if-eqz p1, :cond_0

    .line 283
    iget-object p1, p0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    invoke-virtual {p1, v0}, Lcom/jjoe64/graphview/j;->a(Z)D

    iget-object p1, p0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    invoke-virtual {p1, v0}, Lcom/jjoe64/graphview/j;->b(Z)D

    sget p1, Lcom/jjoe64/graphview/j$b$a;->b:I

    .line 286
    :cond_0
    iget-object p1, p0, Lcom/jjoe64/graphview/j$1;->a:Lcom/jjoe64/graphview/j;

    .line 19049
    iget-object p1, p1, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 286
    invoke-static {p1}, Landroidx/core/view/v;->d(Landroid/view/View;)V

    return-void
.end method
