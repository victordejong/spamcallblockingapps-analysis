.class final Landroidx/constraintlayout/motion/widget/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/e;
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

    .line 235
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 238
    sput-object v0, Landroidx/constraintlayout/motion/widget/e$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyCycle_motionTarget:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 239
    sget-object v0, Landroidx/constraintlayout/motion/widget/e$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyCycle_framePosition:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 240
    sget-object v0, Landroidx/constraintlayout/motion/widget/e$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyCycle_transitionEasing:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 241
    sget-object v0, Landroidx/constraintlayout/motion/widget/e$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyCycle_curveFit:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 242
    sget-object v0, Landroidx/constraintlayout/motion/widget/e$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyCycle_waveShape:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 243
    sget-object v0, Landroidx/constraintlayout/motion/widget/e$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyCycle_wavePeriod:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 244
    sget-object v0, Landroidx/constraintlayout/motion/widget/e$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyCycle_waveOffset:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 245
    sget-object v0, Landroidx/constraintlayout/motion/widget/e$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyCycle_waveVariesBy:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 246
    sget-object v0, Landroidx/constraintlayout/motion/widget/e$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyCycle_android_alpha:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 247
    sget-object v0, Landroidx/constraintlayout/motion/widget/e$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyCycle_android_elevation:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 248
    sget-object v0, Landroidx/constraintlayout/motion/widget/e$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyCycle_android_rotation:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 249
    sget-object v0, Landroidx/constraintlayout/motion/widget/e$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyCycle_android_rotationX:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 250
    sget-object v0, Landroidx/constraintlayout/motion/widget/e$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyCycle_android_rotationY:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 251
    sget-object v0, Landroidx/constraintlayout/motion/widget/e$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyCycle_transitionPathRotate:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 252
    sget-object v0, Landroidx/constraintlayout/motion/widget/e$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyCycle_android_scaleX:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 253
    sget-object v0, Landroidx/constraintlayout/motion/widget/e$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyCycle_android_scaleY:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 254
    sget-object v0, Landroidx/constraintlayout/motion/widget/e$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyCycle_android_translationX:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 255
    sget-object v0, Landroidx/constraintlayout/motion/widget/e$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyCycle_android_translationY:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 256
    sget-object v0, Landroidx/constraintlayout/motion/widget/e$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyCycle_android_translationZ:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 257
    sget-object v0, Landroidx/constraintlayout/motion/widget/e$a;->a:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/e$b;->KeyCycle_motionProgress:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroidx/constraintlayout/motion/widget/e;Landroid/content/res/TypedArray;)V
    .locals 5

    .line 1261
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 1263
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 1264
    sget-object v3, Landroidx/constraintlayout/motion/widget/e$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1344
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unused attribute 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroidx/constraintlayout/motion/widget/e$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyCycle"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1341
    :pswitch_0
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/e;->q(Landroidx/constraintlayout/motion/widget/e;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/e;->n(Landroidx/constraintlayout/motion/widget/e;F)F

    goto/16 :goto_1

    .line 1336
    :pswitch_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_3

    .line 1337
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/e;->p(Landroidx/constraintlayout/motion/widget/e;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/e;->m(Landroidx/constraintlayout/motion/widget/e;F)F

    goto/16 :goto_1

    .line 1333
    :pswitch_2
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/e;->o(Landroidx/constraintlayout/motion/widget/e;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/e;->l(Landroidx/constraintlayout/motion/widget/e;F)F

    goto/16 :goto_1

    .line 1330
    :pswitch_3
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/e;->n(Landroidx/constraintlayout/motion/widget/e;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/e;->k(Landroidx/constraintlayout/motion/widget/e;F)F

    goto/16 :goto_1

    .line 1327
    :pswitch_4
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/e;->m(Landroidx/constraintlayout/motion/widget/e;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/e;->j(Landroidx/constraintlayout/motion/widget/e;F)F

    goto/16 :goto_1

    .line 1324
    :pswitch_5
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/e;->l(Landroidx/constraintlayout/motion/widget/e;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/e;->i(Landroidx/constraintlayout/motion/widget/e;F)F

    goto/16 :goto_1

    .line 1321
    :pswitch_6
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/e;->k(Landroidx/constraintlayout/motion/widget/e;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/e;->h(Landroidx/constraintlayout/motion/widget/e;F)F

    goto/16 :goto_1

    .line 1318
    :pswitch_7
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/e;->j(Landroidx/constraintlayout/motion/widget/e;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/e;->g(Landroidx/constraintlayout/motion/widget/e;F)F

    goto/16 :goto_1

    .line 1315
    :pswitch_8
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/e;->i(Landroidx/constraintlayout/motion/widget/e;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/e;->f(Landroidx/constraintlayout/motion/widget/e;F)F

    goto/16 :goto_1

    .line 1312
    :pswitch_9
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/e;->h(Landroidx/constraintlayout/motion/widget/e;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/e;->e(Landroidx/constraintlayout/motion/widget/e;F)F

    goto/16 :goto_1

    .line 1309
    :pswitch_a
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/e;->g(Landroidx/constraintlayout/motion/widget/e;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/e;->d(Landroidx/constraintlayout/motion/widget/e;F)F

    goto/16 :goto_1

    .line 1306
    :pswitch_b
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/e;->f(Landroidx/constraintlayout/motion/widget/e;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/e;->c(Landroidx/constraintlayout/motion/widget/e;F)F

    goto/16 :goto_1

    .line 1303
    :pswitch_c
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/e;->e(Landroidx/constraintlayout/motion/widget/e;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/e;->c(Landroidx/constraintlayout/motion/widget/e;I)I

    goto/16 :goto_1

    .line 1295
    :pswitch_d
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 1296
    iget v3, v3, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 1297
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/e;->d(Landroidx/constraintlayout/motion/widget/e;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/e;->b(Landroidx/constraintlayout/motion/widget/e;F)F

    goto/16 :goto_1

    .line 1299
    :cond_0
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/e;->d(Landroidx/constraintlayout/motion/widget/e;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/e;->b(Landroidx/constraintlayout/motion/widget/e;F)F

    goto :goto_1

    .line 1292
    :pswitch_e
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/e;->c(Landroidx/constraintlayout/motion/widget/e;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/e;->a(Landroidx/constraintlayout/motion/widget/e;F)F

    goto :goto_1

    .line 1289
    :pswitch_f
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/e;->b(Landroidx/constraintlayout/motion/widget/e;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/e;->b(Landroidx/constraintlayout/motion/widget/e;I)I

    goto :goto_1

    .line 1286
    :pswitch_10
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/e;->a(Landroidx/constraintlayout/motion/widget/e;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/e;->a(Landroidx/constraintlayout/motion/widget/e;I)I

    goto :goto_1

    .line 1283
    :pswitch_11
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/e;->a(Landroidx/constraintlayout/motion/widget/e;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 1280
    :pswitch_12
    iget v3, p0, Landroidx/constraintlayout/motion/widget/e;->b:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/e;->b:I

    goto :goto_1

    .line 1266
    :pswitch_13
    sget-boolean v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Z

    if-eqz v3, :cond_1

    .line 1267
    iget v3, p0, Landroidx/constraintlayout/motion/widget/e;->c:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/e;->c:I

    .line 1268
    iget v3, p0, Landroidx/constraintlayout/motion/widget/e;->c:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 1269
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/e;->d:Ljava/lang/String;

    goto :goto_1

    .line 1272
    :cond_1
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    iget v3, v3, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 1273
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/e;->d:Ljava/lang/String;

    goto :goto_1

    .line 1275
    :cond_2
    iget v3, p0, Landroidx/constraintlayout/motion/widget/e;->c:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/e;->c:I

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
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
