.class final Landroidx/constraintlayout/motion/widget/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/h;
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

    .line 259
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 262
    sput-object v0, Landroidx/constraintlayout/motion/widget/h$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyPosition_motionTarget:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 263
    sget-object v0, Landroidx/constraintlayout/motion/widget/h$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyPosition_framePosition:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 264
    sget-object v0, Landroidx/constraintlayout/motion/widget/h$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyPosition_transitionEasing:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 265
    sget-object v0, Landroidx/constraintlayout/motion/widget/h$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyPosition_curveFit:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 266
    sget-object v0, Landroidx/constraintlayout/motion/widget/h$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyPosition_drawPath:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 267
    sget-object v0, Landroidx/constraintlayout/motion/widget/h$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyPosition_percentX:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 268
    sget-object v0, Landroidx/constraintlayout/motion/widget/h$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyPosition_percentY:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 269
    sget-object v0, Landroidx/constraintlayout/motion/widget/h$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyPosition_keyPositionType:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 270
    sget-object v0, Landroidx/constraintlayout/motion/widget/h$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyPosition_sizePercent:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 271
    sget-object v0, Landroidx/constraintlayout/motion/widget/h$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyPosition_percentWidth:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 272
    sget-object v0, Landroidx/constraintlayout/motion/widget/h$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyPosition_percentHeight:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 273
    sget-object v0, Landroidx/constraintlayout/motion/widget/h$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyPosition_pathMotionArc:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroidx/constraintlayout/motion/widget/h;Landroid/content/res/TypedArray;)V
    .locals 8

    .line 1277
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const-string v3, "KeyPosition"

    const/4 v4, -0x1

    if-ge v2, v0, :cond_4

    .line 1279
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 1280
    sget-object v6, Landroidx/constraintlayout/motion/widget/h$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    const/4 v7, 0x3

    packed-switch v6, :pswitch_data_0

    .line 1334
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "unused attribute 0x"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "   "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroidx/constraintlayout/motion/widget/h$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1327
    :pswitch_0
    iget v3, p0, Landroidx/constraintlayout/motion/widget/h;->k:F

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/h;->k:F

    goto/16 :goto_1

    .line 1324
    :pswitch_1
    iget v3, p0, Landroidx/constraintlayout/motion/widget/h;->j:F

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/h;->j:F

    goto/16 :goto_1

    .line 1306
    :pswitch_2
    iget v3, p0, Landroidx/constraintlayout/motion/widget/h;->h:I

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/h;->h:I

    goto/16 :goto_1

    .line 1330
    :pswitch_3
    iget v3, p0, Landroidx/constraintlayout/motion/widget/h;->p:I

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/h;->p:I

    goto/16 :goto_1

    .line 1321
    :pswitch_4
    iget v3, p0, Landroidx/constraintlayout/motion/widget/h;->k:F

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/h;->j:F

    iput v3, p0, Landroidx/constraintlayout/motion/widget/h;->k:F

    goto/16 :goto_1

    .line 1318
    :pswitch_5
    iget v3, p0, Landroidx/constraintlayout/motion/widget/h;->m:F

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/h;->m:F

    goto/16 :goto_1

    .line 1315
    :pswitch_6
    iget v3, p0, Landroidx/constraintlayout/motion/widget/h;->l:F

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/h;->l:F

    goto :goto_1

    .line 1312
    :pswitch_7
    iget v3, p0, Landroidx/constraintlayout/motion/widget/h;->i:I

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/h;->i:I

    goto :goto_1

    .line 1309
    :pswitch_8
    iget v3, p0, Landroidx/constraintlayout/motion/widget/h;->q:I

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/h;->q:I

    goto :goto_1

    .line 1299
    :pswitch_9
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    iget v3, v3, Landroid/util/TypedValue;->type:I

    if-ne v3, v7, :cond_0

    .line 1300
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/h;->g:Ljava/lang/String;

    goto :goto_1

    .line 1302
    :cond_0
    sget-object v3, Landroidx/constraintlayout/motion/a/c;->c:[Ljava/lang/String;

    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/h;->g:Ljava/lang/String;

    goto :goto_1

    .line 1296
    :pswitch_a
    iget v3, p0, Landroidx/constraintlayout/motion/widget/h;->b:I

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/h;->b:I

    goto :goto_1

    .line 1282
    :pswitch_b
    sget-boolean v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Z

    if-eqz v3, :cond_1

    .line 1283
    iget v3, p0, Landroidx/constraintlayout/motion/widget/h;->c:I

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/h;->c:I

    .line 1284
    iget v3, p0, Landroidx/constraintlayout/motion/widget/h;->c:I

    if-ne v3, v4, :cond_3

    .line 1285
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/h;->d:Ljava/lang/String;

    goto :goto_1

    .line 1288
    :cond_1
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    iget v3, v3, Landroid/util/TypedValue;->type:I

    if-ne v3, v7, :cond_2

    .line 1289
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/h;->d:Ljava/lang/String;

    goto :goto_1

    .line 1291
    :cond_2
    iget v3, p0, Landroidx/constraintlayout/motion/widget/h;->c:I

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/h;->c:I

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1338
    :cond_4
    iget p0, p0, Landroidx/constraintlayout/motion/widget/h;->b:I

    if-ne p0, v4, :cond_5

    const-string p0, "no frame position"

    .line 1339
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
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
        :pswitch_0
    .end packed-switch
.end method
