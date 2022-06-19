.class final Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/SubtitleView$a;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/ui/f;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:F

.field private e:Lcom/google/android/exoplayer2/text/a;

.field private f:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->a:Ljava/util/List;

    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->b:Ljava/util/List;

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->c:I

    const p1, 0x3d5a511a    # 0.0533f

    .line 55
    iput p1, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->d:F

    .line 56
    sget-object p1, Lcom/google/android/exoplayer2/text/a;->a:Lcom/google/android/exoplayer2/text/a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->e:Lcom/google/android/exoplayer2/text/a;

    const p1, 0x3da3d70a    # 0.08f

    .line 57
    iput p1, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->f:F

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/google/android/exoplayer2/text/a;FIF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;",
            "Lcom/google/android/exoplayer2/text/a;",
            "FIF)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->b:Ljava/util/List;

    .line 68
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->e:Lcom/google/android/exoplayer2/text/a;

    .line 69
    iput p3, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->d:F

    .line 70
    iput p4, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->c:I

    .line 71
    iput p5, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->f:F

    .line 73
    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 74
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->a:Ljava/util/List;

    new-instance p3, Lcom/google/android/exoplayer2/ui/f;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Lcom/google/android/exoplayer2/ui/f;-><init>(Landroid/content/Context;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->invalidate()V

    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 82
    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->b:Ljava/util/List;

    .line 83
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->getHeight()I

    move-result v9

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->getPaddingLeft()I

    move-result v10

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->getPaddingTop()I

    move-result v11

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->getPaddingRight()I

    move-result v2

    sub-int v12, v1, v2

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->getPaddingBottom()I

    move-result v1

    sub-int v13, v9, v1

    if-le v13, v11, :cond_36

    if-gt v12, v10, :cond_1

    goto/16 :goto_22

    :cond_1
    sub-int v14, v13, v11

    .line 100
    iget v1, v0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->c:I

    iget v2, v0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->d:F

    .line 101
    invoke-static {v1, v2, v9, v14}, Lcom/google/android/exoplayer2/ui/g;->a(IFII)F

    move-result v15

    const/4 v6, 0x0

    cmpg-float v1, v15, v6

    if-gtz v1, :cond_2

    return-void

    .line 108
    :cond_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_36

    .line 110
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/b;

    .line 111
    iget v2, v1, Lcom/google/android/exoplayer2/text/b;->p:I

    const/high16 v4, -0x80000000

    const/high16 v17, 0x3f800000    # 1.0f

    if-eq v2, v4, :cond_6

    .line 1149
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/b;->a()Lcom/google/android/exoplayer2/text/b$a;

    move-result-object v2

    const v6, -0x800001

    .line 1655
    iput v6, v2, Lcom/google/android/exoplayer2/text/b$a;->e:F

    .line 1675
    iput v4, v2, Lcom/google/android/exoplayer2/text/b$a;->f:I

    const/4 v4, 0x0

    .line 2581
    iput-object v4, v2, Lcom/google/android/exoplayer2/text/b$a;->c:Landroid/text/Layout$Alignment;

    .line 1154
    iget v4, v1, Lcom/google/android/exoplayer2/text/b;->f:I

    if-nez v4, :cond_3

    .line 1155
    iget v4, v1, Lcom/google/android/exoplayer2/text/b;->e:F

    sub-float v4, v17, v4

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Lcom/google/android/exoplayer2/text/b$a;->a(FI)Lcom/google/android/exoplayer2/text/b$a;

    goto :goto_1

    .line 1157
    :cond_3
    iget v4, v1, Lcom/google/android/exoplayer2/text/b;->e:F

    neg-float v4, v4

    sub-float v4, v4, v17

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v6}, Lcom/google/android/exoplayer2/text/b$a;->a(FI)Lcom/google/android/exoplayer2/text/b$a;

    .line 1159
    :goto_1
    iget v1, v1, Lcom/google/android/exoplayer2/text/b;->g:I

    if-eqz v1, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 2634
    iput v1, v2, Lcom/google/android/exoplayer2/text/b$a;->d:I

    goto :goto_2

    :cond_5
    const/4 v4, 0x2

    .line 3634
    iput v4, v2, Lcom/google/android/exoplayer2/text/b$a;->d:I

    .line 1171
    :goto_2
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/text/b$a;->a()Lcom/google/android/exoplayer2/text/b;

    move-result-object v1

    .line 114
    :cond_6
    iget v2, v1, Lcom/google/android/exoplayer2/text/b;->n:I

    iget v4, v1, Lcom/google/android/exoplayer2/text/b;->o:F

    .line 115
    invoke-static {v2, v4, v9, v14}, Lcom/google/android/exoplayer2/ui/g;->a(IFII)F

    move-result v2

    .line 117
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/google/android/exoplayer2/ui/f;

    .line 118
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->e:Lcom/google/android/exoplayer2/text/a;

    move/from16 v19, v3

    iget v3, v0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->f:F

    .line 4165
    iget-object v0, v1, Lcom/google/android/exoplayer2/text/b;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    const/high16 v20, -0x1000000

    move/from16 v21, v5

    if-eqz v0, :cond_a

    .line 4168
    iget-object v5, v1, Lcom/google/android/exoplayer2/text/b;->b:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 4172
    iget-boolean v5, v1, Lcom/google/android/exoplayer2/text/b;->l:Z

    if-eqz v5, :cond_8

    iget v5, v1, Lcom/google/android/exoplayer2/text/b;->m:I

    goto :goto_4

    :cond_8
    iget v5, v4, Lcom/google/android/exoplayer2/text/a;->d:I

    :goto_4
    move/from16 v20, v5

    move/from16 v5, v20

    move-object/from16 v20, v8

    goto :goto_5

    :cond_9
    move-object/from16 v20, v8

    move/from16 v22, v9

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v12

    move/from16 v34, v13

    move/from16 v35, v14

    move/from16 v36, v15

    move/from16 v15, v19

    move/from16 v16, v21

    const/4 v1, 0x0

    const/4 v10, 0x0

    goto/16 :goto_21

    :cond_a
    move-object/from16 v20, v8

    const/high16 v5, -0x1000000

    .line 4174
    :goto_5
    iget-object v8, v6, Lcom/google/android/exoplayer2/ui/f;->i:Ljava/lang/CharSequence;

    move/from16 v22, v9

    iget-object v9, v1, Lcom/google/android/exoplayer2/text/b;->b:Ljava/lang/CharSequence;

    if-eq v8, v9, :cond_c

    if-eqz v8, :cond_b

    .line 4476
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_6

    :cond_b
    const/4 v8, 0x0

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v8, 0x1

    :goto_7
    if-eqz v8, :cond_d

    .line 4174
    iget-object v8, v6, Lcom/google/android/exoplayer2/ui/f;->j:Landroid/text/Layout$Alignment;

    iget-object v9, v1, Lcom/google/android/exoplayer2/text/b;->c:Landroid/text/Layout$Alignment;

    .line 4175
    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, v6, Lcom/google/android/exoplayer2/ui/f;->k:Landroid/graphics/Bitmap;

    iget-object v9, v1, Lcom/google/android/exoplayer2/text/b;->d:Landroid/graphics/Bitmap;

    if-ne v8, v9, :cond_d

    iget v8, v6, Lcom/google/android/exoplayer2/ui/f;->l:F

    iget v9, v1, Lcom/google/android/exoplayer2/text/b;->e:F

    cmpl-float v8, v8, v9

    if-nez v8, :cond_d

    iget v8, v6, Lcom/google/android/exoplayer2/ui/f;->m:I

    iget v9, v1, Lcom/google/android/exoplayer2/text/b;->f:I

    if-ne v8, v9, :cond_d

    iget v8, v6, Lcom/google/android/exoplayer2/ui/f;->n:I

    .line 4179
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, v1, Lcom/google/android/exoplayer2/text/b;->g:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget v8, v6, Lcom/google/android/exoplayer2/ui/f;->o:F

    iget v9, v1, Lcom/google/android/exoplayer2/text/b;->h:F

    cmpl-float v8, v8, v9

    if-nez v8, :cond_d

    iget v8, v6, Lcom/google/android/exoplayer2/ui/f;->p:I

    .line 4181
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, v1, Lcom/google/android/exoplayer2/text/b;->i:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget v8, v6, Lcom/google/android/exoplayer2/ui/f;->q:F

    iget v9, v1, Lcom/google/android/exoplayer2/text/b;->j:F

    cmpl-float v8, v8, v9

    if-nez v8, :cond_d

    iget v8, v6, Lcom/google/android/exoplayer2/ui/f;->r:F

    iget v9, v1, Lcom/google/android/exoplayer2/text/b;->k:F

    cmpl-float v8, v8, v9

    if-nez v8, :cond_d

    iget v8, v6, Lcom/google/android/exoplayer2/ui/f;->s:I

    iget v9, v4, Lcom/google/android/exoplayer2/text/a;->b:I

    if-ne v8, v9, :cond_d

    iget v8, v6, Lcom/google/android/exoplayer2/ui/f;->t:I

    iget v9, v4, Lcom/google/android/exoplayer2/text/a;->c:I

    if-ne v8, v9, :cond_d

    iget v8, v6, Lcom/google/android/exoplayer2/ui/f;->u:I

    if-ne v8, v5, :cond_d

    iget v8, v6, Lcom/google/android/exoplayer2/ui/f;->w:I

    iget v9, v4, Lcom/google/android/exoplayer2/text/a;->e:I

    if-ne v8, v9, :cond_d

    iget v8, v6, Lcom/google/android/exoplayer2/ui/f;->v:I

    iget v9, v4, Lcom/google/android/exoplayer2/text/a;->f:I

    if-ne v8, v9, :cond_d

    iget-object v8, v6, Lcom/google/android/exoplayer2/ui/f;->f:Landroid/text/TextPaint;

    .line 4189
    invoke-virtual {v8}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v8

    iget-object v9, v4, Lcom/google/android/exoplayer2/text/a;->g:Landroid/graphics/Typeface;

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget v8, v6, Lcom/google/android/exoplayer2/ui/f;->x:F

    cmpl-float v8, v8, v15

    if-nez v8, :cond_d

    iget v8, v6, Lcom/google/android/exoplayer2/ui/f;->y:F

    cmpl-float v8, v8, v2

    if-nez v8, :cond_d

    iget v8, v6, Lcom/google/android/exoplayer2/ui/f;->z:F

    cmpl-float v8, v8, v3

    if-nez v8, :cond_d

    iget v8, v6, Lcom/google/android/exoplayer2/ui/f;->A:I

    if-ne v8, v10, :cond_d

    iget v8, v6, Lcom/google/android/exoplayer2/ui/f;->B:I

    if-ne v8, v11, :cond_d

    iget v8, v6, Lcom/google/android/exoplayer2/ui/f;->C:I

    if-ne v8, v12, :cond_d

    iget v8, v6, Lcom/google/android/exoplayer2/ui/f;->D:I

    if-eq v8, v13, :cond_10

    .line 4202
    :cond_d
    iget-object v8, v1, Lcom/google/android/exoplayer2/text/b;->b:Ljava/lang/CharSequence;

    iput-object v8, v6, Lcom/google/android/exoplayer2/ui/f;->i:Ljava/lang/CharSequence;

    .line 4203
    iget-object v8, v1, Lcom/google/android/exoplayer2/text/b;->c:Landroid/text/Layout$Alignment;

    iput-object v8, v6, Lcom/google/android/exoplayer2/ui/f;->j:Landroid/text/Layout$Alignment;

    .line 4204
    iget-object v8, v1, Lcom/google/android/exoplayer2/text/b;->d:Landroid/graphics/Bitmap;

    iput-object v8, v6, Lcom/google/android/exoplayer2/ui/f;->k:Landroid/graphics/Bitmap;

    .line 4205
    iget v8, v1, Lcom/google/android/exoplayer2/text/b;->e:F

    iput v8, v6, Lcom/google/android/exoplayer2/ui/f;->l:F

    .line 4206
    iget v8, v1, Lcom/google/android/exoplayer2/text/b;->f:I

    iput v8, v6, Lcom/google/android/exoplayer2/ui/f;->m:I

    .line 4207
    iget v8, v1, Lcom/google/android/exoplayer2/text/b;->g:I

    iput v8, v6, Lcom/google/android/exoplayer2/ui/f;->n:I

    .line 4208
    iget v8, v1, Lcom/google/android/exoplayer2/text/b;->h:F

    iput v8, v6, Lcom/google/android/exoplayer2/ui/f;->o:F

    .line 4209
    iget v8, v1, Lcom/google/android/exoplayer2/text/b;->i:I

    iput v8, v6, Lcom/google/android/exoplayer2/ui/f;->p:I

    .line 4210
    iget v8, v1, Lcom/google/android/exoplayer2/text/b;->j:F

    iput v8, v6, Lcom/google/android/exoplayer2/ui/f;->q:F

    .line 4211
    iget v1, v1, Lcom/google/android/exoplayer2/text/b;->k:F

    iput v1, v6, Lcom/google/android/exoplayer2/ui/f;->r:F

    .line 4212
    iget v1, v4, Lcom/google/android/exoplayer2/text/a;->b:I

    iput v1, v6, Lcom/google/android/exoplayer2/ui/f;->s:I

    .line 4213
    iget v1, v4, Lcom/google/android/exoplayer2/text/a;->c:I

    iput v1, v6, Lcom/google/android/exoplayer2/ui/f;->t:I

    .line 4214
    iput v5, v6, Lcom/google/android/exoplayer2/ui/f;->u:I

    .line 4215
    iget v1, v4, Lcom/google/android/exoplayer2/text/a;->e:I

    iput v1, v6, Lcom/google/android/exoplayer2/ui/f;->w:I

    .line 4216
    iget v1, v4, Lcom/google/android/exoplayer2/text/a;->f:I

    iput v1, v6, Lcom/google/android/exoplayer2/ui/f;->v:I

    .line 4217
    iget-object v1, v6, Lcom/google/android/exoplayer2/ui/f;->f:Landroid/text/TextPaint;

    iget-object v4, v4, Lcom/google/android/exoplayer2/text/a;->g:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 4218
    iput v15, v6, Lcom/google/android/exoplayer2/ui/f;->x:F

    .line 4219
    iput v2, v6, Lcom/google/android/exoplayer2/ui/f;->y:F

    .line 4220
    iput v3, v6, Lcom/google/android/exoplayer2/ui/f;->z:F

    .line 4221
    iput v10, v6, Lcom/google/android/exoplayer2/ui/f;->A:I

    .line 4222
    iput v11, v6, Lcom/google/android/exoplayer2/ui/f;->B:I

    .line 4223
    iput v12, v6, Lcom/google/android/exoplayer2/ui/f;->C:I

    .line 4224
    iput v13, v6, Lcom/google/android/exoplayer2/ui/f;->D:I

    if-eqz v0, :cond_25

    .line 4227
    iget-object v1, v6, Lcom/google/android/exoplayer2/ui/f;->i:Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5239
    iget-object v1, v6, Lcom/google/android/exoplayer2/ui/f;->i:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_e

    .line 5240
    iget-object v1, v6, Lcom/google/android/exoplayer2/ui/f;->i:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/SpannableStringBuilder;

    goto :goto_8

    .line 5241
    :cond_e
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, v6, Lcom/google/android/exoplayer2/ui/f;->i:Ljava/lang/CharSequence;

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5242
    :goto_8
    iget v2, v6, Lcom/google/android/exoplayer2/ui/f;->C:I

    iget v3, v6, Lcom/google/android/exoplayer2/ui/f;->A:I

    sub-int/2addr v2, v3

    .line 5243
    iget v3, v6, Lcom/google/android/exoplayer2/ui/f;->D:I

    iget v4, v6, Lcom/google/android/exoplayer2/ui/f;->B:I

    sub-int/2addr v3, v4

    .line 5245
    iget-object v4, v6, Lcom/google/android/exoplayer2/ui/f;->f:Landroid/text/TextPaint;

    iget v5, v6, Lcom/google/android/exoplayer2/ui/f;->x:F

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 5246
    iget v4, v6, Lcom/google/android/exoplayer2/ui/f;->x:F

    const/high16 v5, 0x3e000000    # 0.125f

    mul-float v4, v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    mul-int/lit8 v5, v4, 0x2

    sub-int v8, v2, v5

    .line 5249
    iget v9, v6, Lcom/google/android/exoplayer2/ui/f;->q:F

    const v18, -0x800001

    cmpl-float v9, v9, v18

    if-eqz v9, :cond_f

    int-to-float v8, v8

    .line 5250
    iget v9, v6, Lcom/google/android/exoplayer2/ui/f;->q:F

    mul-float v8, v8, v9

    float-to-int v8, v8

    :cond_f
    const-string v9, "SubtitlePainter"

    if-gtz v8, :cond_11

    const-string v1, "Skipped drawing subtitle cue (insufficient space)"

    .line 5253
    invoke-static {v9, v1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v12

    move/from16 v34, v13

    move/from16 v35, v14

    move/from16 v36, v15

    :goto_9
    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    :goto_a
    const/4 v11, 0x1

    goto/16 :goto_1b

    :cond_11
    move/from16 v31, v10

    .line 5257
    iget v10, v6, Lcom/google/android/exoplayer2/ui/f;->y:F

    move/from16 v32, v11

    const/16 v16, 0x0

    cmpl-float v10, v10, v16

    if-lez v10, :cond_12

    .line 5259
    new-instance v10, Landroid/text/style/AbsoluteSizeSpan;

    iget v11, v6, Lcom/google/android/exoplayer2/ui/f;->y:F

    float-to-int v11, v11

    invoke-direct {v10, v11}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 5262
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    move/from16 v33, v12

    move/from16 v34, v13

    const/high16 v12, 0xff0000

    const/4 v13, 0x0

    .line 5259
    invoke-virtual {v1, v10, v13, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_b

    :cond_12
    move/from16 v33, v12

    move/from16 v34, v13

    const/4 v13, 0x0

    .line 5267
    :goto_b
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5268
    iget v11, v6, Lcom/google/android/exoplayer2/ui/f;->w:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_13

    .line 5270
    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const-class v12, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v10, v13, v11, v12}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/style/ForegroundColorSpan;

    .line 5271
    array-length v12, v11

    const/4 v13, 0x0

    :goto_c
    if-ge v13, v12, :cond_13

    move/from16 v24, v12

    aget-object v12, v11, v13

    .line 5272
    invoke-virtual {v10, v12}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    move/from16 v12, v24

    goto :goto_c

    .line 5280
    :cond_13
    iget v11, v6, Lcom/google/android/exoplayer2/ui/f;->t:I

    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    if-lez v11, :cond_16

    .line 5281
    iget v11, v6, Lcom/google/android/exoplayer2/ui/f;->w:I

    if-eqz v11, :cond_15

    iget v11, v6, Lcom/google/android/exoplayer2/ui/f;->w:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_14

    goto :goto_d

    .line 5286
    :cond_14
    new-instance v11, Landroid/text/style/BackgroundColorSpan;

    iget v12, v6, Lcom/google/android/exoplayer2/ui/f;->t:I

    invoke-direct {v11, v12}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 5289
    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    move/from16 v35, v14

    const/high16 v13, 0xff0000

    const/4 v14, 0x0

    .line 5286
    invoke-virtual {v10, v11, v14, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_e

    :cond_15
    :goto_d
    move/from16 v35, v14

    const/high16 v13, 0xff0000

    const/4 v14, 0x0

    .line 5283
    new-instance v11, Landroid/text/style/BackgroundColorSpan;

    iget v12, v6, Lcom/google/android/exoplayer2/ui/f;->t:I

    invoke-direct {v11, v12}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 5284
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    .line 5283
    invoke-virtual {v1, v11, v14, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_e

    :cond_16
    move/from16 v35, v14

    .line 5294
    :goto_e
    iget-object v11, v6, Lcom/google/android/exoplayer2/ui/f;->j:Landroid/text/Layout$Alignment;

    if-nez v11, :cond_17

    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_f

    :cond_17
    iget-object v11, v6, Lcom/google/android/exoplayer2/ui/f;->j:Landroid/text/Layout$Alignment;

    .line 5295
    :goto_f
    new-instance v12, Landroid/text/StaticLayout;

    iget-object v13, v6, Lcom/google/android/exoplayer2/ui/f;->f:Landroid/text/TextPaint;

    iget v14, v6, Lcom/google/android/exoplayer2/ui/f;->d:F

    move/from16 v36, v15

    iget v15, v6, Lcom/google/android/exoplayer2/ui/f;->e:F

    const/16 v30, 0x1

    move-object/from16 v23, v12

    move-object/from16 v24, v1

    move-object/from16 v25, v13

    move/from16 v26, v8

    move-object/from16 v27, v11

    move/from16 v28, v14

    move/from16 v29, v15

    invoke-direct/range {v23 .. v30}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v12, v6, Lcom/google/android/exoplayer2/ui/f;->E:Landroid/text/StaticLayout;

    .line 5297
    iget-object v12, v6, Lcom/google/android/exoplayer2/ui/f;->E:Landroid/text/StaticLayout;

    invoke-virtual {v12}, Landroid/text/StaticLayout;->getHeight()I

    move-result v12

    .line 5299
    iget-object v13, v6, Lcom/google/android/exoplayer2/ui/f;->E:Landroid/text/StaticLayout;

    invoke-virtual {v13}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_10
    if-ge v14, v13, :cond_18

    move/from16 v23, v13

    .line 5301
    iget-object v13, v6, Lcom/google/android/exoplayer2/ui/f;->E:Landroid/text/StaticLayout;

    invoke-virtual {v13, v14}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v13

    move-object/from16 v37, v10

    move-object/from16 v38, v11

    float-to-double v10, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    add-int/lit8 v14, v14, 0x1

    move/from16 v13, v23

    move-object/from16 v10, v37

    move-object/from16 v11, v38

    goto :goto_10

    :cond_18
    move-object/from16 v37, v10

    move-object/from16 v38, v11

    .line 5303
    iget v10, v6, Lcom/google/android/exoplayer2/ui/f;->q:F

    const v11, -0x800001

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_19

    if-ge v15, v8, :cond_19

    goto :goto_11

    :cond_19
    move v8, v15

    :goto_11
    add-int/2addr v8, v5

    .line 5310
    iget v5, v6, Lcom/google/android/exoplayer2/ui/f;->o:F

    cmpl-float v5, v5, v11

    if-eqz v5, :cond_1c

    int-to-float v2, v2

    .line 5311
    iget v5, v6, Lcom/google/android/exoplayer2/ui/f;->o:F

    mul-float v2, v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v5, v6, Lcom/google/android/exoplayer2/ui/f;->A:I

    add-int/2addr v2, v5

    .line 5312
    iget v5, v6, Lcom/google/android/exoplayer2/ui/f;->p:I

    const/4 v10, 0x1

    if-eq v5, v10, :cond_1b

    const/4 v10, 0x2

    if-eq v5, v10, :cond_1a

    goto :goto_12

    :cond_1a
    sub-int/2addr v2, v8

    goto :goto_12

    :cond_1b
    const/4 v10, 0x2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v8

    .line 5317
    div-int/2addr v2, v10

    .line 5325
    :goto_12
    iget v5, v6, Lcom/google/android/exoplayer2/ui/f;->A:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v8, v2

    .line 5326
    iget v5, v6, Lcom/google/android/exoplayer2/ui/f;->C:I

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_13

    :cond_1c
    const/4 v10, 0x2

    sub-int/2addr v2, v8

    .line 5328
    div-int/2addr v2, v10

    iget v5, v6, Lcom/google/android/exoplayer2/ui/f;->A:I

    add-int/2addr v2, v5

    add-int v5, v2, v8

    :goto_13
    sub-int/2addr v5, v2

    if-gtz v5, :cond_1d

    const-string v1, "Skipped drawing subtitle cue (invalid horizontal positioning)"

    .line 5334
    invoke-static {v9, v1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 5339
    :cond_1d
    iget v8, v6, Lcom/google/android/exoplayer2/ui/f;->l:F

    const v9, -0x800001

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_23

    .line 5340
    iget v8, v6, Lcom/google/android/exoplayer2/ui/f;->m:I

    if-nez v8, :cond_20

    int-to-float v3, v3

    .line 5341
    iget v8, v6, Lcom/google/android/exoplayer2/ui/f;->l:F

    mul-float v3, v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v8, v6, Lcom/google/android/exoplayer2/ui/f;->B:I

    add-int/2addr v3, v8

    .line 5343
    iget v8, v6, Lcom/google/android/exoplayer2/ui/f;->n:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1e

    sub-int/2addr v3, v12

    goto :goto_14

    .line 5345
    :cond_1e
    iget v8, v6, Lcom/google/android/exoplayer2/ui/f;->n:I

    const/4 v10, 0x1

    if-ne v8, v10, :cond_1f

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v12

    .line 5346
    div-int/2addr v3, v9

    :cond_1f
    :goto_14
    const/4 v8, 0x0

    const/4 v10, 0x0

    goto :goto_15

    .line 5350
    :cond_20
    iget-object v3, v6, Lcom/google/android/exoplayer2/ui/f;->E:Landroid/text/StaticLayout;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v3

    iget-object v9, v6, Lcom/google/android/exoplayer2/ui/f;->E:Landroid/text/StaticLayout;

    invoke-virtual {v9, v8}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v9

    sub-int/2addr v3, v9

    .line 5351
    iget v9, v6, Lcom/google/android/exoplayer2/ui/f;->l:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_21

    .line 5352
    iget v9, v6, Lcom/google/android/exoplayer2/ui/f;->l:F

    int-to-float v3, v3

    mul-float v9, v9, v3

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v9, v6, Lcom/google/android/exoplayer2/ui/f;->B:I

    add-int/2addr v3, v9

    goto :goto_15

    .line 5354
    :cond_21
    iget v9, v6, Lcom/google/android/exoplayer2/ui/f;->l:F

    add-float v9, v9, v17

    int-to-float v3, v3

    mul-float v9, v9, v3

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v9, v6, Lcom/google/android/exoplayer2/ui/f;->D:I

    add-int/2addr v3, v9

    sub-int/2addr v3, v12

    :goto_15
    add-int v9, v3, v12

    .line 5358
    iget v11, v6, Lcom/google/android/exoplayer2/ui/f;->D:I

    if-le v9, v11, :cond_22

    .line 5359
    iget v3, v6, Lcom/google/android/exoplayer2/ui/f;->D:I

    sub-int/2addr v3, v12

    goto :goto_16

    .line 5360
    :cond_22
    iget v9, v6, Lcom/google/android/exoplayer2/ui/f;->B:I

    if-ge v3, v9, :cond_24

    .line 5361
    iget v3, v6, Lcom/google/android/exoplayer2/ui/f;->B:I

    goto :goto_16

    :cond_23
    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 5364
    iget v9, v6, Lcom/google/android/exoplayer2/ui/f;->D:I

    sub-int/2addr v9, v12

    int-to-float v3, v3

    iget v11, v6, Lcom/google/android/exoplayer2/ui/f;->z:F

    mul-float v3, v3, v11

    float-to-int v3, v3

    sub-int v3, v9, v3

    .line 5368
    :cond_24
    :goto_16
    new-instance v9, Landroid/text/StaticLayout;

    iget-object v11, v6, Lcom/google/android/exoplayer2/ui/f;->f:Landroid/text/TextPaint;

    iget v12, v6, Lcom/google/android/exoplayer2/ui/f;->d:F

    iget v13, v6, Lcom/google/android/exoplayer2/ui/f;->e:F

    const/16 v30, 0x1

    move-object/from16 v23, v9

    move-object/from16 v24, v1

    move-object/from16 v25, v11

    move/from16 v26, v5

    move-object/from16 v27, v38

    move/from16 v28, v12

    move/from16 v29, v13

    invoke-direct/range {v23 .. v30}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v9, v6, Lcom/google/android/exoplayer2/ui/f;->E:Landroid/text/StaticLayout;

    .line 5370
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v9, v6, Lcom/google/android/exoplayer2/ui/f;->f:Landroid/text/TextPaint;

    iget v11, v6, Lcom/google/android/exoplayer2/ui/f;->d:F

    iget v12, v6, Lcom/google/android/exoplayer2/ui/f;->e:F

    move-object/from16 v23, v1

    move-object/from16 v24, v37

    move-object/from16 v25, v9

    move/from16 v28, v11

    move/from16 v29, v12

    invoke-direct/range {v23 .. v30}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v6, Lcom/google/android/exoplayer2/ui/f;->F:Landroid/text/StaticLayout;

    .line 5373
    iput v2, v6, Lcom/google/android/exoplayer2/ui/f;->G:I

    .line 5374
    iput v3, v6, Lcom/google/android/exoplayer2/ui/f;->H:I

    .line 5375
    iput v4, v6, Lcom/google/android/exoplayer2/ui/f;->I:I

    const/4 v9, 0x2

    goto/16 :goto_a

    :cond_25
    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v12

    move/from16 v34, v13

    move/from16 v35, v14

    move/from16 v36, v15

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 4230
    iget-object v1, v6, Lcom/google/android/exoplayer2/ui/f;->k:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5380
    iget-object v1, v6, Lcom/google/android/exoplayer2/ui/f;->k:Landroid/graphics/Bitmap;

    .line 5381
    iget v2, v6, Lcom/google/android/exoplayer2/ui/f;->C:I

    iget v3, v6, Lcom/google/android/exoplayer2/ui/f;->A:I

    sub-int/2addr v2, v3

    .line 5382
    iget v3, v6, Lcom/google/android/exoplayer2/ui/f;->D:I

    iget v4, v6, Lcom/google/android/exoplayer2/ui/f;->B:I

    sub-int/2addr v3, v4

    .line 5383
    iget v4, v6, Lcom/google/android/exoplayer2/ui/f;->A:I

    int-to-float v4, v4

    int-to-float v2, v2

    iget v5, v6, Lcom/google/android/exoplayer2/ui/f;->o:F

    mul-float v5, v5, v2

    add-float/2addr v4, v5

    .line 5384
    iget v5, v6, Lcom/google/android/exoplayer2/ui/f;->B:I

    int-to-float v5, v5

    int-to-float v3, v3

    iget v9, v6, Lcom/google/android/exoplayer2/ui/f;->l:F

    mul-float v9, v9, v3

    add-float/2addr v5, v9

    .line 5385
    iget v9, v6, Lcom/google/android/exoplayer2/ui/f;->q:F

    mul-float v2, v2, v9

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 5386
    iget v9, v6, Lcom/google/android/exoplayer2/ui/f;->r:F

    const v11, -0x800001

    cmpl-float v9, v9, v11

    if-eqz v9, :cond_26

    iget v1, v6, Lcom/google/android/exoplayer2/ui/f;->r:F

    mul-float v3, v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_17

    :cond_26
    int-to-float v3, v2

    .line 5387
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v9, v1

    mul-float v3, v3, v9

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 5390
    :goto_17
    iget v3, v6, Lcom/google/android/exoplayer2/ui/f;->p:I

    const/4 v9, 0x2

    if-ne v3, v9, :cond_27

    int-to-float v3, v2

    :goto_18
    sub-float/2addr v4, v3

    goto :goto_19

    .line 5392
    :cond_27
    iget v3, v6, Lcom/google/android/exoplayer2/ui/f;->p:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_28

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    goto :goto_18

    .line 5389
    :cond_28
    :goto_19
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 5395
    iget v4, v6, Lcom/google/android/exoplayer2/ui/f;->n:I

    const/4 v9, 0x2

    if-ne v4, v9, :cond_29

    int-to-float v4, v1

    sub-float/2addr v5, v4

    const/4 v11, 0x1

    goto :goto_1a

    .line 5397
    :cond_29
    iget v4, v6, Lcom/google/android/exoplayer2/ui/f;->n:I

    const/4 v11, 0x1

    if-ne v4, v11, :cond_2a

    div-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    sub-float/2addr v5, v4

    .line 5394
    :cond_2a
    :goto_1a
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 5398
    new-instance v5, Landroid/graphics/Rect;

    add-int/2addr v2, v3

    add-int/2addr v1, v4

    invoke-direct {v5, v3, v4, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, v6, Lcom/google/android/exoplayer2/ui/f;->J:Landroid/graphics/Rect;

    :goto_1b
    if-eqz v0, :cond_35

    .line 5412
    iget-object v0, v6, Lcom/google/android/exoplayer2/ui/f;->E:Landroid/text/StaticLayout;

    .line 5413
    iget-object v12, v6, Lcom/google/android/exoplayer2/ui/f;->F:Landroid/text/StaticLayout;

    if-eqz v0, :cond_34

    if-nez v12, :cond_2b

    goto/16 :goto_20

    .line 5419
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v13

    .line 5420
    iget v1, v6, Lcom/google/android/exoplayer2/ui/f;->G:I

    int-to-float v1, v1

    iget v2, v6, Lcom/google/android/exoplayer2/ui/f;->H:I

    int-to-float v2, v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5422
    iget v1, v6, Lcom/google/android/exoplayer2/ui/f;->u:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-lez v1, :cond_2c

    .line 5423
    iget-object v1, v6, Lcom/google/android/exoplayer2/ui/f;->g:Landroid/graphics/Paint;

    iget v2, v6, Lcom/google/android/exoplayer2/ui/f;->u:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5424
    iget v1, v6, Lcom/google/android/exoplayer2/ui/f;->I:I

    neg-int v1, v1

    int-to-float v2, v1

    const/4 v3, 0x0

    .line 5427
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    iget v4, v6, Lcom/google/android/exoplayer2/ui/f;->I:I

    add-int/2addr v1, v4

    int-to-float v4, v1

    .line 5428
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v14, v6, Lcom/google/android/exoplayer2/ui/f;->g:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v15, v19

    move/from16 v16, v21

    move-object v9, v6

    const/4 v8, 0x2

    move-object v6, v14

    .line 5424
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1c

    :cond_2c
    move-object v9, v6

    move/from16 v15, v19

    move/from16 v16, v21

    const/4 v8, 0x2

    .line 5432
    :goto_1c
    iget v1, v9, Lcom/google/android/exoplayer2/ui/f;->w:I

    if-ne v1, v11, :cond_2d

    .line 5433
    iget-object v1, v9, Lcom/google/android/exoplayer2/ui/f;->f:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 5434
    iget-object v1, v9, Lcom/google/android/exoplayer2/ui/f;->f:Landroid/text/TextPaint;

    iget v2, v9, Lcom/google/android/exoplayer2/ui/f;->a:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 5435
    iget-object v1, v9, Lcom/google/android/exoplayer2/ui/f;->f:Landroid/text/TextPaint;

    iget v2, v9, Lcom/google/android/exoplayer2/ui/f;->v:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 5436
    iget-object v1, v9, Lcom/google/android/exoplayer2/ui/f;->f:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5437
    invoke-virtual {v12, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1f

    .line 5438
    :cond_2d
    iget v1, v9, Lcom/google/android/exoplayer2/ui/f;->w:I

    if-ne v1, v8, :cond_2e

    .line 5439
    iget-object v1, v9, Lcom/google/android/exoplayer2/ui/f;->f:Landroid/text/TextPaint;

    iget v2, v9, Lcom/google/android/exoplayer2/ui/f;->b:F

    iget v3, v9, Lcom/google/android/exoplayer2/ui/f;->c:F

    iget v4, v9, Lcom/google/android/exoplayer2/ui/f;->c:F

    iget v5, v9, Lcom/google/android/exoplayer2/ui/f;->v:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_1f

    .line 5440
    :cond_2e
    iget v1, v9, Lcom/google/android/exoplayer2/ui/f;->w:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2f

    iget v1, v9, Lcom/google/android/exoplayer2/ui/f;->w:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_33

    .line 5442
    :cond_2f
    iget v1, v9, Lcom/google/android/exoplayer2/ui/f;->w:I

    if-ne v1, v2, :cond_30

    const/4 v4, 0x1

    goto :goto_1d

    :cond_30
    const/4 v4, 0x0

    :goto_1d
    const/4 v1, -0x1

    if-eqz v4, :cond_31

    const/4 v2, -0x1

    goto :goto_1e

    .line 5443
    :cond_31
    iget v2, v9, Lcom/google/android/exoplayer2/ui/f;->v:I

    :goto_1e
    if-eqz v4, :cond_32

    .line 5444
    iget v1, v9, Lcom/google/android/exoplayer2/ui/f;->v:I

    .line 5445
    :cond_32
    iget v3, v9, Lcom/google/android/exoplayer2/ui/f;->b:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 5446
    iget-object v4, v9, Lcom/google/android/exoplayer2/ui/f;->f:Landroid/text/TextPaint;

    iget v5, v9, Lcom/google/android/exoplayer2/ui/f;->s:I

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 5447
    iget-object v4, v9, Lcom/google/android/exoplayer2/ui/f;->f:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5448
    iget-object v4, v9, Lcom/google/android/exoplayer2/ui/f;->f:Landroid/text/TextPaint;

    iget v5, v9, Lcom/google/android/exoplayer2/ui/f;->b:F

    neg-float v6, v3

    invoke-virtual {v4, v5, v6, v6, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 5449
    invoke-virtual {v12, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 5450
    iget-object v2, v9, Lcom/google/android/exoplayer2/ui/f;->f:Landroid/text/TextPaint;

    iget v4, v9, Lcom/google/android/exoplayer2/ui/f;->b:F

    invoke-virtual {v2, v4, v3, v3, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 5453
    :cond_33
    :goto_1f
    iget-object v1, v9, Lcom/google/android/exoplayer2/ui/f;->f:Landroid/text/TextPaint;

    iget v2, v9, Lcom/google/android/exoplayer2/ui/f;->s:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 5454
    iget-object v1, v9, Lcom/google/android/exoplayer2/ui/f;->f:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5455
    invoke-virtual {v0, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 5456
    iget-object v0, v9, Lcom/google/android/exoplayer2/ui/f;->f:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v10, v10, v10, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 5458
    invoke-virtual {v7, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_21

    :cond_34
    :goto_20
    move/from16 v15, v19

    move/from16 v16, v21

    const/4 v1, 0x0

    goto :goto_21

    :cond_35
    move-object v9, v6

    move/from16 v15, v19

    move/from16 v16, v21

    const/4 v1, 0x0

    .line 5405
    iget-object v0, v9, Lcom/google/android/exoplayer2/ui/f;->J:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5406
    iget-object v0, v9, Lcom/google/android/exoplayer2/ui/f;->k:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5463
    iget-object v0, v9, Lcom/google/android/exoplayer2/ui/f;->k:Landroid/graphics/Bitmap;

    iget-object v2, v9, Lcom/google/android/exoplayer2/ui/f;->J:Landroid/graphics/Rect;

    iget-object v3, v9, Lcom/google/android/exoplayer2/ui/f;->h:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v7, v0, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_21
    add-int/lit8 v3, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v5, v16

    move-object/from16 v8, v20

    move/from16 v9, v22

    move/from16 v10, v31

    move/from16 v11, v32

    move/from16 v12, v33

    move/from16 v13, v34

    move/from16 v14, v35

    move/from16 v15, v36

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_36
    :goto_22
    return-void
.end method
