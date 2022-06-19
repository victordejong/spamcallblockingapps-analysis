.class public Lcom/unknownphone/callblocker/e/c;
.super Landroidx/fragment/app/Fragment;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unknownphone/callblocker/e/c$d;,
        Lcom/unknownphone/callblocker/e/c$e;,
        Lcom/unknownphone/callblocker/e/c$a;,
        Lcom/unknownphone/callblocker/e/c$c;,
        Lcom/unknownphone/callblocker/e/c$b;
    }
.end annotation


# instance fields
.field private a:Lcom/unknownphone/callblocker/e/c$e;

.field private ae:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private af:Landroidx/appcompat/widget/AppCompatImageView;

.field private ag:Landroidx/appcompat/widget/AppCompatTextView;

.field private ah:Landroidx/appcompat/widget/AppCompatButton;

.field private ai:Lcom/unknownphone/callblocker/d/b;

.field private aj:Landroid/content/SharedPreferences;

.field private ak:Landroidx/appcompat/widget/AppCompatImageView;

.field private al:Landroidx/appcompat/widget/AppCompatEditText;

.field private am:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private an:Landroidx/recyclerview/widget/RecyclerView;

.field private ao:Landroid/widget/ProgressBar;

.field private ap:Landroid/view/View;

.field private aq:Lcom/unknownphone/callblocker/e/b;

.field private ar:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unknownphone/callblocker/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private as:Landroid/os/Handler;

.field private at:Lretrofit2/b;

.field private au:I

.field private b:Lcom/unknownphone/callblocker/e/c$c;

.field private c:Landroidx/appcompat/widget/AppCompatTextView;

.field private d:Lcom/google/android/material/bottomsheet/a;

.field private e:Landroidx/appcompat/widget/AppCompatImageButton;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unknownphone/callblocker/e/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroidx/appcompat/widget/AppCompatImageButton;

.field private h:Lcom/unknownphone/callblocker/f/a;

.field private i:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/e/c;I)I
    .locals 0

    .prologue
    .line 86
    iput p1, p0, Lcom/unknownphone/callblocker/e/c;->au:I

    return p1
.end method

.method public static a(Lcom/unknownphone/callblocker/f/a;)Lcom/unknownphone/callblocker/e/c;
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/unknownphone/callblocker/e/c;

    invoke-direct {v0}, Lcom/unknownphone/callblocker/e/c;-><init>()V

    .line 133
    iput-object p0, v0, Lcom/unknownphone/callblocker/e/c;->h:Lcom/unknownphone/callblocker/f/a;

    .line 134
    return-object v0
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/e/c;)Ljava/util/List;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->ar:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/e/c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/unknownphone/callblocker/e/c;->f:Ljava/util/List;

    return-object p1
.end method

.method private a(Lcom/unknownphone/callblocker/e/c$c$a;)V
    .locals 3

    .prologue
    .line 390
    const-string/jumbo v0, "HomeFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/unknownphone/callblocker/e/c$c$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/unknownphone/callblocker/e/c;->au:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->b:Lcom/unknownphone/callblocker/e/c$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->b:Lcom/unknownphone/callblocker/e/c$c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/e/c$c;->cancel(Z)Z

    .line 392
    :cond_0
    new-instance v0, Lcom/unknownphone/callblocker/e/c$c;

    invoke-direct {v0, p0, p1}, Lcom/unknownphone/callblocker/e/c$c;-><init>(Lcom/unknownphone/callblocker/e/c;Lcom/unknownphone/callblocker/e/c$c$a;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/c;->b:Lcom/unknownphone/callblocker/e/c$c;

    .line 393
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->b:Lcom/unknownphone/callblocker/e/c$c;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/e/c$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 394
    return-void
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/e/c;Lcom/unknownphone/callblocker/e/c$c$a;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/unknownphone/callblocker/e/c;->a(Lcom/unknownphone/callblocker/e/c$c$a;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unknownphone/callblocker/e/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 398
    :try_start_0
    sget-object v0, Lcom/unknownphone/callblocker/e/c$c$a;->a:Lcom/unknownphone/callblocker/e/c$c$a;

    invoke-direct {p0, v0}, Lcom/unknownphone/callblocker/e/c;->a(Lcom/unknownphone/callblocker/e/c$c$a;)V

    .line 399
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    const v0, 0x7f10020a

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/e/c;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 401
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 402
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/e/a;

    .line 403
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 404
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 407
    :catch_0
    move-exception v0

    goto :goto_0

    .line 405
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    invoke-direct {p0, v2}, Lcom/unknownphone/callblocker/e/c;->b(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private as()V
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->a:Lcom/unknownphone/callblocker/e/c$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->a:Lcom/unknownphone/callblocker/e/c$e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/e/c$e;->cancel(Z)Z

    .line 588
    :cond_0
    new-instance v0, Lcom/unknownphone/callblocker/e/c$e;

    invoke-direct {v0, p0}, Lcom/unknownphone/callblocker/e/c$e;-><init>(Lcom/unknownphone/callblocker/e/c;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/c;->a:Lcom/unknownphone/callblocker/e/c$e;

    .line 589
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->a:Lcom/unknownphone/callblocker/e/c$e;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/e/c$e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 590
    return-void
.end method

.method static synthetic b(Lcom/unknownphone/callblocker/e/c;)Lcom/unknownphone/callblocker/e/b;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->aq:Lcom/unknownphone/callblocker/e/b;

    return-object v0
.end method

.method static synthetic b(Lcom/unknownphone/callblocker/e/c;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/unknownphone/callblocker/e/c;->c(Ljava/util/List;)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unknownphone/callblocker/e/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 413
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->aj:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "language_code"

    .line 414
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 413
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/g;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 416
    iget-object v1, p0, Lcom/unknownphone/callblocker/e/c;->aj:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "api_key"

    const-string/jumbo v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 418
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 464
    :goto_0
    return-void

    .line 420
    :cond_0
    invoke-static {}, Lcom/unknownphone/callblocker/d/d;->a()Lcom/unknownphone/callblocker/d/d;

    move-result-object v3

    .line 422
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 423
    const-string/jumbo v5, "_action"

    const-string/jumbo v6, "_name_call_log"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string/jumbo v5, "api_key"

    invoke-static {v1}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string/jumbo v1, "lang"

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    .line 426
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 427
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "%s[%d]"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "phone_numbers"

    aput-object v7, v6, v2

    const/4 v7, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/e/a;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 429
    :cond_1
    new-instance v0, Lcom/unknownphone/callblocker/e/c$6;

    invoke-direct {v0, p0}, Lcom/unknownphone/callblocker/e/c$6;-><init>(Lcom/unknownphone/callblocker/e/c;)V

    invoke-virtual {v3, v4, v0}, Lcom/unknownphone/callblocker/d/d;->a(Ljava/util/Map;Lcom/unknownphone/callblocker/d/d$b;)Lretrofit2/b;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/c;->at:Lretrofit2/b;

    goto :goto_0
.end method

.method static synthetic c(Lcom/unknownphone/callblocker/e/c;)Lcom/unknownphone/callblocker/f/a;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->h:Lcom/unknownphone/callblocker/f/a;

    return-object v0
.end method

.method static synthetic c(Lcom/unknownphone/callblocker/e/c;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/unknownphone/callblocker/e/c;->a(Ljava/util/List;)V

    return-void
.end method

.method private c(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unknownphone/callblocker/e/c$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/high16 v11, 0x41700000    # 15.0f

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 502
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/e/c$b;

    .line 504
    new-instance v3, Lcom/unknownphone/callblocker/a/c;

    invoke-direct {v3}, Lcom/unknownphone/callblocker/a/c;-><init>()V

    .line 505
    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Lcom/unknownphone/callblocker/a/c;->a(S)V

    .line 506
    iget-object v1, v0, Lcom/unknownphone/callblocker/e/c$b;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/unknownphone/callblocker/e/c$b;->a:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v1}, Lcom/unknownphone/callblocker/a/c;->a(Ljava/lang/String;)V

    .line 507
    iget-object v0, v0, Lcom/unknownphone/callblocker/e/c$b;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/unknownphone/callblocker/a/c;->b(Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->ai:Lcom/unknownphone/callblocker/d/b;

    invoke-virtual {v0, v3}, Lcom/unknownphone/callblocker/d/b;->a(Lcom/unknownphone/callblocker/a/c;)V

    goto :goto_0

    .line 506
    :cond_0
    const v1, 0x7f10020a

    invoke-virtual {p0, v1}, Lcom/unknownphone/callblocker/e/c;->b(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->h:Lcom/unknownphone/callblocker/f/a;

    if-eqz v0, :cond_2

    .line 513
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->h:Lcom/unknownphone/callblocker/f/a;

    const v1, 0x7f090110

    iget-object v2, p0, Lcom/unknownphone/callblocker/e/c;->h:Lcom/unknownphone/callblocker/f/a;

    invoke-static {v2}, Lcom/unknownphone/callblocker/a/b;->a(Lcom/unknownphone/callblocker/f/a;)Lcom/unknownphone/callblocker/a/b;

    move-result-object v2

    invoke-interface {v0, v1, v2, v8}, Lcom/unknownphone/callblocker/f/a;->a(ILandroidx/fragment/app/Fragment;Z)V

    .line 515
    :cond_2
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/e/c;->p()Landroid/content/Context;

    move-result-object v5

    .line 517
    if-nez v5, :cond_3

    .line 566
    :goto_2
    return-void

    .line 519
    :cond_3
    new-instance v6, Landroid/app/Dialog;

    invoke-direct {v6, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 520
    invoke-virtual {v6, v8}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 521
    const v0, 0x7f0c0046

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 523
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 524
    if-eqz v0, :cond_4

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 526
    :cond_4
    const v0, 0x7f0901c5

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 527
    const v1, 0x7f0901c6

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 528
    const v2, 0x7f0900ec

    invoke-virtual {v6, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    .line 530
    const v3, 0x7f090136

    invoke-virtual {v6, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatButton;

    .line 531
    const v4, 0x7f090088

    invoke-virtual {v6, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 533
    const v7, 0x7f1000ec

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v5, v7, v8}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    invoke-virtual {v0, v12, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 536
    const v0, 0x7f1000ed

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/e/c;->a(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    invoke-virtual {v1, v12, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 538
    invoke-virtual {v1, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 540
    const v0, 0x7f0800c2

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 542
    const v0, 0x7f100051

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(I)V

    .line 543
    new-instance v0, Lcom/unknownphone/callblocker/e/c$9;

    invoke-direct {v0, p0, v6}, Lcom/unknownphone/callblocker/e/c$9;-><init>(Lcom/unknownphone/callblocker/e/c;Landroid/app/Dialog;)V

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    new-instance v0, Lcom/unknownphone/callblocker/e/c$10;

    invoke-direct {v0, p0, v6}, Lcom/unknownphone/callblocker/e/c$10;-><init>(Lcom/unknownphone/callblocker/e/c;Landroid/app/Dialog;)V

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    new-instance v0, Lcom/unknownphone/callblocker/e/c$11;

    invoke-direct {v0, p0}, Lcom/unknownphone/callblocker/e/c$11;-><init>(Lcom/unknownphone/callblocker/e/c;)V

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 565
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto/16 :goto_2
.end method

.method static synthetic d(Lcom/unknownphone/callblocker/e/c;)Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->i:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/unknownphone/callblocker/e/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->am:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/e/c;->p()Landroid/content/Context;

    move-result-object v0

    .line 367
    if-nez v0, :cond_0

    .line 370
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/g;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 369
    iget-object v1, p0, Lcom/unknownphone/callblocker/e/c;->ap:Landroid/view/View;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic f(Lcom/unknownphone/callblocker/e/c;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/unknownphone/callblocker/e/c;->g()V

    return-void
.end method

.method static synthetic g(Lcom/unknownphone/callblocker/e/c;)Lcom/google/android/material/bottomsheet/a;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->d:Lcom/google/android/material/bottomsheet/a;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 373
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->al:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 374
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->g:Landroidx/appcompat/widget/AppCompatImageButton;

    const v1, 0x7f10020d

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->a(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->d()V

    .line 383
    :goto_0
    return-void

    .line 378
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/unknownphone/callblocker/e/c;->h:Lcom/unknownphone/callblocker/f/a;

    const v2, 0x7f090114

    iget-object v3, p0, Lcom/unknownphone/callblocker/e/c;->h:Lcom/unknownphone/callblocker/f/a;

    .line 379
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/unknownphone/callblocker/i/b;->a(Lcom/unknownphone/callblocker/f/a;Ljava/lang/String;)Lcom/unknownphone/callblocker/i/b;

    move-result-object v0

    const/4 v3, 0x1

    .line 378
    invoke-interface {v1, v2, v0, v3}, Lcom/unknownphone/callblocker/f/a;->a(ILandroidx/fragment/app/Fragment;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic h(Lcom/unknownphone/callblocker/e/c;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/unknownphone/callblocker/e/c;->f()V

    return-void
.end method

.method static synthetic i(Lcom/unknownphone/callblocker/e/c;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->aj:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic j(Lcom/unknownphone/callblocker/e/c;)Lcom/unknownphone/callblocker/d/b;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->ai:Lcom/unknownphone/callblocker/d/b;

    return-object v0
.end method

.method static synthetic k(Lcom/unknownphone/callblocker/e/c;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->ae:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic l(Lcom/unknownphone/callblocker/e/c;)I
    .locals 2

    .prologue
    .line 86
    iget v0, p0, Lcom/unknownphone/callblocker/e/c;->au:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/unknownphone/callblocker/e/c;->au:I

    return v0
.end method

.method static synthetic m(Lcom/unknownphone/callblocker/e/c;)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->ag:Landroidx/appcompat/widget/AppCompatTextView;

    return-object v0
.end method


# virtual methods
.method public I()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 307
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->I()V

    .line 309
    const-string/jumbo v0, "HomeFragment"

    const-string/jumbo v1, "onResume() was called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->aj:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "language_code"

    .line 312
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 311
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/g;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    .line 314
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->aj:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "api_key"

    const-string/jumbo v4, ""

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 317
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/e/c;->p()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/unknownphone/callblocker/custom/b;->b:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/unknownphone/callblocker/custom/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 319
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/e/c;->p()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/c;->b(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v1

    const v7, 0x7f0800a7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/bumptech/glide/i;->a(Ljava/lang/Integer;)Lcom/bumptech/glide/h;

    move-result-object v1

    iget-object v7, p0, Lcom/unknownphone/callblocker/e/c;->ak:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v7}, Lcom/bumptech/glide/h;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/a/i;

    .line 320
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/e/c;->p()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/c;->b(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v1

    if-eqz v0, :cond_2

    const v0, 0x7f0800a9

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/i;->a(Ljava/lang/Integer;)Lcom/bumptech/glide/h;

    move-result-object v0

    iget-object v1, p0, Lcom/unknownphone/callblocker/e/c;->af:Landroidx/appcompat/widget/AppCompatImageView;

    .line 321
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/a/i;

    .line 325
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 326
    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v2

    .line 327
    :goto_1
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "ddMMyyyy"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 328
    iget-object v8, p0, Lcom/unknownphone/callblocker/e/c;->aj:Landroid/content/SharedPreferences;

    const-string/jumbo v9, "last_updated_number_of_spam_numbers"

    invoke-interface {v8, v9, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 329
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 331
    if-nez v8, :cond_4

    move v0, v2

    .line 333
    :goto_2
    new-instance v1, Lcom/unknownphone/callblocker/e/c$d;

    if-eqz v0, :cond_5

    move-object v0, v4

    :goto_3
    iget-object v4, p0, Lcom/unknownphone/callblocker/e/c;->aj:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "number_of_spam_numbers"

    const/4 v7, -0x1

    .line 334
    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v1, p0, v6, v0, v4}, Lcom/unknownphone/callblocker/e/c$d;-><init>(Lcom/unknownphone/callblocker/e/c;Landroid/util/Pair;Ljava/lang/String;I)V

    new-array v0, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/unknownphone/callblocker/e/c$d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 337
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->ai:Lcom/unknownphone/callblocker/d/b;

    invoke-virtual {v0, v3, v2}, Lcom/unknownphone/callblocker/d/b;->a(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->i:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    invoke-virtual {v0, v2}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V

    .line 339
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->ae:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()V

    .line 340
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->am:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 341
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->ar:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 342
    iput v3, p0, Lcom/unknownphone/callblocker/e/c;->au:I

    .line 344
    :cond_1
    return-void

    .line 320
    :cond_2
    const v0, 0x7f0800a8

    goto :goto_0

    :cond_3
    move v0, v3

    .line 326
    goto :goto_1

    .line 332
    :cond_4
    if-eqz v0, :cond_6

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_2

    :cond_5
    move-object v0, v5

    .line 333
    goto :goto_3

    :cond_6
    move v0, v3

    goto :goto_2
.end method

.method public K()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->at:Lretrofit2/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->at:Lretrofit2/b;

    invoke-interface {v0}, Lretrofit2/b;->b()V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->as:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->as:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->b:Lcom/unknownphone/callblocker/e/c$c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->b:Lcom/unknownphone/callblocker/e/c$c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/e/c$c;->cancel(Z)Z

    .line 351
    :cond_2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->K()V

    .line 352
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 139
    const v0, 0x7f0c004f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 140
    const v0, 0x7f090154

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/c;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 141
    const v0, 0x7f090153

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/c;->ap:Landroid/view/View;

    .line 142
    const v0, 0x7f0901eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/c;->i:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    .line 143
    const v0, 0x7f09018a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageButton;

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/c;->e:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 144
    const v0, 0x7f090162

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/c;->ah:Landroidx/appcompat/widget/AppCompatButton;

    .line 145
    const v0, 0x7f0901b0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/c;->ao:Landroid/widget/ProgressBar;

    .line 146
    const v0, 0x7f0900b8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/c;->ag:Landroidx/appcompat/widget/AppCompatTextView;

    .line 147
    const v0, 0x7f0900eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/c;->af:Landroidx/appcompat/widget/AppCompatImageView;

    .line 148
    const v0, 0x7f09017b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageButton;

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/c;->g:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 149
    const v0, 0x7f090163

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/c;->an:Landroidx/recyclerview/widget/RecyclerView;

    .line 150
    const v0, 0x7f0900ec

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/c;->ak:Landroidx/appcompat/widget/AppCompatImageView;

    .line 151
    const v0, 0x7f0900b6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/c;->al:Landroidx/appcompat/widget/AppCompatEditText;

    .line 152
    return-object v1
.end method

.method public a()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 468
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/e/c;->p()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->aj:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "review_condition_deep_link"

    const/4 v2, -0x1

    .line 470
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    iget-object v1, p0, Lcom/unknownphone/callblocker/e/c;->f:Ljava/util/List;

    .line 474
    iput-object v4, p0, Lcom/unknownphone/callblocker/e/c;->f:Ljava/util/List;

    .line 476
    new-instance v2, Lcom/google/android/material/bottomsheet/a;

    invoke-virtual {p0}, Lcom/unknownphone/callblocker/e/c;->p()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/material/bottomsheet/a;-><init>(Landroid/content/Context;)V

    .line 478
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/e/c;->F()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0c004b

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 479
    const v0, 0x7f0901c4

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 480
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/e/c;->p()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1000eb

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 479
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    const v0, 0x7f090088

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Lcom/unknownphone/callblocker/e/c$7;

    invoke-direct {v4, p0, v2}, Lcom/unknownphone/callblocker/e/c$7;-><init>(Lcom/unknownphone/callblocker/e/c;Lcom/google/android/material/bottomsheet/a;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    const v0, 0x7f090057

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Lcom/unknownphone/callblocker/e/c$8;

    invoke-direct {v4, p0, v2, v1}, Lcom/unknownphone/callblocker/e/c$8;-><init>(Lcom/unknownphone/callblocker/e/c;Lcom/google/android/material/bottomsheet/a;Ljava/util/List;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomsheet/a;->setContentView(Landroid/view/View;)V

    .line 497
    invoke-virtual {v2}, Lcom/google/android/material/bottomsheet/a;->show()V

    goto :goto_0
.end method

.method public a(I[Ljava/lang/String;[I)V
    .locals 2

    .prologue
    .line 356
    const/16 v0, 0x2fb

    if-ne p1, v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->d:Lcom/google/android/material/bottomsheet/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->d:Lcom/google/android/material/bottomsheet/a;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->d:Lcom/google/android/material/bottomsheet/a;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/a;->dismiss()V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->ap:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 159
    new-instance v0, Lcom/unknownphone/callblocker/d/b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unknownphone/callblocker/d/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/c;->ai:Lcom/unknownphone/callblocker/d/b;

    .line 160
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/c;->am:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.unknownphone.callblocker.PREFS"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/c;->aj:Landroid/content/SharedPreferences;

    .line 162
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/c;->as:Landroid/os/Handler;

    .line 165
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->ao:Landroid/widget/ProgressBar;

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0600cb

    invoke-static {v1, v2}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v1

    .line 165
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/c;->ar:Ljava/util/List;

    .line 170
    new-instance v0, Lcom/unknownphone/callblocker/e/b;

    iget-object v1, p0, Lcom/unknownphone/callblocker/e/c;->ar:Ljava/util/List;

    new-instance v2, Lcom/unknownphone/callblocker/e/c$1;

    invoke-direct {v2, p0}, Lcom/unknownphone/callblocker/e/c$1;-><init>(Lcom/unknownphone/callblocker/e/c;)V

    new-instance v3, Lcom/unknownphone/callblocker/e/c$12;

    invoke-direct {v3, p0}, Lcom/unknownphone/callblocker/e/c$12;-><init>(Lcom/unknownphone/callblocker/e/c;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/unknownphone/callblocker/e/b;-><init>(Ljava/util/List;Lcom/unknownphone/callblocker/custom/f;Lcom/unknownphone/callblocker/custom/f;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/c;->aq:Lcom/unknownphone/callblocker/e/b;

    .line 190
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/c;->ae:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 191
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->an:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/d;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Landroidx/recyclerview/widget/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 192
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->an:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 193
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->an:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/unknownphone/callblocker/e/c;->ae:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 194
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->an:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 195
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->an:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/unknownphone/callblocker/e/c;->aq:Lcom/unknownphone/callblocker/e/b;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 198
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->aq:Lcom/unknownphone/callblocker/e/b;

    new-instance v1, Lcom/unknownphone/callblocker/e/c$13;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/e/c$13;-><init>(Lcom/unknownphone/callblocker/e/c;)V

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/e/b;->a(Landroidx/recyclerview/widget/RecyclerView$c;)V

    .line 207
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->an:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/unknownphone/callblocker/e/c$14;

    iget-object v2, p0, Lcom/unknownphone/callblocker/e/c;->ae:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0, v2}, Lcom/unknownphone/callblocker/e/c$14;-><init>(Lcom/unknownphone/callblocker/e/c;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 216
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->e:Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v1, Lcom/unknownphone/callblocker/e/c$15;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/e/c$15;-><init>(Lcom/unknownphone/callblocker/e/c;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->ah:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/unknownphone/callblocker/e/c$16;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/e/c$16;-><init>(Lcom/unknownphone/callblocker/e/c;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->g:Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v1, Lcom/unknownphone/callblocker/e/c$17;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/e/c$17;-><init>(Lcom/unknownphone/callblocker/e/c;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->al:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v1, Lcom/unknownphone/callblocker/e/c$18;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/e/c$18;-><init>(Lcom/unknownphone/callblocker/e/c;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 247
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/e/c;->d()V

    .line 250
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f10012c

    invoke-virtual {p0, v1}, Lcom/unknownphone/callblocker/e/c;->a(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->ap:Landroid/view/View;

    new-instance v1, Lcom/unknownphone/callblocker/e/c$19;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/e/c$19;-><init>(Lcom/unknownphone/callblocker/e/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/g;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 268
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    new-instance v0, Lcom/google/android/material/bottomsheet/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/material/bottomsheet/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/c;->d:Lcom/google/android/material/bottomsheet/a;

    .line 271
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/e/c;->F()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c004a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 272
    const v0, 0x7f0901c4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v3, 0x7f10012a

    invoke-virtual {p0, v3}, Lcom/unknownphone/callblocker/e/c;->a(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    const v0, 0x7f090088

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/unknownphone/callblocker/e/c$2;

    invoke-direct {v3, p0}, Lcom/unknownphone/callblocker/e/c$2;-><init>(Lcom/unknownphone/callblocker/e/c;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    const v0, 0x7f0900b9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/unknownphone/callblocker/e/c$3;

    invoke-direct {v3, p0, v1}, Lcom/unknownphone/callblocker/e/c$3;-><init>(Lcom/unknownphone/callblocker/e/c;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->d:Lcom/google/android/material/bottomsheet/a;

    new-instance v1, Lcom/unknownphone/callblocker/e/c$4;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/e/c$4;-><init>(Lcom/unknownphone/callblocker/e/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 294
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->d:Lcom/google/android/material/bottomsheet/a;

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/a;->setContentView(Landroid/view/View;)V

    .line 295
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->d:Lcom/google/android/material/bottomsheet/a;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/a;->show()V

    .line 296
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c;->as:Landroid/os/Handler;

    new-instance v1, Lcom/unknownphone/callblocker/e/c$5;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/e/c$5;-><init>(Lcom/unknownphone/callblocker/e/c;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 303
    :cond_0
    return-void
.end method

.method public d()V
    .locals 6

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/e/c;->p()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 571
    sget-object v0, Lcom/unknownphone/callblocker/e/c$c$a;->a:Lcom/unknownphone/callblocker/e/c$c$a;

    invoke-direct {p0, v0}, Lcom/unknownphone/callblocker/e/c;->a(Lcom/unknownphone/callblocker/e/c$c$a;)V

    .line 584
    :goto_0
    return-void

    .line 575
    :cond_0
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/e/c;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/g;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 577
    iget-object v1, p0, Lcom/unknownphone/callblocker/e/c;->aj:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "syncing_done"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/unknownphone/callblocker/e/c;->ai:Lcom/unknownphone/callblocker/d/b;

    const-string/jumbo v2, "contact"

    .line 578
    invoke-virtual {v1, v2}, Lcom/unknownphone/callblocker/d/b;->c(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 579
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 580
    :cond_1
    sget-object v0, Lcom/unknownphone/callblocker/e/c$c$a;->a:Lcom/unknownphone/callblocker/e/c$c$a;

    invoke-direct {p0, v0}, Lcom/unknownphone/callblocker/e/c;->a(Lcom/unknownphone/callblocker/e/c$c$a;)V

    goto :goto_0

    .line 582
    :cond_2
    invoke-direct {p0}, Lcom/unknownphone/callblocker/e/c;->as()V

    goto :goto_0
.end method
