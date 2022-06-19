.class final Landroidx/constraintlayout/motion/widget/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/k;
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

    .line 262
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 265
    sput-object v0, Landroidx/constraintlayout/motion/widget/k$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyTrigger_framePosition:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 266
    sget-object v0, Landroidx/constraintlayout/motion/widget/k$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyTrigger_onCross:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 267
    sget-object v0, Landroidx/constraintlayout/motion/widget/k$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyTrigger_onNegativeCross:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 268
    sget-object v0, Landroidx/constraintlayout/motion/widget/k$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyTrigger_onPositiveCross:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 269
    sget-object v0, Landroidx/constraintlayout/motion/widget/k$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyTrigger_motionTarget:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 270
    sget-object v0, Landroidx/constraintlayout/motion/widget/k$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyTrigger_triggerId:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 271
    sget-object v0, Landroidx/constraintlayout/motion/widget/k$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyTrigger_triggerSlack:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 272
    sget-object v0, Landroidx/constraintlayout/motion/widget/k$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyTrigger_motion_triggerOnCollision:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 273
    sget-object v0, Landroidx/constraintlayout/motion/widget/k$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyTrigger_motion_postLayoutCollision:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 274
    sget-object v0, Landroidx/constraintlayout/motion/widget/k$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyTrigger_triggerReceiver:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroidx/constraintlayout/motion/widget/k;Landroid/content/res/TypedArray;)V
    .locals 5

    .line 278
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 280
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 281
    sget-object v3, Landroidx/constraintlayout/motion/widget/k$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 322
    :pswitch_1
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/k;->d(Landroidx/constraintlayout/motion/widget/k;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {p0, v3}, Landroidx/constraintlayout/motion/widget/k;->c(Landroidx/constraintlayout/motion/widget/k;I)I

    goto/16 :goto_1

    .line 319
    :pswitch_2
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/k;->c(Landroidx/constraintlayout/motion/widget/k;)Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/k;->a(Landroidx/constraintlayout/motion/widget/k;Z)Z

    goto/16 :goto_2

    .line 316
    :pswitch_3
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/k;->b(Landroidx/constraintlayout/motion/widget/k;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/k;->b(Landroidx/constraintlayout/motion/widget/k;I)I

    goto/16 :goto_2

    .line 283
    :pswitch_4
    iget v3, p0, Landroidx/constraintlayout/motion/widget/k;->b:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/k;->b:I

    .line 284
    iget v2, p0, Landroidx/constraintlayout/motion/widget/k;->b:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/k;->a(Landroidx/constraintlayout/motion/widget/k;F)F

    goto/16 :goto_2

    .line 287
    :pswitch_5
    sget-boolean v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Z

    if-eqz v3, :cond_0

    .line 288
    iget v3, p0, Landroidx/constraintlayout/motion/widget/k;->c:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/k;->c:I

    .line 289
    iget v3, p0, Landroidx/constraintlayout/motion/widget/k;->c:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 290
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/k;->d:Ljava/lang/String;

    goto :goto_2

    .line 293
    :cond_0
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    iget v3, v3, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 294
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/k;->d:Ljava/lang/String;

    goto :goto_2

    .line 296
    :cond_1
    iget v3, p0, Landroidx/constraintlayout/motion/widget/k;->c:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/k;->c:I

    goto :goto_2

    .line 313
    :pswitch_6
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/k;->a(Landroidx/constraintlayout/motion/widget/k;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/k;->a(Landroidx/constraintlayout/motion/widget/k;I)I

    goto :goto_2

    .line 310
    :pswitch_7
    iget v3, p0, Landroidx/constraintlayout/motion/widget/k;->n:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/k;->n:F

    goto :goto_2

    .line 307
    :pswitch_8
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/k;->c(Landroidx/constraintlayout/motion/widget/k;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 304
    :pswitch_9
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/k;->b(Landroidx/constraintlayout/motion/widget/k;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 301
    :pswitch_a
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/k;->a(Landroidx/constraintlayout/motion/widget/k;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 324
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unused attribute 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroidx/constraintlayout/motion/widget/k$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyTrigger"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_0
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
