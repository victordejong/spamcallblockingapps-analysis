.class final Landroidx/constraintlayout/motion/widget/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static a:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 321
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 324
    sput-object v0, Landroidx/constraintlayout/motion/widget/j$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyTimeCycle_android_alpha:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 325
    sget-object v0, Landroidx/constraintlayout/motion/widget/j$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyTimeCycle_android_elevation:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 326
    sget-object v0, Landroidx/constraintlayout/motion/widget/j$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyTimeCycle_android_rotation:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 327
    sget-object v0, Landroidx/constraintlayout/motion/widget/j$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyTimeCycle_android_rotationX:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 328
    sget-object v0, Landroidx/constraintlayout/motion/widget/j$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyTimeCycle_android_rotationY:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 329
    sget-object v0, Landroidx/constraintlayout/motion/widget/j$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyTimeCycle_android_scaleX:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 330
    sget-object v0, Landroidx/constraintlayout/motion/widget/j$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyTimeCycle_transitionPathRotate:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 331
    sget-object v0, Landroidx/constraintlayout/motion/widget/j$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyTimeCycle_transitionEasing:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 332
    sget-object v0, Landroidx/constraintlayout/motion/widget/j$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyTimeCycle_motionTarget:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 333
    sget-object v0, Landroidx/constraintlayout/motion/widget/j$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyTimeCycle_framePosition:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 334
    sget-object v0, Landroidx/constraintlayout/motion/widget/j$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyTimeCycle_curveFit:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 335
    sget-object v0, Landroidx/constraintlayout/motion/widget/j$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyTimeCycle_android_scaleY:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 336
    sget-object v0, Landroidx/constraintlayout/motion/widget/j$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyTimeCycle_android_translationX:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 337
    sget-object v0, Landroidx/constraintlayout/motion/widget/j$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyTimeCycle_android_translationY:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 338
    sget-object v0, Landroidx/constraintlayout/motion/widget/j$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyTimeCycle_android_translationZ:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 339
    sget-object v0, Landroidx/constraintlayout/motion/widget/j$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyTimeCycle_motionProgress:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 340
    sget-object v0, Landroidx/constraintlayout/motion/widget/j$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyTimeCycle_wavePeriod:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 341
    sget-object v0, Landroidx/constraintlayout/motion/widget/j$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyTimeCycle_waveOffset:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 342
    sget-object v0, Landroidx/constraintlayout/motion/widget/j$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyTimeCycle_waveShape:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroidx/constraintlayout/motion/widget/j;Landroid/content/res/TypedArray;)V
    .locals 5

    .line 346
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 348
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 349
    sget-object v3, Landroidx/constraintlayout/motion/widget/j$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 426
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unused attribute 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroidx/constraintlayout/motion/widget/j$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyTimeCycle"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 386
    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 387
    iget v3, v3, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 388
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/j;->g(Landroidx/constraintlayout/motion/widget/j;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/j;->e(Landroidx/constraintlayout/motion/widget/j;F)F

    goto/16 :goto_1

    .line 390
    :cond_0
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/j;->g(Landroidx/constraintlayout/motion/widget/j;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/j;->e(Landroidx/constraintlayout/motion/widget/j;F)F

    goto/16 :goto_1

    .line 383
    :pswitch_2
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/j;->f(Landroidx/constraintlayout/motion/widget/j;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/j;->d(Landroidx/constraintlayout/motion/widget/j;F)F

    goto/16 :goto_1

    .line 380
    :pswitch_3
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/j;->e(Landroidx/constraintlayout/motion/widget/j;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/j;->b(Landroidx/constraintlayout/motion/widget/j;I)I

    goto/16 :goto_1

    .line 423
    :pswitch_4
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/j;->p(Landroidx/constraintlayout/motion/widget/j;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/j;->n(Landroidx/constraintlayout/motion/widget/j;F)F

    goto/16 :goto_1

    .line 418
    :pswitch_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_3

    .line 419
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/j;->o(Landroidx/constraintlayout/motion/widget/j;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/j;->m(Landroidx/constraintlayout/motion/widget/j;F)F

    goto/16 :goto_1

    .line 415
    :pswitch_6
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/j;->n(Landroidx/constraintlayout/motion/widget/j;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/j;->l(Landroidx/constraintlayout/motion/widget/j;F)F

    goto/16 :goto_1

    .line 412
    :pswitch_7
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/j;->m(Landroidx/constraintlayout/motion/widget/j;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/j;->k(Landroidx/constraintlayout/motion/widget/j;F)F

    goto/16 :goto_1

    .line 406
    :pswitch_8
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/j;->k(Landroidx/constraintlayout/motion/widget/j;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/j;->i(Landroidx/constraintlayout/motion/widget/j;F)F

    goto/16 :goto_1

    .line 377
    :pswitch_9
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/j;->d(Landroidx/constraintlayout/motion/widget/j;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/j;->a(Landroidx/constraintlayout/motion/widget/j;I)I

    goto/16 :goto_1

    .line 365
    :pswitch_a
    iget v3, p0, Landroidx/constraintlayout/motion/widget/j;->b:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/j;->b:I

    goto/16 :goto_1

    .line 351
    :pswitch_b
    sget-boolean v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Z

    if-eqz v3, :cond_1

    .line 352
    iget v3, p0, Landroidx/constraintlayout/motion/widget/j;->c:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/j;->c:I

    .line 353
    iget v3, p0, Landroidx/constraintlayout/motion/widget/j;->c:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 354
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/j;->d:Ljava/lang/String;

    goto/16 :goto_1

    .line 357
    :cond_1
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    iget v3, v3, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 358
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/j;->d:Ljava/lang/String;

    goto :goto_1

    .line 360
    :cond_2
    iget v3, p0, Landroidx/constraintlayout/motion/widget/j;->c:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/j;->c:I

    goto :goto_1

    .line 403
    :pswitch_c
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/j;->a(Landroidx/constraintlayout/motion/widget/j;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 409
    :pswitch_d
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/j;->l(Landroidx/constraintlayout/motion/widget/j;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/j;->j(Landroidx/constraintlayout/motion/widget/j;F)F

    goto :goto_1

    .line 394
    :pswitch_e
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/j;->h(Landroidx/constraintlayout/motion/widget/j;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/j;->f(Landroidx/constraintlayout/motion/widget/j;F)F

    goto :goto_1

    .line 400
    :pswitch_f
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/j;->j(Landroidx/constraintlayout/motion/widget/j;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/j;->h(Landroidx/constraintlayout/motion/widget/j;F)F

    goto :goto_1

    .line 397
    :pswitch_10
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/j;->i(Landroidx/constraintlayout/motion/widget/j;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/j;->g(Landroidx/constraintlayout/motion/widget/j;F)F

    goto :goto_1

    .line 374
    :pswitch_11
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/j;->c(Landroidx/constraintlayout/motion/widget/j;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/j;->c(Landroidx/constraintlayout/motion/widget/j;F)F

    goto :goto_1

    .line 371
    :pswitch_12
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/j;->b(Landroidx/constraintlayout/motion/widget/j;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/j;->b(Landroidx/constraintlayout/motion/widget/j;F)F

    goto :goto_1

    .line 368
    :pswitch_13
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/j;->a(Landroidx/constraintlayout/motion/widget/j;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/j;->a(Landroidx/constraintlayout/motion/widget/j;F)F

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
