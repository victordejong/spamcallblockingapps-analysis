.class public Lt51;
.super Lmc;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt51$a;
    }
.end annotation


# instance fields
.field public l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public m:Landroid/view/LayoutInflater;


# virtual methods
.method public a(Landroid/database/Cursor;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lt51;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1}, Lmc;->a(Landroid/database/Cursor;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public e(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt51$a;

    if-nez v0, :cond_0

    new-instance v0, Lt51$a;

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v3}, Lt51$a;-><init>(Lt51;Landroid/view/View;)V

    :cond_0
    move-object v3, v0

    new-instance v4, Ll81;

    invoke-direct {v4}, Ll81;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ll81;->S(Landroid/database/Cursor;)Ll81;

    iget-wide v5, v4, Ll81;->s:J

    iget-boolean v0, v4, Ll81;->y:Z

    const/4 v7, 0x2

    const/16 v8, 0x10

    const/16 v9, 0x8

    const/4 v10, 0x0

    if-eqz v0, :cond_1

    invoke-static {v2, v5, v6, v8}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    iget-object v11, v3, Lt51$a;->b:Landroid/widget/TextView;

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v3, Lt51$a;->b:Landroid/widget/TextView;

    sget-object v11, Lr71$a;->x0:Lr71$a;

    invoke-virtual {v11}, Lr71$a;->c()F

    move-result v11

    invoke-virtual {v0, v7, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v3, Lt51$a;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, v3, Lt51$a;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, v3, Lt51$a;->c:Landroid/widget/TextView;

    const/4 v11, 0x1

    invoke-static {v2, v5, v6, v11}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v4, Ll81;->o:Ljava/util/EnumSet;

    sget-object v5, Lq71$e;->c:Lq71$e;

    invoke-virtual {v0, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, v4, Ll81;->n:I

    invoke-virtual {v1, v0}, Lt51;->m(I)I

    move-result v0

    goto :goto_1

    :cond_2
    iget v0, v4, Ll81;->n:I

    invoke-virtual {v1, v0}, Lt51;->l(I)I

    move-result v0

    :goto_1
    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object v6

    const/4 v12, -0x1

    const-string v13, ""

    if-eqz v6, :cond_4

    iget-object v14, v3, Lt51$a;->f:Landroid/widget/TextView;

    if-eq v0, v12, :cond_3

    invoke-virtual {v6, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v13

    :goto_2
    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, v4, Ll81;->o:Ljava/util/EnumSet;

    invoke-virtual {v0, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v4, Ll81;->l:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v0, v13

    :goto_3
    iget-object v5, v4, Ll81;->o:Ljava/util/EnumSet;

    sget-object v6, Lq71$e;->d:Lq71$e;

    invoke-virtual {v5, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f1104e4

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v5, v4, Ll81;->v:I

    if-eqz v5, :cond_f

    new-instance v0, Lt81;

    invoke-direct {v0}, Lt81;-><init>()V

    iget-wide v5, v4, Ll81;->d:J

    invoke-virtual {v0, v5, v6}, Lt81;->F(J)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_e

    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_e

    move-object v6, v13

    :goto_4
    invoke-virtual {v0, v5}, Lt81;->E(Landroid/database/Cursor;)Lt81;

    invoke-virtual {v0}, Lt81;->I()Z

    move-result v14

    if-eqz v14, :cond_6

    goto/16 :goto_7

    :cond_6
    invoke-virtual {v0}, Lt81;->H()Z

    move-result v14

    if-eqz v14, :cond_7

    iget-object v14, v0, Lt81;->j:[B

    array-length v15, v14

    invoke-static {v14, v10, v15}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v14

    add-int/lit8 v12, v12, 0x1

    invoke-static {v3, v12, v10}, Lt51$a;->a(Lt51$a;IZ)Landroid/widget/ImageView;

    move-result-object v15

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v15, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v15, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v15, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-wide v7, v0, Lt81;->d:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v15, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v7, 0x1

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    :goto_5
    invoke-virtual {v0}, Lt81;->K()Z

    move-result v8

    if-eqz v8, :cond_8

    add-int/lit8 v12, v12, 0x1

    invoke-static {v3, v12, v11}, Lt51$a;->a(Lt51$a;IZ)Landroid/widget/ImageView;

    move-result-object v7

    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    const v8, 0x7f080396

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-wide v14, v0, Lt81;->d:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v7, 0x1

    :cond_8
    invoke-virtual {v0}, Lt81;->G()Z

    move-result v8

    if-eqz v8, :cond_9

    add-int/lit8 v12, v12, 0x1

    invoke-static {v3, v12, v11}, Lt51$a;->a(Lt51$a;IZ)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    const v8, 0x7f080170

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-wide v14, v0, Lt81;->d:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v7, 0x1

    :cond_9
    invoke-virtual {v0}, Lt81;->J()Z

    move-result v8

    if-eqz v8, :cond_b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    move-object v6, v13

    goto :goto_6

    :cond_a
    const-string v6, "\n"

    :goto_6
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    iget-object v8, v0, Lt81;->j:[B

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    :cond_b
    if-nez v7, :cond_c

    add-int/lit8 v12, v12, 0x1

    invoke-static {v3, v12, v11}, Lt51$a;->a(Lt51$a;IZ)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    const v8, 0x7f0801e9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-wide v14, v0, Lt81;->d:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_c
    :goto_7
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_d

    move-object v13, v6

    goto :goto_8

    :cond_d
    const/4 v7, 0x2

    const/16 v8, 0x10

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    const-string v6, "Error getting MMS parts"

    invoke-static {v0, v6}, Lj91;->v(Ljava/lang/Throwable;Ljava/lang/String;)V

    const v0, 0x7f1104e3

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_e
    :goto_8
    move-object v0, v13

    :goto_9
    if-eqz v5, :cond_f

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_f
    invoke-static {v3, v12}, Lt51$a;->b(Lt51$a;I)V

    iget-object v2, v3, Lt51$a;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v3, Lt51$a;->d:Landroid/widget/TextView;

    sget-object v2, Lr71$a;->x0:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->c()F

    move-result v2

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v3, Lt51$a;->j:Landroid/widget/RelativeLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2}, Lt51;->n(Landroid/view/View;F)V

    iget v0, v4, Ll81;->n:I

    const v2, 0x3f19999a    # 0.6f

    const/4 v5, 0x5

    if-eq v0, v11, :cond_12

    iget-object v0, v3, Lt51$a;->j:Landroid/widget/RelativeLayout;

    const v6, 0x7f080424

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget v0, v4, Ll81;->n:I

    if-eq v0, v5, :cond_10

    if-ne v0, v5, :cond_11

    :cond_10
    iget-object v0, v3, Lt51$a;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2}, Lt51;->n(Landroid/view/View;F)V

    :cond_11
    iget-object v0, v3, Lt51$a;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b

    :cond_12
    iget-object v0, v3, Lt51$a;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v3, Lt51$a;->j:Landroid/widget/RelativeLayout;

    const v6, 0x7f0803b0

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget v0, v4, Ll81;->n:I

    if-eq v0, v5, :cond_13

    if-ne v0, v5, :cond_14

    :cond_13
    iget-object v0, v3, Lt51$a;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2}, Lt51;->n(Landroid/view/View;F)V

    :cond_14
    invoke-virtual {v1, v4}, Lt51;->k(Ll81;)Landroid/net/Uri;

    move-result-object v0

    const v2, 0x7f0801c6

    if-eqz v0, :cond_15

    :try_start_1
    iget-object v5, v3, Lt51$a;->g:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    goto :goto_a

    :catch_0
    const/4 v0, 0x1

    :goto_a
    if-eqz v0, :cond_16

    :cond_15
    iget-object v0, v3, Lt51$a;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_16
    :goto_b
    iget-object v0, v3, Lt51$a;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_1e

    iget v2, v4, Ll81;->n:I

    if-eq v2, v11, :cond_17

    const/4 v2, 0x1

    goto :goto_c

    :cond_17
    const/4 v2, 0x0

    :goto_c
    const/16 v5, 0xb

    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v2, v4, Ll81;->n:I

    if-eq v2, v11, :cond_18

    const/4 v2, 0x0

    goto :goto_d

    :cond_18
    const/4 v2, 0x1

    :goto_d
    const/16 v6, 0x9

    invoke-virtual {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xc

    iget v7, v4, Ll81;->n:I

    if-eq v7, v11, :cond_19

    const/4 v7, 0x1

    goto :goto_e

    :cond_19
    const/4 v7, 0x0

    :goto_e
    invoke-virtual {v0, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xa

    iget v7, v4, Ll81;->n:I

    if-eq v7, v11, :cond_1a

    const/4 v7, 0x0

    goto :goto_f

    :cond_1a
    const/4 v7, 0x1

    :goto_f
    invoke-virtual {v0, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, v3, Lt51$a;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v3, Lt51$a;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v3, Lt51$a;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    iget-object v0, v3, Lt51$a;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v4, Ll81;->n:I

    if-eq v2, v11, :cond_1b

    const/4 v2, 0x1

    goto :goto_10

    :cond_1b
    const/4 v2, 0x0

    :goto_10
    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v2, v4, Ll81;->n:I

    if-eq v2, v11, :cond_1c

    const/4 v2, 0x0

    goto :goto_11

    :cond_1c
    const/4 v2, 0x1

    :goto_11
    invoke-virtual {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x3

    const v5, 0x7f0a00cf

    invoke-virtual {v0, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, v3, Lt51$a;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v3, Lt51$a;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v2, 0x8

    goto :goto_12

    :cond_1d
    const/4 v2, 0x0

    :goto_12
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1e
    iget-object v0, v3, Lt51$a;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_23

    iget v2, v4, Ll81;->n:I

    if-ne v2, v11, :cond_1f

    const v2, 0x7f0a0645

    goto :goto_13

    :cond_1f
    const/4 v2, 0x0

    :goto_13
    invoke-virtual {v0, v11, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v2, v4, Ll81;->n:I

    const/4 v5, 0x4

    if-eq v2, v11, :cond_20

    const/16 v2, 0x10

    invoke-static {v2}, Loe1;->c(I)I

    move-result v6

    goto :goto_14

    :cond_20
    invoke-static {v5}, Loe1;->c(I)I

    move-result v6

    :goto_14
    invoke-static {v5}, Loe1;->c(I)I

    move-result v2

    invoke-virtual {v0, v6, v10, v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, v3, Lt51$a;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v3, Lt51$a;->j:Landroid/widget/RelativeLayout;

    iget v2, v4, Ll81;->n:I

    const/16 v6, 0x20

    if-eq v2, v11, :cond_21

    const/16 v2, 0x10

    invoke-static {v2}, Loe1;->c(I)I

    move-result v7

    goto :goto_15

    :cond_21
    const/16 v2, 0x10

    invoke-static {v6}, Loe1;->c(I)I

    move-result v7

    :goto_15
    invoke-static {v9}, Loe1;->c(I)I

    move-result v8

    iget v4, v4, Ll81;->n:I

    if-ne v4, v11, :cond_22

    invoke-static {v2}, Loe1;->c(I)I

    move-result v2

    goto :goto_16

    :cond_22
    invoke-static {v6}, Loe1;->c(I)I

    move-result v2

    :goto_16
    invoke-static {v5}, Loe1;->c(I)I

    move-result v4

    invoke-virtual {v0, v7, v8, v2, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v0, v3, Lt51$a;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_23
    return-void
.end method

.method public h(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object p1, p0, Lt51;->m:Landroid/view/LayoutInflater;

    const p2, 0x7f0d007f

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final k(Ll81;)Landroid/net/Uri;
    .locals 5

    invoke-virtual {p1}, Ll81;->r0()Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lt51;->l:Ljava/util/HashMap;

    iget-object v1, p1, Ll81;->m:Li91;

    invoke-virtual {v1}, Li91;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    iget-object v1, p1, Ll81;->m:Li91;

    invoke-static {v1}, La81;->d(Li91;)[La81;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v0, 0x0

    aget-object v0, v1, v0

    iget-object v0, v0, La81;->f:Landroid/net/Uri;

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801c6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_1
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lt51;->l:Ljava/util/HashMap;

    iget-object p1, p1, Ll81;->m:Li91;

    invoke-virtual {p1}, Li91;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final l(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const v1, 0x7f1106f1

    :cond_0
    return v1
.end method

.method public final m(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const v1, 0x7f1106f1

    :cond_0
    return v1
.end method

.method public final n(Landroid/view/View;F)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lt51;->n(Landroid/view/View;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    :goto_1
    return-void
.end method
