.class public Lcom/facebook/share/widget/LikeView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/widget/LikeView$c;,
        Lcom/facebook/share/widget/LikeView$d;,
        Lcom/facebook/share/widget/LikeView$f;,
        Lcom/facebook/share/widget/LikeView$a;,
        Lcom/facebook/share/widget/LikeView$b;,
        Lcom/facebook/share/widget/LikeView$g;,
        Lcom/facebook/share/widget/LikeView$e;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/facebook/share/widget/LikeView$e;

.field private c:Landroid/widget/LinearLayout;

.field private d:Lcom/facebook/share/internal/LikeButton;

.field private e:Lcom/facebook/share/internal/LikeBoxCountView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/facebook/share/internal/a;

.field private h:Lcom/facebook/share/widget/LikeView$f;

.field private i:Landroid/content/BroadcastReceiver;

.field private j:Lcom/facebook/share/widget/LikeView$c;

.field private k:Lcom/facebook/share/widget/LikeView$g;

.field private l:Lcom/facebook/share/widget/LikeView$b;

.field private m:Lcom/facebook/share/widget/LikeView$a;

.field private n:I

.field private o:I

.field private p:I

.field private q:Lcom/facebook/internal/s;

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 291
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 276
    sget-object v0, Lcom/facebook/share/widget/LikeView$g;->DEFAULT:Lcom/facebook/share/widget/LikeView$g;

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->k:Lcom/facebook/share/widget/LikeView$g;

    .line 277
    sget-object v0, Lcom/facebook/share/widget/LikeView$b;->DEFAULT:Lcom/facebook/share/widget/LikeView$b;

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->l:Lcom/facebook/share/widget/LikeView$b;

    .line 278
    sget-object v0, Lcom/facebook/share/widget/LikeView$a;->DEFAULT:Lcom/facebook/share/widget/LikeView$a;

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->m:Lcom/facebook/share/widget/LikeView$a;

    const/4 v0, -0x1

    .line 279
    iput v0, p0, Lcom/facebook/share/widget/LikeView;->n:I

    const/4 v0, 0x1

    .line 286
    iput-boolean v0, p0, Lcom/facebook/share/widget/LikeView;->r:Z

    .line 292
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 298
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 276
    sget-object v0, Lcom/facebook/share/widget/LikeView$g;->DEFAULT:Lcom/facebook/share/widget/LikeView$g;

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->k:Lcom/facebook/share/widget/LikeView$g;

    .line 277
    sget-object v0, Lcom/facebook/share/widget/LikeView$b;->DEFAULT:Lcom/facebook/share/widget/LikeView$b;

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->l:Lcom/facebook/share/widget/LikeView$b;

    .line 278
    sget-object v0, Lcom/facebook/share/widget/LikeView$a;->DEFAULT:Lcom/facebook/share/widget/LikeView$a;

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->m:Lcom/facebook/share/widget/LikeView$a;

    const/4 v0, -0x1

    .line 279
    iput v0, p0, Lcom/facebook/share/widget/LikeView;->n:I

    const/4 v1, 0x1

    .line 286
    iput-boolean v1, p0, Lcom/facebook/share/widget/LikeView;->r:Z

    if-eqz p2, :cond_4

    .line 1401
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 1405
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/facebook/common/a$h;->com_facebook_like_view:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 1410
    sget v1, Lcom/facebook/common/a$h;->com_facebook_like_view_com_facebook_object_id:I

    .line 1412
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1411
    invoke-static {v1, v2}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/widget/LikeView;->a:Ljava/lang/String;

    .line 1413
    sget v1, Lcom/facebook/common/a$h;->com_facebook_like_view_com_facebook_object_type:I

    sget-object v2, Lcom/facebook/share/widget/LikeView$e;->DEFAULT:Lcom/facebook/share/widget/LikeView$e;

    .line 1417
    invoke-virtual {v2}, Lcom/facebook/share/widget/LikeView$e;->getValue()I

    move-result v2

    .line 1415
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 1414
    invoke-static {v1}, Lcom/facebook/share/widget/LikeView$e;->fromInt(I)Lcom/facebook/share/widget/LikeView$e;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/widget/LikeView;->b:Lcom/facebook/share/widget/LikeView$e;

    .line 1418
    sget v1, Lcom/facebook/common/a$h;->com_facebook_like_view_com_facebook_style:I

    sget-object v2, Lcom/facebook/share/widget/LikeView$g;->DEFAULT:Lcom/facebook/share/widget/LikeView$g;

    .line 1421
    invoke-static {v2}, Lcom/facebook/share/widget/LikeView$g;->access$000(Lcom/facebook/share/widget/LikeView$g;)I

    move-result v2

    .line 1420
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 1419
    invoke-static {v1}, Lcom/facebook/share/widget/LikeView$g;->fromInt(I)Lcom/facebook/share/widget/LikeView$g;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/widget/LikeView;->k:Lcom/facebook/share/widget/LikeView$g;

    if-eqz v1, :cond_3

    .line 1426
    sget v1, Lcom/facebook/common/a$h;->com_facebook_like_view_com_facebook_auxiliary_view_position:I

    sget-object v2, Lcom/facebook/share/widget/LikeView$a;->DEFAULT:Lcom/facebook/share/widget/LikeView$a;

    .line 1430
    invoke-static {v2}, Lcom/facebook/share/widget/LikeView$a;->access$100(Lcom/facebook/share/widget/LikeView$a;)I

    move-result v2

    .line 1428
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 1427
    invoke-static {v1}, Lcom/facebook/share/widget/LikeView$a;->fromInt(I)Lcom/facebook/share/widget/LikeView$a;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/widget/LikeView;->m:Lcom/facebook/share/widget/LikeView$a;

    if-eqz v1, :cond_2

    .line 1436
    sget v1, Lcom/facebook/common/a$h;->com_facebook_like_view_com_facebook_horizontal_alignment:I

    sget-object v2, Lcom/facebook/share/widget/LikeView$b;->DEFAULT:Lcom/facebook/share/widget/LikeView$b;

    .line 1440
    invoke-static {v2}, Lcom/facebook/share/widget/LikeView$b;->access$200(Lcom/facebook/share/widget/LikeView$b;)I

    move-result v2

    .line 1438
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 1437
    invoke-static {v1}, Lcom/facebook/share/widget/LikeView$b;->fromInt(I)Lcom/facebook/share/widget/LikeView$b;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/widget/LikeView;->l:Lcom/facebook/share/widget/LikeView$b;

    if-eqz v1, :cond_1

    .line 1445
    sget v1, Lcom/facebook/common/a$h;->com_facebook_like_view_com_facebook_foreground_color:I

    .line 1446
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/share/widget/LikeView;->n:I

    .line 1449
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 1442
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported value for LikeView \'horizontal_alignment\'"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1432
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported value for LikeView \'auxiliary_view_position\'"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1423
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported value for LikeView \'style\'"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 300
    :cond_4
    :goto_0
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a()V
    .locals 3

    .line 593
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->i:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 594
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/i/a/a;->a(Landroid/content/Context;)Landroidx/i/a/a;

    move-result-object v0

    .line 595
    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroidx/i/a/a;->a(Landroid/content/BroadcastReceiver;)V

    .line 597
    iput-object v1, p0, Lcom/facebook/share/widget/LikeView;->i:Landroid/content/BroadcastReceiver;

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->j:Lcom/facebook/share/widget/LikeView$c;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 1776
    iput-boolean v2, v0, Lcom/facebook/share/widget/LikeView$c;->a:Z

    .line 606
    iput-object v1, p0, Lcom/facebook/share/widget/LikeView;->j:Lcom/facebook/share/widget/LikeView$c;

    .line 609
    :cond_1
    iput-object v1, p0, Lcom/facebook/share/widget/LikeView;->g:Lcom/facebook/share/internal/a;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 455
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/common/a$b;->com_facebook_likeview_edge_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/share/widget/LikeView;->o:I

    .line 457
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/common/a$b;->com_facebook_likeview_internal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/share/widget/LikeView;->p:I

    .line 458
    iget v0, p0, Lcom/facebook/share/widget/LikeView;->n:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/common/a$a;->com_facebook_likeview_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/share/widget/LikeView;->n:I

    :cond_0
    const/4 v0, 0x0

    .line 462
    invoke-virtual {p0, v0}, Lcom/facebook/share/widget/LikeView;->setBackgroundColor(I)V

    .line 464
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->c:Landroid/widget/LinearLayout;

    .line 465
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 467
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView;->b(Landroid/content/Context;)V

    .line 470
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView;->c(Landroid/content/Context;)V

    .line 471
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView;->d(Landroid/content/Context;)V

    .line 473
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView;->c:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->d:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 474
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView;->c:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 475
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView;->c:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->e:Lcom/facebook/share/internal/LikeBoxCountView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 477
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/LikeView;->addView(Landroid/view/View;)V

    .line 479
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->b:Lcom/facebook/share/widget/LikeView$e;

    invoke-direct {p0, p1, v0}, Lcom/facebook/share/widget/LikeView;->a(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$e;)V

    .line 480
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/share/widget/LikeView;)V
    .locals 4

    .line 3524
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->g:Lcom/facebook/share/internal/a;

    if-eqz v0, :cond_5

    .line 3526
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->q:Lcom/facebook/internal/s;

    if-nez v0, :cond_2

    .line 3535
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3536
    :goto_0
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_0

    .line 3537
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 3543
    :cond_1
    new-instance p0, Lcom/facebook/FacebookException;

    const-string v0, "Unable to get Activity."

    invoke-direct {p0, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3530
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->g:Lcom/facebook/share/internal/a;

    .line 3547
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3548
    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->k:Lcom/facebook/share/widget/LikeView$g;

    invoke-virtual {v2}, Lcom/facebook/share/widget/LikeView$g;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "style"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3549
    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->m:Lcom/facebook/share/widget/LikeView$a;

    .line 3550
    invoke-virtual {v2}, Lcom/facebook/share/widget/LikeView$a;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "auxiliary_position"

    .line 3549
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3551
    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->l:Lcom/facebook/share/widget/LikeView$b;

    .line 3552
    invoke-virtual {v2}, Lcom/facebook/share/widget/LikeView$b;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "horizontal_alignment"

    .line 3551
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3553
    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->a:Ljava/lang/String;

    const-string v3, ""

    .line 3555
    invoke-static {v2, v3}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "object_id"

    .line 3553
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3556
    iget-object p0, p0, Lcom/facebook/share/widget/LikeView;->b:Lcom/facebook/share/widget/LikeView$e;

    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView$e;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "object_type"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3615
    iget-boolean p0, v0, Lcom/facebook/share/internal/a;->a:Z

    xor-int/lit8 p0, p0, 0x1

    .line 3617
    invoke-virtual {v0}, Lcom/facebook/share/internal/a;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3619
    invoke-virtual {v0, p0}, Lcom/facebook/share/internal/a;->a(Z)V

    .line 3620
    iget-boolean v2, v0, Lcom/facebook/share/internal/a;->b:Z

    if-eqz v2, :cond_3

    .line 3624
    invoke-virtual {v0}, Lcom/facebook/share/internal/a;->c()Lcom/facebook/appevents/m;

    move-result-object p0

    const-string v0, "fb_like_control_did_undo_quickly"

    .line 3625
    invoke-virtual {p0, v0, v1}, Lcom/facebook/appevents/m;->c(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 3627
    :cond_3
    invoke-virtual {v0, p0, v1}, Lcom/facebook/share/internal/a;->a(ZLandroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_5

    xor-int/lit8 p0, p0, 0x1

    .line 3630
    invoke-virtual {v0, p0}, Lcom/facebook/share/internal/a;->a(Z)V

    .line 3728
    :cond_4
    invoke-static {}, Lcom/facebook/share/internal/b;->a()Z

    .line 3730
    invoke-static {}, Lcom/facebook/share/internal/b;->b()Z

    const-string p0, "present_dialog"

    .line 3734
    invoke-virtual {v0, p0, v1}, Lcom/facebook/share/internal/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3735
    invoke-static {}, Lcom/facebook/internal/ae;->a()V

    const/4 p0, 0x0

    const-string v0, "com.facebook.sdk.LikeActionController.UPDATED"

    .line 4556
    invoke-static {p0, v0, p0}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/facebook/share/widget/LikeView;Lcom/facebook/share/internal/a;)V
    .locals 2

    .line 4578
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->g:Lcom/facebook/share/internal/a;

    .line 4580
    new-instance p1, Lcom/facebook/share/widget/LikeView$d;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/facebook/share/widget/LikeView$d;-><init>(Lcom/facebook/share/widget/LikeView;Lcom/facebook/share/widget/LikeView$1;)V

    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->i:Landroid/content/BroadcastReceiver;

    .line 4581
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/i/a/a;->a(Landroid/content/Context;)Landroidx/i/a/a;

    move-result-object p1

    .line 4584
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.facebook.sdk.LikeActionController.UPDATED"

    .line 4585
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.facebook.sdk.LikeActionController.DID_ERROR"

    .line 4586
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.facebook.sdk.LikeActionController.DID_RESET"

    .line 4587
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4589
    iget-object p0, p0, Lcom/facebook/share/widget/LikeView;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Landroidx/i/a/a;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/share/widget/LikeView;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$e;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/widget/LikeView;->a(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$e;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$e;)V
    .locals 2

    .line 562
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->a()V

    .line 564
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->a:Ljava/lang/String;

    .line 565
    iput-object p2, p0, Lcom/facebook/share/widget/LikeView;->b:Lcom/facebook/share/widget/LikeView$e;

    .line 567
    invoke-static {p1}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 571
    :cond_0
    new-instance v0, Lcom/facebook/share/widget/LikeView$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/widget/LikeView$c;-><init>(Lcom/facebook/share/widget/LikeView;Lcom/facebook/share/widget/LikeView$1;)V

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->j:Lcom/facebook/share/widget/LikeView$c;

    .line 572
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->j:Lcom/facebook/share/widget/LikeView$c;

    invoke-static {p1, p2, v0}, Lcom/facebook/share/internal/a;->a(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$e;Lcom/facebook/share/internal/a$c;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/facebook/share/widget/LikeView;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/facebook/share/widget/LikeView;->a:Ljava/lang/String;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 613
    iget-boolean v0, p0, Lcom/facebook/share/widget/LikeView;->r:Z

    xor-int/lit8 v0, v0, 0x1

    .line 615
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->g:Lcom/facebook/share/internal/a;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 616
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->d:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {v1, v2}, Lcom/facebook/share/internal/LikeButton;->setSelected(Z)V

    .line 617
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->f:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->e:Lcom/facebook/share/internal/LikeBoxCountView;

    invoke-virtual {v1, v2}, Lcom/facebook/share/internal/LikeBoxCountView;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->d:Lcom/facebook/share/internal/LikeButton;

    .line 2603
    iget-boolean v1, v1, Lcom/facebook/share/internal/a;->a:Z

    .line 620
    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/LikeButton;->setSelected(Z)V

    .line 621
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->g:Lcom/facebook/share/internal/a;

    invoke-virtual {v1}, Lcom/facebook/share/internal/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->e:Lcom/facebook/share/internal/LikeBoxCountView;

    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->g:Lcom/facebook/share/internal/a;

    invoke-virtual {v1}, Lcom/facebook/share/internal/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/LikeBoxCountView;->setText(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 627
    :goto_0
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 628
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->d:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {v1, v0}, Lcom/facebook/share/internal/LikeButton;->setEnabled(Z)V

    .line 630
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->c()V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .line 484
    new-instance v0, Lcom/facebook/share/internal/LikeButton;

    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->g:Lcom/facebook/share/internal/a;

    if-eqz v1, :cond_0

    .line 1603
    iget-boolean v1, v1, Lcom/facebook/share/internal/a;->a:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 486
    :goto_0
    invoke-direct {v0, p1, v1}, Lcom/facebook/share/internal/LikeButton;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->d:Lcom/facebook/share/internal/LikeButton;

    .line 487
    new-instance p1, Lcom/facebook/share/widget/LikeView$1;

    invoke-direct {p1, p0}, Lcom/facebook/share/widget/LikeView$1;-><init>(Lcom/facebook/share/widget/LikeView;)V

    invoke-virtual {v0, p1}, Lcom/facebook/share/internal/LikeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 498
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->d:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {v0, p1}, Lcom/facebook/share/internal/LikeButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private c()V
    .locals 7

    .line 635
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 636
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->d:Lcom/facebook/share/internal/LikeButton;

    .line 637
    invoke-virtual {v1}, Lcom/facebook/share/internal/LikeButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 638
    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->l:Lcom/facebook/share/widget/LikeView$b;

    sget-object v3, Lcom/facebook/share/widget/LikeView$b;->LEFT:Lcom/facebook/share/widget/LikeView$b;

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->l:Lcom/facebook/share/widget/LikeView$b;

    sget-object v3, Lcom/facebook/share/widget/LikeView$b;->CENTER:Lcom/facebook/share/widget/LikeView$b;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    :goto_0
    or-int/lit8 v3, v2, 0x30

    .line 645
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 646
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 649
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 650
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->e:Lcom/facebook/share/internal/LikeBoxCountView;

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/LikeBoxCountView;->setVisibility(I)V

    .line 653
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->k:Lcom/facebook/share/widget/LikeView$g;

    sget-object v1, Lcom/facebook/share/widget/LikeView$g;->STANDARD:Lcom/facebook/share/widget/LikeView$g;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->g:Lcom/facebook/share/internal/a;

    if-eqz v0, :cond_2

    .line 655
    invoke-virtual {v0}, Lcom/facebook/share/internal/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 656
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->f:Landroid/widget/TextView;

    goto :goto_1

    .line 657
    :cond_2
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->k:Lcom/facebook/share/widget/LikeView$g;

    sget-object v1, Lcom/facebook/share/widget/LikeView$g;->BOX_COUNT:Lcom/facebook/share/widget/LikeView$g;

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->g:Lcom/facebook/share/internal/a;

    if-eqz v0, :cond_a

    .line 659
    invoke-virtual {v0}, Lcom/facebook/share/internal/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 660
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->d()V

    .line 661
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->e:Lcom/facebook/share/internal/LikeBoxCountView;

    :goto_1
    const/4 v1, 0x0

    .line 666
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 670
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 671
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 673
    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->c:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/facebook/share/widget/LikeView;->m:Lcom/facebook/share/widget/LikeView$a;

    sget-object v6, Lcom/facebook/share/widget/LikeView$a;->INLINE:Lcom/facebook/share/widget/LikeView$a;

    if-ne v3, v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 678
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->m:Lcom/facebook/share/widget/LikeView$a;

    sget-object v2, Lcom/facebook/share/widget/LikeView$a;->TOP:Lcom/facebook/share/widget/LikeView$a;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->m:Lcom/facebook/share/widget/LikeView$a;

    sget-object v2, Lcom/facebook/share/widget/LikeView$a;->INLINE:Lcom/facebook/share/widget/LikeView$a;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->l:Lcom/facebook/share/widget/LikeView$b;

    sget-object v2, Lcom/facebook/share/widget/LikeView$b;->RIGHT:Lcom/facebook/share/widget/LikeView$b;

    if-ne v1, v2, :cond_4

    goto :goto_3

    .line 686
    :cond_4
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 687
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 682
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->c:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->d:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 683
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->c:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->d:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 690
    :goto_4
    sget-object v1, Lcom/facebook/share/widget/LikeView$2;->a:[I

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->m:Lcom/facebook/share/widget/LikeView$a;

    invoke-virtual {v2}, Lcom/facebook/share/widget/LikeView$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v5, :cond_9

    const/4 v2, 0x2

    if-eq v1, v2, :cond_8

    if-eq v1, v4, :cond_6

    goto :goto_5

    .line 698
    :cond_6
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->l:Lcom/facebook/share/widget/LikeView$b;

    sget-object v2, Lcom/facebook/share/widget/LikeView$b;->RIGHT:Lcom/facebook/share/widget/LikeView$b;

    if-ne v1, v2, :cond_7

    .line 699
    iget v1, p0, Lcom/facebook/share/widget/LikeView;->o:I

    iget v2, p0, Lcom/facebook/share/widget/LikeView;->p:I

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 701
    :cond_7
    iget v1, p0, Lcom/facebook/share/widget/LikeView;->p:I

    iget v2, p0, Lcom/facebook/share/widget/LikeView;->o:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :goto_5
    return-void

    .line 695
    :cond_8
    iget v1, p0, Lcom/facebook/share/widget/LikeView;->o:I

    iget v2, p0, Lcom/facebook/share/widget/LikeView;->p:I

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 692
    :cond_9
    iget v1, p0, Lcom/facebook/share/widget/LikeView;->o:I

    iget v2, p0, Lcom/facebook/share/widget/LikeView;->p:I

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_a
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    .line 502
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->f:Landroid/widget/TextView;

    .line 505
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/facebook/common/a$b;->com_facebook_likeview_text_size:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/4 v1, 0x0

    .line 503
    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 506
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView;->f:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 507
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView;->f:Landroid/widget/TextView;

    iget v0, p0, Lcom/facebook/share/widget/LikeView;->n:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 508
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView;->f:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 510
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 512
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic c(Lcom/facebook/share/widget/LikeView;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->b()V

    return-void
.end method

.method static synthetic d(Lcom/facebook/share/widget/LikeView;)Lcom/facebook/share/widget/LikeView$f;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/facebook/share/widget/LikeView;->h:Lcom/facebook/share/widget/LikeView$f;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 708
    sget-object v0, Lcom/facebook/share/widget/LikeView$2;->a:[I

    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->m:Lcom/facebook/share/widget/LikeView$a;

    invoke-virtual {v1}, Lcom/facebook/share/widget/LikeView$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->e:Lcom/facebook/share/internal/LikeBoxCountView;

    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->l:Lcom/facebook/share/widget/LikeView$b;

    sget-object v2, Lcom/facebook/share/widget/LikeView$b;->RIGHT:Lcom/facebook/share/widget/LikeView$b;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/facebook/share/internal/LikeBoxCountView$a;->RIGHT:Lcom/facebook/share/internal/LikeBoxCountView$a;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/facebook/share/internal/LikeBoxCountView$a;->LEFT:Lcom/facebook/share/internal/LikeBoxCountView$a;

    goto :goto_0

    .line 713
    :cond_2
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->e:Lcom/facebook/share/internal/LikeBoxCountView;

    sget-object v1, Lcom/facebook/share/internal/LikeBoxCountView$a;->TOP:Lcom/facebook/share/internal/LikeBoxCountView$a;

    goto :goto_0

    .line 710
    :cond_3
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->e:Lcom/facebook/share/internal/LikeBoxCountView;

    sget-object v1, Lcom/facebook/share/internal/LikeBoxCountView$a;->BOTTOM:Lcom/facebook/share/internal/LikeBoxCountView$a;

    .line 716
    :goto_0
    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/LikeBoxCountView;->setCaretPosition(Lcom/facebook/share/internal/LikeBoxCountView$a;)V

    :goto_1
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 1

    .line 516
    new-instance v0, Lcom/facebook/share/internal/LikeBoxCountView;

    invoke-direct {v0, p1}, Lcom/facebook/share/internal/LikeBoxCountView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->e:Lcom/facebook/share/internal/LikeBoxCountView;

    .line 518
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 520
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->e:Lcom/facebook/share/internal/LikeBoxCountView;

    invoke-virtual {v0, p1}, Lcom/facebook/share/internal/LikeBoxCountView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic e(Lcom/facebook/share/widget/LikeView;)Lcom/facebook/share/widget/LikeView$e;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/facebook/share/widget/LikeView;->b:Lcom/facebook/share/widget/LikeView$e;

    return-object p0
.end method

.method static synthetic f(Lcom/facebook/share/widget/LikeView;)Lcom/facebook/share/widget/LikeView$c;
    .locals 1

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->j:Lcom/facebook/share/widget/LikeView$c;

    return-object v0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .line 395
    sget-object v0, Lcom/facebook/share/widget/LikeView$e;->UNKNOWN:Lcom/facebook/share/widget/LikeView$e;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/share/widget/LikeView;->setObjectIdAndType(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$e;)V

    .line 397
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setAuxiliaryViewPosition(Lcom/facebook/share/widget/LikeView$a;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 330
    :cond_0
    sget-object p1, Lcom/facebook/share/widget/LikeView$a;->DEFAULT:Lcom/facebook/share/widget/LikeView$a;

    .line 332
    :goto_0
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->m:Lcom/facebook/share/widget/LikeView$a;

    if-eq v0, p1, :cond_1

    .line 333
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->m:Lcom/facebook/share/widget/LikeView$a;

    .line 335
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->c()V

    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    .line 387
    iput-boolean p1, p0, Lcom/facebook/share/widget/LikeView;->r:Z

    .line 389
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->b()V

    return-void
.end method

.method public setForegroundColor(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 354
    iget v0, p0, Lcom/facebook/share/widget/LikeView;->n:I

    if-eq v0, p1, :cond_0

    .line 355
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setFragment(Landroid/app/Fragment;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 380
    new-instance v0, Lcom/facebook/internal/s;

    invoke-direct {v0, p1}, Lcom/facebook/internal/s;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->q:Lcom/facebook/internal/s;

    return-void
.end method

.method public setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 374
    new-instance v0, Lcom/facebook/internal/s;

    invoke-direct {v0, p1}, Lcom/facebook/internal/s;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->q:Lcom/facebook/internal/s;

    return-void
.end method

.method public setHorizontalAlignment(Lcom/facebook/share/widget/LikeView$b;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 342
    :cond_0
    sget-object p1, Lcom/facebook/share/widget/LikeView$b;->DEFAULT:Lcom/facebook/share/widget/LikeView$b;

    .line 344
    :goto_0
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->l:Lcom/facebook/share/widget/LikeView$b;

    if-eq v0, p1, :cond_1

    .line 345
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->l:Lcom/facebook/share/widget/LikeView$b;

    .line 347
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->c()V

    :cond_1
    return-void
.end method

.method public setLikeViewStyle(Lcom/facebook/share/widget/LikeView$g;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    sget-object p1, Lcom/facebook/share/widget/LikeView$g;->DEFAULT:Lcom/facebook/share/widget/LikeView$g;

    .line 320
    :goto_0
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->k:Lcom/facebook/share/widget/LikeView$g;

    if-eq v0, p1, :cond_1

    .line 321
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->k:Lcom/facebook/share/widget/LikeView$g;

    .line 323
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->c()V

    :cond_1
    return-void
.end method

.method public setObjectIdAndType(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$e;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 306
    invoke-static {p1, v0}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    sget-object p2, Lcom/facebook/share/widget/LikeView$e;->DEFAULT:Lcom/facebook/share/widget/LikeView$e;

    .line 309
    :goto_0
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/facebook/internal/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->b:Lcom/facebook/share/widget/LikeView$e;

    if-eq p2, v0, :cond_2

    .line 310
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/widget/LikeView;->a(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$e;)V

    .line 312
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->b()V

    :cond_2
    return-void
.end method

.method public setOnErrorListener(Lcom/facebook/share/widget/LikeView$f;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 362
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->h:Lcom/facebook/share/widget/LikeView$f;

    return-void
.end method
