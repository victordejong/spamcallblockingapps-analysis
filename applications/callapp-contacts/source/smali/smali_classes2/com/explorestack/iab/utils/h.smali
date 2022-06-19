.class public final Lcom/explorestack/iab/utils/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/Float;

.field public i:Ljava/lang/Float;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/Float;

.field l:Ljava/lang/Float;

.field m:Ljava/lang/Float;

.field public n:Ljava/lang/Integer;

.field public o:Ljava/lang/Float;

.field private p:Ljava/lang/Integer;

.field private q:Ljava/lang/Integer;

.field private r:Ljava/lang/Integer;

.field private s:Ljava/lang/Integer;

.field private t:Ljava/lang/Integer;

.field private u:Ljava/lang/Integer;

.field private v:Ljava/lang/Integer;

.field private w:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/explorestack/iab/utils/h;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-direct {p0, p1}, Lcom/explorestack/iab/utils/h;->b(Lcom/explorestack/iab/utils/h;)V

    return-void
.end method

.method private b(Lcom/explorestack/iab/utils/h;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 497
    :cond_0
    iget-object v0, p1, Lcom/explorestack/iab/utils/h;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 498
    iput-object v0, p0, Lcom/explorestack/iab/utils/h;->a:Ljava/lang/Integer;

    .line 500
    :cond_1
    iget-object v0, p1, Lcom/explorestack/iab/utils/h;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 501
    iput-object v0, p0, Lcom/explorestack/iab/utils/h;->b:Ljava/lang/Integer;

    .line 503
    :cond_2
    iget-object v0, p1, Lcom/explorestack/iab/utils/h;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 504
    iput-object v0, p0, Lcom/explorestack/iab/utils/h;->c:Ljava/lang/Boolean;

    .line 506
    :cond_3
    iget-object v0, p1, Lcom/explorestack/iab/utils/h;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 507
    iput-object v0, p0, Lcom/explorestack/iab/utils/h;->d:Ljava/lang/Boolean;

    .line 509
    :cond_4
    iget-object v0, p1, Lcom/explorestack/iab/utils/h;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 510
    iput-object v0, p0, Lcom/explorestack/iab/utils/h;->e:Ljava/lang/Integer;

    .line 512
    :cond_5
    iget-object v0, p1, Lcom/explorestack/iab/utils/h;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 513
    iput-object v0, p0, Lcom/explorestack/iab/utils/h;->f:Ljava/lang/Integer;

    .line 515
    :cond_6
    iget-object v0, p1, Lcom/explorestack/iab/utils/h;->g:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 516
    iput-object v0, p0, Lcom/explorestack/iab/utils/h;->g:Ljava/lang/String;

    .line 518
    :cond_7
    iget-object v0, p1, Lcom/explorestack/iab/utils/h;->h:Ljava/lang/Float;

    if-eqz v0, :cond_8

    .line 519
    iput-object v0, p0, Lcom/explorestack/iab/utils/h;->h:Ljava/lang/Float;

    .line 521
    :cond_8
    iget-object v0, p1, Lcom/explorestack/iab/utils/h;->i:Ljava/lang/Float;

    if-eqz v0, :cond_9

    .line 522
    iput-object v0, p0, Lcom/explorestack/iab/utils/h;->i:Ljava/lang/Float;

    .line 524
    :cond_9
    iget-object v0, p1, Lcom/explorestack/iab/utils/h;->p:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    .line 525
    iput-object v0, p0, Lcom/explorestack/iab/utils/h;->p:Ljava/lang/Integer;

    .line 527
    :cond_a
    iget-object v0, p1, Lcom/explorestack/iab/utils/h;->q:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 528
    iput-object v0, p0, Lcom/explorestack/iab/utils/h;->q:Ljava/lang/Integer;

    .line 530
    :cond_b
    iget-object v0, p1, Lcom/explorestack/iab/utils/h;->r:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    .line 531
    iput-object v0, p0, Lcom/explorestack/iab/utils/h;->r:Ljava/lang/Integer;

    .line 533
    :cond_c
    iget-object v0, p1, Lcom/explorestack/iab/utils/h;->s:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    .line 534
    iput-object v0, p0, Lcom/explorestack/iab/utils/h;->s:Ljava/lang/Integer;

    .line 536
    :cond_d
    iget-object v0, p1, Lcom/explorestack/iab/utils/h;->t:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    .line 537
    iput-object v0, p0, Lcom/explorestack/iab/utils/h;->t:Ljava/lang/Integer;

    .line 539
    :cond_e
    iget-object v0, p1, Lcom/explorestack/iab/utils/h;->v:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    .line 540
    iput-object v0, p0, Lcom/explorestack/iab/utils/h;->v:Ljava/lang/Integer;

    .line 542
    :cond_f
    iget-object v0, p1, Lcom/explorestack/iab/utils/h;->u:Ljava/lang/Integer;

    if-eqz v0, :cond_10

    .line 543
    iput-object v0, p0, Lcom/explorestack/iab/utils/h;->u:Ljava/lang/Integer;

    .line 545
    :cond_10
    iget-object v0, p1, Lcom/explorestack/iab/utils/h;->w:Ljava/lang/Integer;

    if-eqz v0, :cond_11

    .line 546
    iput-object v0, p0, Lcom/explorestack/iab/utils/h;->w:Ljava/lang/Integer;

    .line 548
    :cond_11
    iget-object v0, p1, Lcom/explorestack/iab/utils/h;->j:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 549
    iput-object v0, p0, Lcom/explorestack/iab/utils/h;->j:Ljava/lang/String;

    .line 551
    :cond_12
    iget-object v0, p1, Lcom/explorestack/iab/utils/h;->k:Ljava/lang/Float;

    if-eqz v0, :cond_13

    .line 552
    iput-object v0, p0, Lcom/explorestack/iab/utils/h;->k:Ljava/lang/Float;

    .line 554
    :cond_13
    iget-object v0, p1, Lcom/explorestack/iab/utils/h;->l:Ljava/lang/Float;

    if-eqz v0, :cond_14

    .line 555
    iput-object v0, p0, Lcom/explorestack/iab/utils/h;->l:Ljava/lang/Float;

    .line 557
    :cond_14
    iget-object v0, p1, Lcom/explorestack/iab/utils/h;->m:Ljava/lang/Float;

    if-eqz v0, :cond_15

    .line 558
    iput-object v0, p0, Lcom/explorestack/iab/utils/h;->m:Ljava/lang/Float;

    .line 560
    :cond_15
    iget-object v0, p1, Lcom/explorestack/iab/utils/h;->n:Ljava/lang/Integer;

    if-eqz v0, :cond_16

    .line 561
    iput-object v0, p0, Lcom/explorestack/iab/utils/h;->n:Ljava/lang/Integer;

    .line 563
    :cond_16
    iget-object p1, p1, Lcom/explorestack/iab/utils/h;->o:Ljava/lang/Float;

    if-eqz p1, :cond_17

    .line 564
    iput-object p1, p0, Lcom/explorestack/iab/utils/h;->o:Ljava/lang/Float;

    :cond_17
    return-void
.end method


# virtual methods
.method public final a(Lcom/explorestack/iab/utils/h;)Lcom/explorestack/iab/utils/h;
    .locals 1

    .line 487
    new-instance v0, Lcom/explorestack/iab/utils/h;

    invoke-direct {v0}, Lcom/explorestack/iab/utils/h;-><init>()V

    .line 488
    invoke-direct {v0, p0}, Lcom/explorestack/iab/utils/h;->b(Lcom/explorestack/iab/utils/h;)V

    .line 489
    invoke-direct {v0, p1}, Lcom/explorestack/iab/utils/h;->b(Lcom/explorestack/iab/utils/h;)V

    return-object v0
.end method

.method public final a()Ljava/lang/Integer;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/explorestack/iab/utils/h;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    return-object v0

    .line 84
    :cond_0
    sget v0, Lcom/explorestack/iab/utils/Assets;->mainAssetsColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/explorestack/iab/utils/h;->p:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/content/Context;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 186
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .line 438
    invoke-virtual {p0, p1}, Lcom/explorestack/iab/utils/h;->a(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 439
    invoke-virtual {p0, p1}, Lcom/explorestack/iab/utils/h;->c(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 440
    invoke-virtual {p0, p1}, Lcom/explorestack/iab/utils/h;->b(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 441
    invoke-virtual {p0, p1}, Lcom/explorestack/iab/utils/h;->d(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 437
    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 2

    .line 1268
    iget-object v0, p0, Lcom/explorestack/iab/utils/h;->t:Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 1271
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 1269
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 446
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1292
    iget-object v0, p0, Lcom/explorestack/iab/utils/h;->u:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 1293
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 447
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2280
    iget-object v0, p0, Lcom/explorestack/iab/utils/h;->v:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 2281
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 448
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2304
    iget-object v0, p0, Lcom/explorestack/iab/utils/h;->w:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 2305
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/content/Context;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 449
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void
.end method

.method public final a(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 3

    .line 457
    invoke-virtual {p0}, Lcom/explorestack/iab/utils/h;->e()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x11

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    .line 467
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    .line 464
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0xe

    .line 461
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 470
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/iab/utils/h;->f()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    if-eq v0, v2, :cond_5

    const/16 v1, 0x30

    if-eq v0, v1, :cond_4

    const/16 v1, 0x50

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v0, 0xc

    .line 480
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_1
    return-void

    :cond_4
    const/16 v0, 0xa

    .line 477
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void

    :cond_5
    const/16 v0, 0xf

    .line 474
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void
.end method

.method public final a(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/explorestack/iab/utils/h;->p:Ljava/lang/Integer;

    .line 230
    iput-object p2, p0, Lcom/explorestack/iab/utils/h;->r:Ljava/lang/Integer;

    .line 231
    iput-object p3, p0, Lcom/explorestack/iab/utils/h;->q:Ljava/lang/Integer;

    .line 232
    iput-object p4, p0, Lcom/explorestack/iab/utils/h;->s:Ljava/lang/Integer;

    return-void
.end method

.method public final a(Ljava/lang/Number;)V
    .locals 0

    .line 369
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/iab/utils/h;->l:Ljava/lang/Float;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    .line 236
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 237
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/explorestack/iab/utils/h;->a(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void

    :cond_0
    const-string v0, " "

    .line 240
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 241
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 242
    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    .line 243
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/explorestack/iab/utils/h;->a(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void

    .line 244
    :cond_1
    array-length v0, p1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 245
    aget-object v0, p1, v1

    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    .line 246
    aget-object p1, p1, v2

    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    .line 247
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/explorestack/iab/utils/h;->a(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void

    .line 248
    :cond_2
    array-length v0, p1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    .line 249
    aget-object v0, p1, v1

    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    .line 250
    aget-object v1, p1, v2

    invoke-static {v1}, Lcom/explorestack/iab/utils/Utils;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    .line 251
    aget-object p1, p1, v3

    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    .line 252
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/explorestack/iab/utils/h;->a(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void

    .line 253
    :cond_3
    array-length v0, p1

    const/4 v5, 0x4

    if-ne v0, v5, :cond_4

    .line 254
    aget-object v0, p1, v1

    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    .line 255
    aget-object v1, p1, v2

    invoke-static {v1}, Lcom/explorestack/iab/utils/Utils;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    .line 256
    aget-object v2, p1, v3

    invoke-static {v2}, Lcom/explorestack/iab/utils/Utils;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v2

    .line 257
    aget-object p1, p1, v4

    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    .line 258
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/explorestack/iab/utils/h;->a(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_4
    return-void
.end method

.method public final b()Ljava/lang/Integer;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/explorestack/iab/utils/h;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    return-object v0

    .line 96
    :cond_0
    sget v0, Lcom/explorestack/iab/utils/Assets;->backgroundColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/explorestack/iab/utils/h;->q:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/content/Context;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 198
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/explorestack/iab/utils/h;->t:Ljava/lang/Integer;

    .line 315
    iput-object p2, p0, Lcom/explorestack/iab/utils/h;->u:Ljava/lang/Integer;

    .line 316
    iput-object p3, p0, Lcom/explorestack/iab/utils/h;->v:Ljava/lang/Integer;

    .line 317
    iput-object p4, p0, Lcom/explorestack/iab/utils/h;->w:Ljava/lang/Integer;

    return-void
.end method

.method public final b(Ljava/lang/Number;)V
    .locals 0

    .line 387
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/iab/utils/h;->m:Ljava/lang/Float;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6

    .line 321
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 322
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/explorestack/iab/utils/h;->b(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void

    :cond_0
    const-string v0, " "

    .line 325
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 326
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 327
    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    .line 328
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/explorestack/iab/utils/h;->b(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void

    .line 329
    :cond_1
    array-length v0, p1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 330
    aget-object v0, p1, v1

    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    .line 331
    aget-object p1, p1, v2

    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    .line 332
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/explorestack/iab/utils/h;->b(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void

    .line 333
    :cond_2
    array-length v0, p1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    .line 334
    aget-object v0, p1, v1

    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    .line 335
    aget-object v1, p1, v2

    invoke-static {v1}, Lcom/explorestack/iab/utils/Utils;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    .line 336
    aget-object p1, p1, v3

    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    .line 337
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/explorestack/iab/utils/h;->b(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void

    .line 338
    :cond_3
    array-length v0, p1

    const/4 v5, 0x4

    if-ne v0, v5, :cond_4

    .line 339
    aget-object v0, p1, v1

    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    .line 340
    aget-object v1, p1, v2

    invoke-static {v1}, Lcom/explorestack/iab/utils/Utils;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    .line 341
    aget-object v2, p1, v3

    invoke-static {v2}, Lcom/explorestack/iab/utils/Utils;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v2

    .line 342
    aget-object p1, p1, v4

    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    .line 343
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/explorestack/iab/utils/h;->b(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_4
    return-void
.end method

.method public final c()Ljava/lang/Boolean;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/explorestack/iab/utils/h;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    return-object v0

    .line 108
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final c(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/explorestack/iab/utils/h;->r:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/content/Context;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 210
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final d()Ljava/lang/Boolean;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/explorestack/iab/utils/h;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    return-object v0

    .line 120
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final d(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/explorestack/iab/utils/h;->s:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/content/Context;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 222
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final e(Landroid/content/Context;)Ljava/lang/Float;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/explorestack/iab/utils/h;->k:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 365
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final e()Ljava/lang/Integer;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/explorestack/iab/utils/h;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x3

    .line 132
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/Integer;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/explorestack/iab/utils/h;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x30

    .line 144
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/Float;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/explorestack/iab/utils/h;->h:Ljava/lang/Float;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 165
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/Integer;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/explorestack/iab/utils/h;->n:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 413
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/explorestack/iab/utils/h;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/explorestack/iab/utils/h;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
