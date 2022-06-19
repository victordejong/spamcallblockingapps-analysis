.class public Lcom/facebook/login/widget/LoginButton;
.super Lcom/facebook/g;
.source "LoginButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/widget/LoginButton$b;,
        Lcom/facebook/login/widget/LoginButton$a;,
        Lcom/facebook/login/widget/LoginButton$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/facebook/login/widget/LoginButton$a;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Lcom/facebook/login/widget/a$b;

.field private i:Lcom/facebook/login/widget/LoginButton$c;

.field private j:J

.field private k:Lcom/facebook/login/widget/a;

.field private l:Lcom/facebook/e;

.field private m:Lcom/facebook/login/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    const-class v0, Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/login/widget/LoginButton;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 182
    const/4 v2, 0x0

    const-string/jumbo v5, "fb_login_button_create"

    const-string/jumbo v6, "fb_login_button_did_tap"

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v0, Lcom/facebook/login/widget/LoginButton$a;

    invoke-direct {v0}, Lcom/facebook/login/widget/LoginButton$a;-><init>()V

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->e:Lcom/facebook/login/widget/LoginButton$a;

    .line 124
    const-string/jumbo v0, "fb_login_view_usage"

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->f:Ljava/lang/String;

    .line 126
    sget-object v0, Lcom/facebook/login/widget/a$b;->a:Lcom/facebook/login/widget/a$b;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->h:Lcom/facebook/login/widget/a$b;

    .line 128
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/facebook/login/widget/LoginButton;->j:J

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 197
    const-string/jumbo v5, "fb_login_button_create"

    const-string/jumbo v6, "fb_login_button_did_tap"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v0, Lcom/facebook/login/widget/LoginButton$a;

    invoke-direct {v0}, Lcom/facebook/login/widget/LoginButton$a;-><init>()V

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->e:Lcom/facebook/login/widget/LoginButton$a;

    .line 124
    const-string/jumbo v0, "fb_login_view_usage"

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->f:Ljava/lang/String;

    .line 126
    sget-object v0, Lcom/facebook/login/widget/a$b;->a:Lcom/facebook/login/widget/a$b;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->h:Lcom/facebook/login/widget/a$b;

    .line 128
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/facebook/login/widget/LoginButton;->j:J

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    .line 212
    const/4 v4, 0x0

    const-string/jumbo v5, "fb_login_button_create"

    const-string/jumbo v6, "fb_login_button_did_tap"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v0, Lcom/facebook/login/widget/LoginButton$a;

    invoke-direct {v0}, Lcom/facebook/login/widget/LoginButton$a;-><init>()V

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->e:Lcom/facebook/login/widget/LoginButton$a;

    .line 124
    const-string/jumbo v0, "fb_login_view_usage"

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->f:Ljava/lang/String;

    .line 126
    sget-object v0, Lcom/facebook/login/widget/a$b;->a:Lcom/facebook/login/widget/a$b;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->h:Lcom/facebook/login/widget/a$b;

    .line 128
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/facebook/login/widget/LoginButton;->j:J

    .line 219
    return-void
.end method

.method static synthetic a(Lcom/facebook/login/widget/LoginButton;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/facebook/internal/l;)V
    .locals 1

    .prologue
    .line 544
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/internal/l;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 545
    invoke-virtual {p1}, Lcom/facebook/internal/l;->b()Ljava/lang/String;

    move-result-object v0

    .line 546
    invoke-direct {p0, v0}, Lcom/facebook/login/widget/LoginButton;->b(Ljava/lang/String;)V

    .line 548
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/login/widget/LoginButton;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/facebook/login/widget/LoginButton;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/login/widget/LoginButton;Lcom/facebook/internal/l;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/facebook/login/widget/LoginButton;->a(Lcom/facebook/internal/l;)V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 558
    sget-object v0, Lcom/facebook/login/widget/LoginButton$3;->a:[I

    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton;->i:Lcom/facebook/login/widget/LoginButton$c;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 583
    :goto_0
    return-void

    .line 561
    :pswitch_0
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/x;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 562
    invoke-static {}, Lcom/facebook/j;->f()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/login/widget/LoginButton$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/login/widget/LoginButton$1;-><init>(Lcom/facebook/login/widget/LoginButton;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 576
    :pswitch_1
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/login/q$d;->com_facebook_tooltip_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 578
    invoke-direct {p0, v0}, Lcom/facebook/login/widget/LoginButton;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 558
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .prologue
    .line 671
    sget-object v0, Lcom/facebook/login/widget/LoginButton$c;->d:Lcom/facebook/login/widget/LoginButton$c;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->i:Lcom/facebook/login/widget/LoginButton$c;

    .line 672
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/facebook/login/q$f;->com_facebook_login_view:[I

    invoke-virtual {v0, p2, v1, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 678
    :try_start_0
    sget v0, Lcom/facebook/login/q$f;->com_facebook_login_view_com_facebook_confirm_logout:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/login/widget/LoginButton;->b:Z

    .line 679
    sget v0, Lcom/facebook/login/q$f;->com_facebook_login_view_com_facebook_login_text:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->c:Ljava/lang/String;

    .line 680
    sget v0, Lcom/facebook/login/q$f;->com_facebook_login_view_com_facebook_logout_text:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->d:Ljava/lang/String;

    .line 681
    sget v0, Lcom/facebook/login/q$f;->com_facebook_login_view_com_facebook_tooltip_mode:I

    sget-object v2, Lcom/facebook/login/widget/LoginButton$c;->d:Lcom/facebook/login/widget/LoginButton$c;

    .line 683
    invoke-virtual {v2}, Lcom/facebook/login/widget/LoginButton$c;->a()I

    move-result v2

    .line 681
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/login/widget/LoginButton$c;->a(I)Lcom/facebook/login/widget/LoginButton$c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->i:Lcom/facebook/login/widget/LoginButton$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 687
    return-void

    .line 685
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 686
    throw v0
.end method

.method static synthetic b(Lcom/facebook/login/widget/LoginButton;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/facebook/login/widget/LoginButton;->c()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 551
    new-instance v0, Lcom/facebook/login/widget/a;

    invoke-direct {v0, p1, p0}, Lcom/facebook/login/widget/a;-><init>(Ljava/lang/String;Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->k:Lcom/facebook/login/widget/a;

    .line 552
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->k:Lcom/facebook/login/widget/a;

    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton;->h:Lcom/facebook/login/widget/a$b;

    invoke-virtual {v0, v1}, Lcom/facebook/login/widget/a;->a(Lcom/facebook/login/widget/a$b;)V

    .line 553
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->k:Lcom/facebook/login/widget/a;

    iget-wide v2, p0, Lcom/facebook/login/widget/LoginButton;->j:J

    invoke-virtual {v0, v2, v3}, Lcom/facebook/login/widget/a;->a(J)V

    .line 554
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->k:Lcom/facebook/login/widget/a;

    invoke-virtual {v0}, Lcom/facebook/login/widget/a;->a()V

    .line 555
    return-void
.end method

.method private c(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 721
    invoke-virtual {p0, p1}, Lcom/facebook/login/widget/LoginButton;->a(Ljava/lang/String;)I

    move-result v0

    .line 722
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getCompoundPaddingLeft()I

    move-result v1

    .line 723
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getCompoundDrawablePadding()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 725
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getCompoundPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 722
    return v0
.end method

.method static synthetic c(Lcom/facebook/login/widget/LoginButton;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->f:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 730
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/facebook/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 731
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->d:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/login/widget/LoginButton;->setText(Ljava/lang/CharSequence;)V

    .line 753
    :goto_1
    return-void

    .line 731
    :cond_0
    sget v0, Lcom/facebook/login/q$d;->com_facebook_loginview_log_out_button:I

    .line 733
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 735
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 736
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/facebook/login/widget/LoginButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 738
    :cond_2
    sget v0, Lcom/facebook/login/q$d;->com_facebook_loginview_log_in_button_continue:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 740
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getWidth()I

    move-result v2

    .line 742
    if-eqz v2, :cond_3

    .line 744
    invoke-direct {p0, v0}, Lcom/facebook/login/widget/LoginButton;->c(Ljava/lang/String;)I

    move-result v3

    .line 745
    if-le v3, v2, :cond_3

    .line 747
    sget v0, Lcom/facebook/login/q$d;->com_facebook_loginview_log_in_button:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 750
    :cond_3
    invoke-virtual {p0, v0}, Lcom/facebook/login/widget/LoginButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/facebook/login/widget/LoginButton;)Lcom/facebook/login/widget/LoginButton$a;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->e:Lcom/facebook/login/widget/LoginButton$a;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/login/widget/LoginButton;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/login/widget/LoginButton;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/facebook/login/widget/LoginButton;->b:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->k:Lcom/facebook/login/widget/a;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->k:Lcom/facebook/login/widget/a;

    invoke-virtual {v0}, Lcom/facebook/login/widget/a;->b()V

    .line 499
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->k:Lcom/facebook/login/widget/a;

    .line 501
    :cond_0
    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 624
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/g;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 625
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getNewLoginClickListener()Lcom/facebook/login/widget/LoginButton$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/login/widget/LoginButton;->setInternalOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/login/widget/LoginButton;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 629
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/common/a$a;->com_facebook_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/login/widget/LoginButton;->setBackgroundColor(I)V

    .line 635
    const-string/jumbo v0, "Continue with Facebook"

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->c:Ljava/lang/String;

    .line 647
    :goto_0
    invoke-direct {p0}, Lcom/facebook/login/widget/LoginButton;->c()V

    .line 651
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/common/a$b;->com_facebook_button_icon:I

    .line 650
    invoke-static {v0, v1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 649
    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/facebook/login/widget/LoginButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 655
    return-void

    .line 637
    :cond_0
    new-instance v0, Lcom/facebook/login/widget/LoginButton$2;

    invoke-direct {v0, p0}, Lcom/facebook/login/widget/LoginButton$2;-><init>(Lcom/facebook/login/widget/LoginButton;)V

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->l:Lcom/facebook/e;

    goto :goto_0
.end method

.method public a(Lcom/facebook/f;Lcom/facebook/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/f;",
            "Lcom/facebook/h",
            "<",
            "Lcom/facebook/login/o;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getLoginManager()Lcom/facebook/login/m;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/login/m;->a(Lcom/facebook/f;Lcom/facebook/h;)V

    .line 513
    return-void
.end method

.method public getAuthType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->e:Lcom/facebook/login/widget/LoginButton$a;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton$a;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultAudience()Lcom/facebook/login/b;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->e:Lcom/facebook/login/widget/LoginButton$a;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton$a;->a()Lcom/facebook/login/b;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultRequestCode()I
    .locals 1

    .prologue
    .line 757
    sget-object v0, Lcom/facebook/internal/d$b;->a:Lcom/facebook/internal/d$b;

    invoke-virtual {v0}, Lcom/facebook/internal/d$b;->a()I

    move-result v0

    return v0
.end method

.method protected getDefaultStyleResource()I
    .locals 1

    .prologue
    .line 663
    sget v0, Lcom/facebook/login/q$e;->com_facebook_loginview_default_style:I

    return v0
.end method

.method public getLoginBehavior()Lcom/facebook/login/i;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->e:Lcom/facebook/login/widget/LoginButton$a;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton$a;->c()Lcom/facebook/login/i;

    move-result-object v0

    return-object v0
.end method

.method getLoginManager()Lcom/facebook/login/m;
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->m:Lcom/facebook/login/m;

    if-nez v0, :cond_0

    .line 762
    invoke-static {}, Lcom/facebook/login/m;->a()Lcom/facebook/login/m;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->m:Lcom/facebook/login/m;

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->m:Lcom/facebook/login/m;

    return-object v0
.end method

.method protected getNewLoginClickListener()Lcom/facebook/login/widget/LoginButton$b;
    .locals 1

    .prologue
    .line 658
    new-instance v0, Lcom/facebook/login/widget/LoginButton$b;

    invoke-direct {v0, p0}, Lcom/facebook/login/widget/LoginButton$b;-><init>(Lcom/facebook/login/widget/LoginButton;)V

    return-object v0
.end method

.method getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 611
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->e:Lcom/facebook/login/widget/LoginButton$a;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton$a;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getToolTipDisplayTime()J
    .locals 2

    .prologue
    .line 490
    iget-wide v0, p0, Lcom/facebook/login/widget/LoginButton;->j:J

    return-wide v0
.end method

.method public getToolTipMode()Lcom/facebook/login/widget/LoginButton$c;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->i:Lcom/facebook/login/widget/LoginButton$c;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 526
    invoke-super {p0}, Lcom/facebook/g;->onAttachedToWindow()V

    .line 527
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->l:Lcom/facebook/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->l:Lcom/facebook/e;

    invoke-virtual {v0}, Lcom/facebook/e;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->l:Lcom/facebook/e;

    invoke-virtual {v0}, Lcom/facebook/e;->a()V

    .line 529
    invoke-direct {p0}, Lcom/facebook/login/widget/LoginButton;->c()V

    .line 531
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 593
    invoke-super {p0}, Lcom/facebook/g;->onDetachedFromWindow()V

    .line 594
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->l:Lcom/facebook/e;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->l:Lcom/facebook/e;

    invoke-virtual {v0}, Lcom/facebook/e;->b()V

    .line 597
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->a()V

    .line 598
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 535
    invoke-super {p0, p1}, Lcom/facebook/g;->onDraw(Landroid/graphics/Canvas;)V

    .line 537
    iget-boolean v0, p0, Lcom/facebook/login/widget/LoginButton;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/login/widget/LoginButton;->g:Z

    .line 539
    invoke-direct {p0}, Lcom/facebook/login/widget/LoginButton;->b()V

    .line 541
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 587
    invoke-super/range {p0 .. p5}, Lcom/facebook/g;->onLayout(ZIIII)V

    .line 588
    invoke-direct {p0}, Lcom/facebook/login/widget/LoginButton;->c()V

    .line 589
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    .line 691
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 692
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getCompoundPaddingTop()I

    move-result v1

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 693
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    add-int/2addr v0, v1

    .line 694
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getCompoundPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    .line 696
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 697
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->c:Ljava/lang/String;

    .line 700
    if-nez v0, :cond_0

    .line 701
    sget v0, Lcom/facebook/login/q$d;->com_facebook_loginview_log_in_button_continue:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 702
    invoke-direct {p0, v0}, Lcom/facebook/login/widget/LoginButton;->c(Ljava/lang/String;)I

    move-result v3

    .line 703
    invoke-static {v3, p1}, Lcom/facebook/login/widget/LoginButton;->resolveSize(II)I

    move-result v4

    .line 704
    if-ge v4, v3, :cond_0

    .line 705
    sget v0, Lcom/facebook/login/q$d;->com_facebook_loginview_log_in_button:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 708
    :cond_0
    invoke-direct {p0, v0}, Lcom/facebook/login/widget/LoginButton;->c(Ljava/lang/String;)I

    move-result v3

    .line 710
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->d:Ljava/lang/String;

    .line 711
    if-nez v0, :cond_1

    .line 712
    sget v0, Lcom/facebook/login/q$d;->com_facebook_loginview_log_out_button:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 714
    :cond_1
    invoke-direct {p0, v0}, Lcom/facebook/login/widget/LoginButton;->c(Ljava/lang/String;)I

    move-result v0

    .line 716
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p1}, Lcom/facebook/login/widget/LoginButton;->resolveSize(II)I

    move-result v0

    .line 717
    invoke-virtual {p0, v0, v1}, Lcom/facebook/login/widget/LoginButton;->setMeasuredDimension(II)V

    .line 718
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 602
    invoke-super {p0, p1, p2}, Lcom/facebook/g;->onVisibilityChanged(Landroid/view/View;I)V

    .line 604
    if-eqz p2, :cond_0

    .line 605
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->a()V

    .line 607
    :cond_0
    return-void
.end method

.method public setAuthType(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->e:Lcom/facebook/login/widget/LoginButton$a;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$a;->a(Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method public setDefaultAudience(Lcom/facebook/login/b;)V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->e:Lcom/facebook/login/widget/LoginButton$a;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$a;->a(Lcom/facebook/login/b;)V

    .line 240
    return-void
.end method

.method public setLoginBehavior(Lcom/facebook/login/i;)V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->e:Lcom/facebook/login/widget/LoginButton$a;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$a;->a(Lcom/facebook/login/i;)V

    .line 410
    return-void
.end method

.method setLoginManager(Lcom/facebook/login/m;)V
    .locals 0

    .prologue
    .line 768
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->m:Lcom/facebook/login/m;

    .line 769
    return-void
.end method

.method public setLoginText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->c:Ljava/lang/String;

    .line 223
    invoke-direct {p0}, Lcom/facebook/login/widget/LoginButton;->c()V

    .line 224
    return-void
.end method

.method public setLogoutText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->d:Ljava/lang/String;

    .line 228
    invoke-direct {p0}, Lcom/facebook/login/widget/LoginButton;->c()V

    .line 229
    return-void
.end method

.method public setPermissions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->e:Lcom/facebook/login/widget/LoginButton$a;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$a;->a(Ljava/util/List;)V

    .line 319
    return-void
.end method

.method public varargs setPermissions([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->e:Lcom/facebook/login/widget/LoginButton$a;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/widget/LoginButton$a;->a(Ljava/util/List;)V

    .line 337
    return-void
.end method

.method setProperties(Lcom/facebook/login/widget/LoginButton$a;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->e:Lcom/facebook/login/widget/LoginButton$a;

    .line 616
    return-void
.end method

.method public setPublishPermissions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->e:Lcom/facebook/login/widget/LoginButton$a;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$a;->a(Ljava/util/List;)V

    .line 363
    return-void
.end method

.method public varargs setPublishPermissions([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->e:Lcom/facebook/login/widget/LoginButton$a;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/widget/LoginButton$a;->a(Ljava/util/List;)V

    .line 389
    return-void
.end method

.method public setReadPermissions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->e:Lcom/facebook/login/widget/LoginButton$a;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$a;->a(Ljava/util/List;)V

    .line 276
    return-void
.end method

.method public varargs setReadPermissions([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->e:Lcom/facebook/login/widget/LoginButton$a;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/widget/LoginButton$a;->a(Ljava/util/List;)V

    .line 301
    return-void
.end method

.method public setToolTipDisplayTime(J)V
    .locals 1

    .prologue
    .line 481
    iput-wide p1, p0, Lcom/facebook/login/widget/LoginButton;->j:J

    .line 482
    return-void
.end method

.method public setToolTipMode(Lcom/facebook/login/widget/LoginButton$c;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->i:Lcom/facebook/login/widget/LoginButton$c;

    .line 460
    return-void
.end method

.method public setToolTipStyle(Lcom/facebook/login/widget/a$b;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->h:Lcom/facebook/login/widget/a$b;

    .line 449
    return-void
.end method
