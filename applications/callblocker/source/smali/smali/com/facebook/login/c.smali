.class public Lcom/facebook/login/c;
.super Landroidx/fragment/app/c;
.source "DeviceAuthDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/c$a;
    }
.end annotation


# instance fields
.field private ae:Landroid/view/View;

.field private af:Landroid/widget/TextView;

.field private ag:Landroid/widget/TextView;

.field private ah:Lcom/facebook/login/d;

.field private ai:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile aj:Lcom/facebook/l;

.field private volatile ak:Ljava/util/concurrent/ScheduledFuture;

.field private volatile al:Lcom/facebook/login/c$a;

.field private am:Landroid/app/Dialog;

.field private an:Z

.field private ao:Z

.field private ap:Lcom/facebook/login/j$c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Landroidx/fragment/app/c;-><init>()V

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/facebook/login/c;->ai:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    iput-boolean v1, p0, Lcom/facebook/login/c;->an:Z

    .line 95
    iput-boolean v1, p0, Lcom/facebook/login/c;->ao:Z

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/c;->ap:Lcom/facebook/login/j$c;

    return-void
.end method

.method private a(Lcom/facebook/login/c$a;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 219
    iput-object p1, p0, Lcom/facebook/login/c;->al:Lcom/facebook/login/c$a;

    .line 220
    iget-object v0, p0, Lcom/facebook/login/c;->af:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/login/c$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {p1}, Lcom/facebook/login/c$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/b/a/a;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 223
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/facebook/login/c;->u()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 224
    iget-object v0, p0, Lcom/facebook/login/c;->ag:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 225
    iget-object v0, p0, Lcom/facebook/login/c;->af:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/facebook/login/c;->ae:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 228
    iget-boolean v0, p0, Lcom/facebook/login/c;->ao:Z

    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p1}, Lcom/facebook/login/c$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/b/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    new-instance v0, Lcom/facebook/a/m;

    invoke-virtual {p0}, Lcom/facebook/login/c;->p()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/a/m;-><init>(Landroid/content/Context;)V

    .line 231
    const-string/jumbo v1, "fb_smart_login_service"

    invoke-virtual {v0, v1}, Lcom/facebook/a/m;->a(Ljava/lang/String;)V

    .line 236
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/login/c$a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    invoke-direct {p0}, Lcom/facebook/login/c;->au()V

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-direct {p0}, Lcom/facebook/login/c;->at()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/login/c;Lcom/facebook/login/c$a;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/facebook/login/c;->a(Lcom/facebook/login/c$a;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/login/c;Ljava/lang/String;Lcom/facebook/internal/x$b;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct/range {p0 .. p6}, Lcom/facebook/login/c;->a(Ljava/lang/String;Lcom/facebook/internal/x$b;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/login/c;Ljava/lang/String;Lcom/facebook/internal/x$b;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct/range {p0 .. p5}, Lcom/facebook/login/c;->a(Ljava/lang/String;Lcom/facebook/internal/x$b;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/login/c;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/login/c;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/facebook/internal/x$b;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 11

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/facebook/login/c;->u()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/common/a$e;->com_facebook_smart_login_confirmation_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-virtual {p0}, Lcom/facebook/login/c;->u()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/common/a$e;->com_facebook_smart_login_confirmation_continue_as:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-virtual {p0}, Lcom/facebook/login/c;->u()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/common/a$e;->com_facebook_smart_login_confirmation_cancel:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 362
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 363
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/facebook/login/c;->p()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 364
    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 365
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v0, Lcom/facebook/login/c$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/login/c$6;-><init>(Lcom/facebook/login/c;Ljava/lang/String;Lcom/facebook/internal/x$b;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    .line 366
    invoke-virtual {v10, v8, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/facebook/login/c$5;

    invoke-direct {v1, p0}, Lcom/facebook/login/c$5;-><init>(Lcom/facebook/login/c;)V

    .line 376
    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 383
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 384
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/facebook/internal/x$b;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 11

    .prologue
    .line 476
    iget-object v0, p0, Lcom/facebook/login/c;->ah:Lcom/facebook/login/d;

    .line 478
    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object v2

    .line 480
    invoke-virtual {p2}, Lcom/facebook/internal/x$b;->a()Ljava/util/List;

    move-result-object v4

    .line 481
    invoke-virtual {p2}, Lcom/facebook/internal/x$b;->b()Ljava/util/List;

    move-result-object v5

    .line 482
    invoke-virtual {p2}, Lcom/facebook/internal/x$b;->c()Ljava/util/List;

    move-result-object v6

    sget-object v7, Lcom/facebook/d;->i:Lcom/facebook/d;

    const/4 v9, 0x0

    move-object v1, p3

    move-object v3, p1

    move-object v8, p4

    move-object/from16 v10, p5

    .line 476
    invoke-virtual/range {v0 .. v10}, Lcom/facebook/login/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/d;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    .line 487
    iget-object v0, p0, Lcom/facebook/login/c;->am:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 488
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 12

    .prologue
    .line 389
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 390
    const-string/jumbo v0, "fields"

    const-string/jumbo v1, "id,permissions,name"

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v8, Ljava/util/Date;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 392
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 395
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    new-instance v10, Ljava/util/Date;

    .line 396
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-direct {v10, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 400
    :goto_1
    new-instance v0, Lcom/facebook/a;

    .line 402
    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/facebook/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/d;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    .line 412
    new-instance v1, Lcom/facebook/k;

    const-string/jumbo v3, "me"

    sget-object v5, Lcom/facebook/o;->a:Lcom/facebook/o;

    new-instance v6, Lcom/facebook/login/c$7;

    invoke-direct {v6, p0, p1, v8, v10}, Lcom/facebook/login/c$7;-><init>(Lcom/facebook/login/c;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    move-object v2, v0

    move-object v4, v11

    invoke-direct/range {v1 .. v6}, Lcom/facebook/k;-><init>(Lcom/facebook/a;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/o;Lcom/facebook/k$b;)V

    .line 468
    invoke-virtual {v1}, Lcom/facebook/k;->j()Lcom/facebook/l;

    .line 469
    return-void

    .line 392
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 396
    :cond_1
    const/4 v10, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/facebook/login/c;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/facebook/login/c;->an:Z

    return v0
.end method

.method static synthetic a(Lcom/facebook/login/c;Z)Z
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/facebook/login/c;->ao:Z

    return p1
.end method

.method private at()V
    .locals 4

    .prologue
    .line 273
    iget-object v0, p0, Lcom/facebook/login/c;->al:Lcom/facebook/login/c$a;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/login/c$a;->b(J)V

    .line 274
    invoke-direct {p0}, Lcom/facebook/login/c;->av()Lcom/facebook/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/k;->j()Lcom/facebook/l;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/c;->aj:Lcom/facebook/l;

    .line 275
    return-void
.end method

.method private au()V
    .locals 5

    .prologue
    .line 278
    invoke-static {}, Lcom/facebook/login/d;->d()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/facebook/login/c$3;

    invoke-direct {v1, p0}, Lcom/facebook/login/c$3;-><init>(Lcom/facebook/login/c;)V

    iget-object v2, p0, Lcom/facebook/login/c;->al:Lcom/facebook/login/c$a;

    .line 285
    invoke-virtual {v2}, Lcom/facebook/login/c$a;->d()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 278
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/c;->ak:Ljava/util/concurrent/ScheduledFuture;

    .line 287
    return-void
.end method

.method private av()Lcom/facebook/k;
    .locals 6

    .prologue
    .line 290
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 291
    const-string/jumbo v0, "code"

    iget-object v1, p0, Lcom/facebook/login/c;->al:Lcom/facebook/login/c$a;

    invoke-virtual {v1}, Lcom/facebook/login/c$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    new-instance v0, Lcom/facebook/k;

    const/4 v1, 0x0

    const-string/jumbo v2, "device/login_status"

    sget-object v4, Lcom/facebook/o;->b:Lcom/facebook/o;

    new-instance v5, Lcom/facebook/login/c$4;

    invoke-direct {v5, p0}, Lcom/facebook/login/c$4;-><init>(Lcom/facebook/login/c;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/k;-><init>(Lcom/facebook/a;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/o;Lcom/facebook/k$b;)V

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/login/c;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/facebook/login/c;->at()V

    return-void
.end method

.method static synthetic c(Lcom/facebook/login/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/login/c;->ai:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/login/c;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/facebook/login/c;->au()V

    return-void
.end method

.method static synthetic e(Lcom/facebook/login/c;)Lcom/facebook/login/c$a;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/login/c;->al:Lcom/facebook/login/c$a;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/login/c;)Lcom/facebook/login/j$c;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/login/c;->ap:Lcom/facebook/login/j$c;

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/login/c;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/login/c;->am:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic h(Lcom/facebook/login/c;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/facebook/login/c;->ao:Z

    return v0
.end method


# virtual methods
.method public K()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 153
    iput-boolean v1, p0, Lcom/facebook/login/c;->an:Z

    .line 154
    iget-object v0, p0, Lcom/facebook/login/c;->ai:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 155
    invoke-super {p0}, Landroidx/fragment/app/c;->K()V

    .line 156
    iget-object v0, p0, Lcom/facebook/login/c;->aj:Lcom/facebook/l;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/facebook/login/c;->aj:Lcom/facebook/l;

    invoke-virtual {v0, v1}, Lcom/facebook/l;->cancel(Z)Z

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/c;->ak:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/facebook/login/c;->ak:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 163
    :cond_1
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 104
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 105
    invoke-virtual {p0}, Lcom/facebook/login/c;->r()Landroidx/fragment/app/d;

    move-result-object v0

    check-cast v0, Lcom/facebook/FacebookActivity;

    .line 106
    invoke-virtual {v0}, Lcom/facebook/FacebookActivity;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/k;

    .line 108
    invoke-virtual {v0}, Lcom/facebook/login/k;->f()Lcom/facebook/login/j;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/facebook/login/j;->g()Lcom/facebook/login/n;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/d;

    iput-object v0, p0, Lcom/facebook/login/c;->ah:Lcom/facebook/login/d;

    .line 111
    if-eqz p3, :cond_0

    .line 112
    const-string/jumbo v0, "request_state"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/c$a;

    .line 113
    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0, v0}, Lcom/facebook/login/c;->a(Lcom/facebook/login/c$a;)V

    .line 118
    :cond_0
    return-object v1
.end method

.method protected a(Lcom/facebook/FacebookException;)V
    .locals 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/facebook/login/c;->ai:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    :goto_0
    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/c;->al:Lcom/facebook/login/c$a;

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/facebook/login/c;->al:Lcom/facebook/login/c$a;

    invoke-virtual {v0}, Lcom/facebook/login/c$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/b/a/a;->c(Ljava/lang/String;)V

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/c;->ah:Lcom/facebook/login/d;

    invoke-virtual {v0, p1}, Lcom/facebook/login/d;->a(Ljava/lang/Exception;)V

    .line 499
    iget-object v0, p0, Lcom/facebook/login/c;->am:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method public a(Lcom/facebook/login/j$c;)V
    .locals 6

    .prologue
    .line 166
    iput-object p1, p0, Lcom/facebook/login/c;->ap:Lcom/facebook/login/j$c;

    .line 167
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 168
    const-string/jumbo v0, "scope"

    const-string/jumbo v1, ","

    invoke-virtual {p1}, Lcom/facebook/login/j$c;->a()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Lcom/facebook/login/j$c;->g()Ljava/lang/String;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_0

    .line 172
    const-string/jumbo v1, "redirect_uri"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/login/j$c;->h()Ljava/lang/String;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_1

    .line 177
    const-string/jumbo v1, "target_user_id"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/facebook/internal/y;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/facebook/internal/y;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    const-string/jumbo v1, "access_token"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string/jumbo v0, "device_info"

    .line 183
    invoke-static {}, Lcom/facebook/b/a/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v0, Lcom/facebook/k;

    const/4 v1, 0x0

    const-string/jumbo v2, "device/login"

    sget-object v4, Lcom/facebook/o;->b:Lcom/facebook/o;

    new-instance v5, Lcom/facebook/login/c$1;

    invoke-direct {v5, p0}, Lcom/facebook/login/c$1;-><init>(Lcom/facebook/login/c;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/k;-><init>(Lcom/facebook/a;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/o;Lcom/facebook/k$b;)V

    .line 215
    invoke-virtual {v0}, Lcom/facebook/k;->j()Lcom/facebook/l;

    .line 216
    return-void
.end method

.method protected as()V
    .locals 3

    .prologue
    .line 503
    iget-object v0, p0, Lcom/facebook/login/c;->ai:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    :goto_0
    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/c;->al:Lcom/facebook/login/c$a;

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/facebook/login/c;->al:Lcom/facebook/login/c$a;

    invoke-virtual {v0}, Lcom/facebook/login/c$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/b/a/a;->c(Ljava/lang/String;)V

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/c;->ah:Lcom/facebook/login/d;

    if-eqz v0, :cond_2

    .line 514
    iget-object v0, p0, Lcom/facebook/login/c;->ah:Lcom/facebook/login/d;

    invoke-virtual {v0}, Lcom/facebook/login/d;->c()V

    .line 517
    :cond_2
    iget-object v0, p0, Lcom/facebook/login/c;->am:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method public c(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 124
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/facebook/login/c;->r()Landroidx/fragment/app/d;

    move-result-object v1

    sget v2, Lcom/facebook/common/a$f;->com_facebook_auth_dialog:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/facebook/login/c;->am:Landroid/app/Dialog;

    .line 126
    invoke-static {}, Lcom/facebook/b/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/login/c;->ao:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/login/c;->l(Z)Landroid/view/View;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/facebook/login/c;->am:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcom/facebook/login/c;->am:Landroid/app/Dialog;

    return-object v0

    .line 126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->e(Landroid/os/Bundle;)V

    .line 143
    iget-object v0, p0, Lcom/facebook/login/c;->al:Lcom/facebook/login/c$a;

    if-eqz v0, :cond_0

    .line 144
    const-string/jumbo v0, "request_state"

    iget-object v1, p0, Lcom/facebook/login/c;->al:Lcom/facebook/login/c$a;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 146
    :cond_0
    return-void
.end method

.method protected l(Z)Landroid/view/View;
    .locals 3

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/facebook/login/c;->r()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/d;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 246
    invoke-virtual {p0, p1}, Lcom/facebook/login/c;->m(Z)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 247
    sget v0, Lcom/facebook/common/a$c;->progress_bar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/c;->ae:Landroid/view/View;

    .line 248
    sget v0, Lcom/facebook/common/a$c;->confirmation_code:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/login/c;->af:Landroid/widget/TextView;

    .line 250
    sget v0, Lcom/facebook/common/a$c;->cancel_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 251
    new-instance v2, Lcom/facebook/login/c$2;

    invoke-direct {v2, p0}, Lcom/facebook/login/c$2;-><init>(Lcom/facebook/login/c;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    sget v0, Lcom/facebook/common/a$c;->com_facebook_device_auth_instructions:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/login/c;->ag:Landroid/widget/TextView;

    .line 260
    iget-object v0, p0, Lcom/facebook/login/c;->ag:Landroid/widget/TextView;

    sget v2, Lcom/facebook/common/a$e;->com_facebook_device_auth_instructions:I

    .line 261
    invoke-virtual {p0, v2}, Lcom/facebook/login/c;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 260
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    return-object v1
.end method

.method protected m(Z)I
    .locals 1

    .prologue
    .line 267
    if-eqz p1, :cond_0

    sget v0, Lcom/facebook/common/a$d;->com_facebook_smart_device_dialog_fragment:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/facebook/common/a$d;->com_facebook_device_auth_dialog_fragment:I

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onDismiss(Landroid/content/DialogInterface;)V

    .line 135
    iget-boolean v0, p0, Lcom/facebook/login/c;->an:Z

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/facebook/login/c;->as()V

    .line 138
    :cond_0
    return-void
.end method
