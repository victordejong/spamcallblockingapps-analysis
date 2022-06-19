.class public final Landroidx/e/a/e;
.super Landroidx/e/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/e/a/b<",
        "Landroidx/e/a/e;",
        ">;"
    }
.end annotation


# instance fields
.field public w:Landroidx/e/a/f;

.field private x:F

.field private y:Z


# direct methods
.method public constructor <init>(Landroidx/e/a/d;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Landroidx/e/a/b;-><init>(Landroidx/e/a/d;)V

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Landroidx/e/a/e;->w:Landroidx/e/a/f;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 61
    iput p1, p0, Landroidx/e/a/e;->x:F

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Landroidx/e/a/e;->y:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/e/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/e/a/c<",
            "TK;>;)V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2}, Landroidx/e/a/b;-><init>(Ljava/lang/Object;Landroidx/e/a/c;)V

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Landroidx/e/a/e;->w:Landroidx/e/a/f;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 61
    iput p1, p0, Landroidx/e/a/e;->x:F

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Landroidx/e/a/e;->y:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/e/a/c;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/e/a/c<",
            "TK;>;F)V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Landroidx/e/a/b;-><init>(Ljava/lang/Object;Landroidx/e/a/c;)V

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Landroidx/e/a/e;->w:Landroidx/e/a/f;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 61
    iput p1, p0, Landroidx/e/a/e;->x:F

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Landroidx/e/a/e;->y:Z

    .line 107
    new-instance p1, Landroidx/e/a/f;

    invoke-direct {p1, p3}, Landroidx/e/a/f;-><init>(F)V

    iput-object p1, p0, Landroidx/e/a/e;->w:Landroidx/e/a/f;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1197
    iget-object v0, p0, Landroidx/e/a/e;->w:Landroidx/e/a/f;

    if-eqz v0, :cond_2

    .line 2206
    iget-wide v0, v0, Landroidx/e/a/f;->f:D

    double-to-float v0, v0

    float-to-double v0, v0

    .line 1202
    iget v2, p0, Landroidx/e/a/e;->u:F

    float-to-double v2, v2

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_1

    .line 1205
    iget v2, p0, Landroidx/e/a/e;->v:F

    float-to-double v2, v2

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_0

    .line 135
    iget-object v0, p0, Landroidx/e/a/e;->w:Landroidx/e/a/f;

    invoke-virtual {p0}, Landroidx/e/a/e;->c()F

    move-result v1

    float-to-double v1, v1

    .line 2329
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iput-wide v1, v0, Landroidx/e/a/f;->d:D

    .line 2330
    iget-wide v1, v0, Landroidx/e/a/f;->d:D

    const-wide v3, 0x404f400000000000L    # 62.5

    mul-double v1, v1, v3

    iput-wide v1, v0, Landroidx/e/a/f;->e:D

    .line 136
    invoke-super {p0}, Landroidx/e/a/b;->a()V

    return-void

    .line 1206
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Final position of the spring cannot be less than the min value."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1203
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Final position of the spring cannot be greater than the max value."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1198
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Incomplete SpringAnimation: Either final position or a spring force needs to be set."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(F)V
    .locals 3

    .line 2605
    iget-boolean v0, p0, Landroidx/e/a/b;->t:Z

    if-eqz v0, :cond_0

    .line 153
    iput p1, p0, Landroidx/e/a/e;->x:F

    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Landroidx/e/a/e;->w:Landroidx/e/a/f;

    if-nez v0, :cond_1

    .line 156
    new-instance v0, Landroidx/e/a/f;

    invoke-direct {v0, p1}, Landroidx/e/a/f;-><init>(F)V

    iput-object v0, p0, Landroidx/e/a/e;->w:Landroidx/e/a/f;

    .line 158
    :cond_1
    iget-object v0, p0, Landroidx/e/a/e;->w:Landroidx/e/a/f;

    float-to-double v1, p1

    .line 3196
    iput-wide v1, v0, Landroidx/e/a/f;->f:D

    .line 159
    invoke-virtual {p0}, Landroidx/e/a/e;->a()V

    return-void
.end method

.method final b(J)Z
    .locals 20

    move-object/from16 v0, p0

    .line 215
    iget-boolean v1, v0, Landroidx/e/a/e;->y:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v1, :cond_1

    .line 216
    iget v1, v0, Landroidx/e/a/e;->x:F

    cmpl-float v6, v1, v5

    if-eqz v6, :cond_0

    .line 217
    iget-object v6, v0, Landroidx/e/a/e;->w:Landroidx/e/a/f;

    float-to-double v7, v1

    .line 4196
    iput-wide v7, v6, Landroidx/e/a/f;->f:D

    .line 218
    iput v5, v0, Landroidx/e/a/e;->x:F

    .line 220
    :cond_0
    iget-object v1, v0, Landroidx/e/a/e;->w:Landroidx/e/a/f;

    .line 4206
    iget-wide v5, v1, Landroidx/e/a/f;->f:D

    double-to-float v1, v5

    .line 220
    iput v1, v0, Landroidx/e/a/e;->p:F

    .line 221
    iput v2, v0, Landroidx/e/a/e;->o:F

    .line 222
    iput-boolean v4, v0, Landroidx/e/a/e;->y:Z

    return v3

    .line 226
    :cond_1
    iget v1, v0, Landroidx/e/a/e;->x:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_2

    .line 230
    iget-object v6, v0, Landroidx/e/a/e;->w:Landroidx/e/a/f;

    iget v1, v0, Landroidx/e/a/e;->p:F

    float-to-double v7, v1

    iget v1, v0, Landroidx/e/a/e;->o:F

    float-to-double v9, v1

    const-wide/16 v11, 0x2

    div-long v18, p1, v11

    move-wide/from16 v11, v18

    invoke-virtual/range {v6 .. v12}, Landroidx/e/a/f;->a(DDJ)Landroidx/e/a/b$a;

    move-result-object v1

    .line 231
    iget-object v6, v0, Landroidx/e/a/e;->w:Landroidx/e/a/f;

    iget v7, v0, Landroidx/e/a/e;->x:F

    float-to-double v7, v7

    .line 6196
    iput-wide v7, v6, Landroidx/e/a/f;->f:D

    .line 232
    iput v5, v0, Landroidx/e/a/e;->x:F

    .line 234
    iget-object v13, v0, Landroidx/e/a/e;->w:Landroidx/e/a/f;

    iget v5, v1, Landroidx/e/a/b$a;->a:F

    float-to-double v14, v5

    iget v1, v1, Landroidx/e/a/b$a;->b:F

    float-to-double v5, v1

    move-wide/from16 v16, v5

    invoke-virtual/range {v13 .. v19}, Landroidx/e/a/f;->a(DDJ)Landroidx/e/a/b$a;

    move-result-object v1

    .line 235
    iget v5, v1, Landroidx/e/a/b$a;->a:F

    iput v5, v0, Landroidx/e/a/e;->p:F

    .line 236
    iget v1, v1, Landroidx/e/a/b$a;->b:F

    iput v1, v0, Landroidx/e/a/e;->o:F

    goto :goto_0

    .line 239
    :cond_2
    iget-object v13, v0, Landroidx/e/a/e;->w:Landroidx/e/a/f;

    iget v1, v0, Landroidx/e/a/e;->p:F

    float-to-double v14, v1

    iget v1, v0, Landroidx/e/a/e;->o:F

    float-to-double v5, v1

    move-wide/from16 v16, v5

    move-wide/from16 v18, p1

    invoke-virtual/range {v13 .. v19}, Landroidx/e/a/f;->a(DDJ)Landroidx/e/a/b$a;

    move-result-object v1

    .line 240
    iget v5, v1, Landroidx/e/a/b$a;->a:F

    iput v5, v0, Landroidx/e/a/e;->p:F

    .line 241
    iget v1, v1, Landroidx/e/a/b$a;->b:F

    iput v1, v0, Landroidx/e/a/e;->o:F

    .line 244
    :goto_0
    iget v1, v0, Landroidx/e/a/e;->p:F

    iget v5, v0, Landroidx/e/a/e;->v:F

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Landroidx/e/a/e;->p:F

    .line 245
    iget v1, v0, Landroidx/e/a/e;->p:F

    iget v5, v0, Landroidx/e/a/e;->u:F

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Landroidx/e/a/e;->p:F

    .line 247
    iget v1, v0, Landroidx/e/a/e;->p:F

    iget v5, v0, Landroidx/e/a/e;->o:F

    .line 6262
    iget-object v6, v0, Landroidx/e/a/e;->w:Landroidx/e/a/f;

    .line 7232
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v7, v5

    iget-wide v9, v6, Landroidx/e/a/f;->e:D

    cmpg-double v5, v7, v9

    if-gez v5, :cond_3

    .line 8206
    iget-wide v7, v6, Landroidx/e/a/f;->f:D

    double-to-float v5, v7

    sub-float/2addr v1, v5

    .line 7233
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v7, v1

    iget-wide v5, v6, Landroidx/e/a/f;->d:D

    cmpg-double v1, v7, v5

    if-gez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 248
    iget-object v1, v0, Landroidx/e/a/e;->w:Landroidx/e/a/f;

    .line 9206
    iget-wide v4, v1, Landroidx/e/a/f;->f:D

    double-to-float v1, v4

    .line 248
    iput v1, v0, Landroidx/e/a/e;->p:F

    .line 249
    iput v2, v0, Landroidx/e/a/e;->o:F

    return v3

    :cond_4
    return v4
.end method
