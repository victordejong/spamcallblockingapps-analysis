.class public Lcom/unknownphone/callblocker/activity/MainActivity;
.super Landroidx/appcompat/app/c;
.source "MainActivity.java"

# interfaces
.implements Lcom/b/a/a/a/c$b;
.implements Lcom/unknownphone/callblocker/f/a;


# static fields
.field static final synthetic k:Z

.field private static final l:Ljava/lang/String;


# instance fields
.field private A:Landroidx/fragment/app/Fragment;

.field private B:Landroidx/fragment/app/Fragment;

.field private C:Landroidx/fragment/app/Fragment;

.field private D:Landroid/os/Handler;

.field private E:Lretrofit2/b;

.field private m:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

.field private q:Lcom/b/a/a/a/c;

.field private r:Landroid/content/SharedPreferences;

.field private s:Landroid/content/SharedPreferences;

.field private t:Lcom/google/android/gms/ads/i;

.field private u:Lcom/unknownphone/callblocker/d/b;

.field private v:Lcom/unknownphone/callblocker/d/d;

.field private w:Z

.field private x:Landroidx/fragment/app/Fragment;

.field private y:Landroidx/fragment/app/Fragment;

.field private z:Landroidx/fragment/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const-class v0, Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/unknownphone/callblocker/activity/MainActivity;->k:Z

    .line 98
    const-class v0, Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unknownphone/callblocker/activity/MainActivity;->l:Ljava/lang/String;

    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Landroidx/appcompat/app/c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/activity/MainActivity;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->x:Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/activity/MainActivity;)Lcom/google/android/gms/ads/i;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->t:Lcom/google/android/gms/ads/i;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 662
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "review_condition_deep_link"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 664
    new-instance v10, Landroid/app/Dialog;

    invoke-direct {v10, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 665
    invoke-virtual {v10, v8}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 666
    const v0, 0x7f0c0047

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 668
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 669
    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 671
    :cond_0
    const v0, 0x7f0901c5

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 672
    const v1, 0x7f0901c7

    invoke-virtual {v10, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 673
    const v2, 0x7f0900ec

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    .line 674
    const v3, 0x7f090155

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 675
    const v4, 0x7f090136

    invoke-virtual {v10, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatButton;

    .line 676
    const v5, 0x7f090157

    invoke-virtual {v10, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/AppCompatButton;

    .line 677
    const v6, 0x7f090088

    invoke-virtual {v10, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 679
    iget-object v7, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    const-string/jumbo v11, "person_from_deep_link"

    invoke-interface {v7, v11, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 680
    iget-object v7, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    const-string/jumbo v12, "language_from_deep_link"

    invoke-interface {v7, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 681
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    sget-object v12, Lcom/unknownphone/callblocker/custom/b;->b:Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v8

    .line 683
    :goto_0
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 684
    invoke-virtual {v3, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    invoke-virtual {v3, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 688
    :cond_1
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    const v0, 0x7f1000ae

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p1, v3, v9

    invoke-static {p0, v0, v3}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    if-eqz v7, :cond_3

    const v0, 0x7f0800c6

    :goto_1
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 694
    new-instance v0, Lcom/unknownphone/callblocker/activity/MainActivity$5;

    invoke-direct {v0, p0, v10}, Lcom/unknownphone/callblocker/activity/MainActivity$5;-><init>(Lcom/unknownphone/callblocker/activity/MainActivity;Landroid/app/Dialog;)V

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 701
    new-instance v0, Lcom/unknownphone/callblocker/activity/MainActivity$6;

    invoke-direct {v0, p0, v11, p1, v10}, Lcom/unknownphone/callblocker/activity/MainActivity$6;-><init>(Lcom/unknownphone/callblocker/activity/MainActivity;Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v5, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 720
    new-instance v0, Lcom/unknownphone/callblocker/activity/MainActivity$7;

    invoke-direct {v0, p0, v10}, Lcom/unknownphone/callblocker/activity/MainActivity$7;-><init>(Lcom/unknownphone/callblocker/activity/MainActivity;Landroid/app/Dialog;)V

    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 727
    new-instance v0, Lcom/unknownphone/callblocker/activity/MainActivity$8;

    invoke-direct {v0, p0}, Lcom/unknownphone/callblocker/activity/MainActivity$8;-><init>(Lcom/unknownphone/callblocker/activity/MainActivity;)V

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 736
    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    .line 737
    return-void

    :cond_2
    move v7, v9

    .line 681
    goto :goto_0

    .line 692
    :cond_3
    const v0, 0x7f0800c4

    goto :goto_1
.end method

.method private a(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Short;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 488
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 489
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 490
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 488
    :goto_0
    return v0

    .line 490
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/unknownphone/callblocker/activity/MainActivity;)Ljava/util/Stack;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->o:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic c(Lcom/unknownphone/callblocker/activity/MainActivity;)Landroidx/fragment/app/Fragment;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->y:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method static synthetic d(Lcom/unknownphone/callblocker/activity/MainActivity;)Landroidx/fragment/app/Fragment;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->x:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method static synthetic e(Lcom/unknownphone/callblocker/activity/MainActivity;)Landroidx/fragment/app/Fragment;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->z:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method static synthetic f(Lcom/unknownphone/callblocker/activity/MainActivity;)Landroidx/fragment/app/Fragment;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->A:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method static synthetic g(Lcom/unknownphone/callblocker/activity/MainActivity;)Landroidx/fragment/app/Fragment;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->B:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method static synthetic h(Lcom/unknownphone/callblocker/activity/MainActivity;)Landroidx/fragment/app/Fragment;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->C:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method static synthetic i(Lcom/unknownphone/callblocker/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/unknownphone/callblocker/activity/MainActivity;->r()V

    return-void
.end method

.method static synthetic j(Lcom/unknownphone/callblocker/activity/MainActivity;)Lcom/unknownphone/callblocker/d/b;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->u:Lcom/unknownphone/callblocker/d/b;

    return-object v0
.end method

.method static synthetic k(Lcom/unknownphone/callblocker/activity/MainActivity;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic l(Lcom/unknownphone/callblocker/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/unknownphone/callblocker/activity/MainActivity;->v()V

    return-void
.end method

.method private o()V
    .locals 4

    .prologue
    .line 494
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 495
    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    const-string/jumbo v1, "package"

    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 497
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 498
    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 499
    return-void
.end method

.method private p()V
    .locals 4

    .prologue
    .line 502
    invoke-direct {p0}, Lcom/unknownphone/callblocker/activity/MainActivity;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 503
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 504
    iget-object v1, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "last_copied"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "last_copied"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 506
    iget-object v1, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->u:Lcom/unknownphone/callblocker/d/b;

    invoke-virtual {v1, v0}, Lcom/unknownphone/callblocker/d/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 507
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/unknownphone/callblocker/activity/ClipboardActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 508
    const-string/jumbo v2, "number"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    const/16 v0, 0x405

    invoke-virtual {p0, v1, v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 513
    :cond_0
    return-void
.end method

.method private q()Ljava/lang/String;
    .locals 3

    .prologue
    .line 516
    const-string/jumbo v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 517
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v1

    .line 519
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 520
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 526
    :goto_0
    return-object v0

    .line 523
    :catch_0
    move-exception v0

    .line 526
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const v4, 0x7f0900d1

    const/4 v1, 0x0

    .line 533
    invoke-static {p0}, Lcom/unknownphone/callblocker/e/c;->a(Lcom/unknownphone/callblocker/f/a;)Lcom/unknownphone/callblocker/e/c;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->y:Landroidx/fragment/app/Fragment;

    .line 534
    invoke-static {p0}, Lcom/unknownphone/callblocker/i/b;->a(Lcom/unknownphone/callblocker/f/a;)Lcom/unknownphone/callblocker/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->z:Landroidx/fragment/app/Fragment;

    .line 535
    invoke-static {p0}, Lcom/unknownphone/callblocker/a/b;->a(Lcom/unknownphone/callblocker/f/a;)Lcom/unknownphone/callblocker/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->A:Landroidx/fragment/app/Fragment;

    .line 536
    invoke-static {p0}, Lcom/unknownphone/callblocker/c/a;->a(Lcom/unknownphone/callblocker/f/a;)Lcom/unknownphone/callblocker/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->B:Landroidx/fragment/app/Fragment;

    .line 537
    invoke-static {p0}, Lcom/unknownphone/callblocker/h/a;->a(Lcom/unknownphone/callblocker/f/a;)Lcom/unknownphone/callblocker/h/a;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->C:Landroidx/fragment/app/Fragment;

    .line 538
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->y:Landroidx/fragment/app/Fragment;

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->x:Landroidx/fragment/app/Fragment;

    .line 540
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/MainActivity;->m()Landroidx/fragment/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/i;->a()Landroidx/fragment/app/o;

    move-result-object v0

    iget-object v3, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->y:Landroidx/fragment/app/Fragment;

    .line 541
    invoke-virtual {v0, v4, v3}, Landroidx/fragment/app/o;->a(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    move-result-object v0

    iget-object v3, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->z:Landroidx/fragment/app/Fragment;

    .line 542
    invoke-virtual {v0, v4, v3}, Landroidx/fragment/app/o;->a(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    move-result-object v0

    iget-object v3, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->z:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v3}, Landroidx/fragment/app/o;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    move-result-object v0

    iget-object v3, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->A:Landroidx/fragment/app/Fragment;

    .line 543
    invoke-virtual {v0, v4, v3}, Landroidx/fragment/app/o;->a(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    move-result-object v0

    iget-object v3, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->A:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v3}, Landroidx/fragment/app/o;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    move-result-object v0

    iget-object v3, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->B:Landroidx/fragment/app/Fragment;

    .line 544
    invoke-virtual {v0, v4, v3}, Landroidx/fragment/app/o;->a(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    move-result-object v0

    iget-object v3, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->B:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v3}, Landroidx/fragment/app/o;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    move-result-object v0

    iget-object v3, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->C:Landroidx/fragment/app/Fragment;

    .line 545
    invoke-virtual {v0, v4, v3}, Landroidx/fragment/app/o;->a(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    move-result-object v0

    iget-object v3, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->C:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v3}, Landroidx/fragment/app/o;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    move-result-object v0

    .line 546
    invoke-virtual {v0}, Landroidx/fragment/app/o;->e()V

    .line 548
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->p:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    invoke-static {p0, v0}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 549
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->m:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const v3, 0x7f090112

    invoke-virtual {v0, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setSelectedItemId(I)V

    .line 550
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->p:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V

    .line 554
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "spam_numbers_last_update"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 556
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "just_became_premium"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "just_became_aware"

    .line 557
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "just_became_free"

    .line 558
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 559
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-wide/32 v6, 0x240c8400

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    .line 560
    :cond_0
    invoke-direct {p0}, Lcom/unknownphone/callblocker/activity/MainActivity;->s()V

    .line 564
    :cond_1
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 566
    if-eqz v3, :cond_4

    .line 568
    const-string/jumbo v0, "purchase_source"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 570
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 572
    sget-boolean v0, Lcom/unknownphone/callblocker/activity/MainActivity;->k:Z

    if-nez v0, :cond_2

    if-nez v4, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 573
    :cond_2
    const/4 v0, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_3
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 596
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "block_all_calls"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 598
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0049

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 599
    const v0, 0x7f0901c4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v2, 0x7f10025b

    invoke-virtual {p0, v2}, Lcom/unknownphone/callblocker/activity/MainActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    new-instance v0, Lcom/google/android/material/bottomsheet/a;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomsheet/a;-><init>(Landroid/content/Context;)V

    .line 601
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/a;->setContentView(Landroid/view/View;)V

    .line 602
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/a;->show()V

    .line 607
    :cond_5
    invoke-direct {p0}, Lcom/unknownphone/callblocker/activity/MainActivity;->p()V

    .line 608
    return-void

    .line 573
    :sswitch_0
    const-string/jumbo v2, "purchase_source_search"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "purchase_source_global"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "purchase_source_protection"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    .line 577
    :pswitch_0
    const v0, 0x7f090114

    :try_start_0
    const-string/jumbo v2, "number"

    .line 578
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 577
    invoke-static {p0, v2}, Lcom/unknownphone/callblocker/i/b;->a(Lcom/unknownphone/callblocker/f/a;Ljava/lang/String;)Lcom/unknownphone/callblocker/i/b;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/unknownphone/callblocker/activity/MainActivity;->a(ILandroidx/fragment/app/Fragment;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 579
    :catch_0
    move-exception v0

    goto :goto_1

    .line 584
    :pswitch_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->m:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const v2, 0x7f090111

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setSelectedItemId(I)V

    goto :goto_1

    .line 588
    :pswitch_2
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->m:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const v2, 0x7f090113

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setSelectedItemId(I)V

    goto :goto_1

    .line 573
    nop

    :sswitch_data_0
    .sparse-switch
        -0x79d47641 -> :sswitch_2
        0x4a28d589 -> :sswitch_1
        0x5e3a378e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private s()V
    .locals 5

    .prologue
    .line 612
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 613
    const-string/jumbo v0, "_action"

    const-string/jumbo v2, "_get_dangerous_phones_list"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const-string/jumbo v0, "api_key"

    iget-object v2, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "api_key"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    const-string/jumbo v0, "region"

    iget-object v2, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "region_code"

    invoke-static {p0}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    const-string/jumbo v2, "lang"

    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "language_code"

    .line 617
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 616
    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/g;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    const-string/jumbo v2, "user_type"

    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "subscription_ends_at"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "premium"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    const-string/jumbo v0, "device"

    const-string/jumbo v2, "Android"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    const-string/jumbo v0, "country_code"

    iget-object v2, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "region_code"

    .line 622
    invoke-static {p0}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 621
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "O1"

    invoke-static {v2, v3}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->v:Lcom/unknownphone/callblocker/d/d;

    new-instance v2, Lcom/unknownphone/callblocker/activity/MainActivity$4;

    invoke-direct {v2, p0}, Lcom/unknownphone/callblocker/activity/MainActivity$4;-><init>(Lcom/unknownphone/callblocker/activity/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/unknownphone/callblocker/d/d;->a(Ljava/util/Map;Lcom/unknownphone/callblocker/d/d$b;)Lretrofit2/b;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->E:Lretrofit2/b;

    .line 658
    return-void

    .line 618
    :cond_0
    const-string/jumbo v0, "free"

    goto :goto_0
.end method

.method private t()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 740
    const-string/jumbo v0, "MainActivity"

    const-string/jumbo v2, "showDots() was called."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->m:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/c;

    move v2, v1

    .line 742
    :goto_0
    const/4 v1, 0x5

    if-ge v2, v1, :cond_1

    .line 743
    if-ne v2, v5, :cond_0

    .line 742
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 744
    :cond_0
    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomnavigation/c;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomnavigation/a;

    .line 745
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c0061

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1

    .line 747
    :cond_1
    return-void
.end method

.method private u()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 750
    const-string/jumbo v0, "MainActivity"

    const-string/jumbo v2, "hideDots() was called."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->m:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/c;

    move v3, v1

    .line 752
    :goto_0
    const/4 v1, 0x5

    if-ge v3, v1, :cond_2

    .line 753
    const/4 v1, 0x1

    if-ne v3, v1, :cond_1

    .line 752
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 754
    :cond_1
    invoke-virtual {v0, v3}, Lcom/google/android/material/bottomnavigation/c;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomnavigation/a;

    .line 755
    invoke-virtual {v1}, Lcom/google/android/material/bottomnavigation/a;->getChildCount()I

    move-result v2

    :goto_1
    const/4 v4, 0x2

    if-le v2, v4, :cond_0

    .line 756
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v1, v4}, Lcom/google/android/material/bottomnavigation/a;->removeViewAt(I)V

    .line 755
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 758
    :cond_2
    return-void
.end method

.method private v()V
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->y:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 763
    :try_start_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->y:Landroidx/fragment/app/Fragment;

    check-cast v0, Lcom/unknownphone/callblocker/e/c;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 764
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public B_()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 810
    sget-object v0, Lcom/unknownphone/callblocker/activity/MainActivity;->l:Ljava/lang/String;

    const-string/jumbo v3, "onBillingInitialized() was called."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->D:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 812
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->q:Lcom/b/a/a/a/c;

    invoke-virtual {v0}, Lcom/b/a/a/a/c;->f()Z

    .line 813
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->q:Lcom/b/a/a/a/c;

    const-string/jumbo v3, "inapp.unknownphone.callblocker1"

    invoke-virtual {v0, v3}, Lcom/b/a/a/a/c;->d(Ljava/lang/String;)Lcom/b/a/a/a/h;

    move-result-object v5

    .line 814
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->q:Lcom/b/a/a/a/c;

    const-string/jumbo v3, "inapp.unknownphone.callblocker2"

    invoke-virtual {v0, v3}, Lcom/b/a/a/a/c;->d(Ljava/lang/String;)Lcom/b/a/a/a/h;

    move-result-object v6

    .line 815
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->q:Lcom/b/a/a/a/c;

    const-string/jumbo v3, "inapp.unknownphone.callblocker3"

    invoke-virtual {v0, v3}, Lcom/b/a/a/a/c;->d(Ljava/lang/String;)Lcom/b/a/a/a/h;

    move-result-object v7

    .line 816
    if-eqz v5, :cond_0

    iget-object v0, v5, Lcom/b/a/a/a/h;->e:Lcom/b/a/a/a/e;

    iget-object v0, v0, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    iget-boolean v0, v0, Lcom/b/a/a/a/d;->h:Z

    if-eqz v0, :cond_0

    move v4, v1

    .line 817
    :goto_0
    if-eqz v6, :cond_1

    iget-object v0, v6, Lcom/b/a/a/a/h;->e:Lcom/b/a/a/a/e;

    iget-object v0, v0, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    iget-boolean v0, v0, Lcom/b/a/a/a/d;->h:Z

    if-eqz v0, :cond_1

    move v3, v1

    .line 818
    :goto_1
    if-eqz v7, :cond_2

    iget-object v0, v7, Lcom/b/a/a/a/h;->e:Lcom/b/a/a/a/e;

    iget-object v0, v0, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    iget-boolean v0, v0, Lcom/b/a/a/a/d;->h:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 819
    :goto_2
    iget-object v8, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    const-string/jumbo v9, "subscription_ends_at"

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    .line 820
    if-nez v4, :cond_3

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    .line 821
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "just_became_free"

    .line 822
    invoke-interface {v0, v3, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "subscription_ends_at"

    .line 823
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "block_unknown_calls"

    .line 824
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "identify_spam_calls"

    .line 825
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "block_spam_calls"

    .line 826
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 827
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 848
    :goto_3
    invoke-direct {p0}, Lcom/unknownphone/callblocker/activity/MainActivity;->r()V

    .line 849
    return-void

    :cond_0
    move v4, v2

    .line 816
    goto :goto_0

    :cond_1
    move v3, v2

    .line 817
    goto :goto_1

    :cond_2
    move v0, v2

    .line 818
    goto :goto_2

    .line 828
    :cond_3
    if-eqz v3, :cond_4

    .line 829
    iget-object v0, v6, Lcom/b/a/a/a/h;->e:Lcom/b/a/a/a/e;

    iget-object v0, v0, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    iget-object v0, v0, Lcom/b/a/a/a/d;->d:Ljava/util/Date;

    .line 830
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 831
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 832
    invoke-virtual {v1, v10, v11}, Ljava/util/Calendar;->add(II)V

    .line 833
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "subscription_ends_at"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3

    .line 834
    :cond_4
    if-eqz v4, :cond_5

    .line 835
    iget-object v0, v5, Lcom/b/a/a/a/h;->e:Lcom/b/a/a/a/e;

    iget-object v0, v0, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    iget-object v0, v0, Lcom/b/a/a/a/d;->d:Ljava/util/Date;

    .line 836
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 837
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 838
    invoke-virtual {v2, v10, v1}, Ljava/util/Calendar;->add(II)V

    .line 839
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "subscription_ends_at"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3

    .line 841
    :cond_5
    iget-object v0, v7, Lcom/b/a/a/a/h;->e:Lcom/b/a/a/a/e;

    iget-object v0, v0, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    iget-object v0, v0, Lcom/b/a/a/a/d;->d:Ljava/util/Date;

    .line 842
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 843
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 844
    invoke-virtual {v1, v10, v11}, Ljava/util/Calendar;->add(II)V

    .line 845
    const/4 v0, 0x6

    const/4 v2, 0x7

    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->add(II)V

    .line 846
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "subscription_ends_at"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_3
.end method

.method public a()V
    .locals 0

    .prologue
    .line 801
    return-void
.end method

.method public a(ILandroidx/fragment/app/Fragment;Z)V
    .locals 3

    .prologue
    const v2, 0x7f0900d1

    .line 373
    packed-switch p1, :pswitch_data_0

    .line 420
    :goto_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->p:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    invoke-static {p0, v0}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 421
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->m:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setSelectedItemId(I)V

    .line 422
    :cond_0
    return-void

    .line 375
    :pswitch_0
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/MainActivity;->m()Landroidx/fragment/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/i;->a()Landroidx/fragment/app/o;

    move-result-object v1

    .line 376
    :goto_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->o:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->o:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    goto :goto_1

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->y:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    .line 379
    iput-object p2, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->y:Landroidx/fragment/app/Fragment;

    .line 380
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->y:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/o;->a(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->y:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/o;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/o;->e()V

    goto :goto_0

    .line 384
    :pswitch_1
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/MainActivity;->m()Landroidx/fragment/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/i;->a()Landroidx/fragment/app/o;

    move-result-object v1

    .line 385
    :goto_2
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->o:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 386
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->o:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    goto :goto_2

    .line 387
    :cond_2
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->z:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    .line 388
    iput-object p2, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->z:Landroidx/fragment/app/Fragment;

    .line 389
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->z:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/o;->a(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->z:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/o;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/o;->e()V

    goto :goto_0

    .line 393
    :pswitch_2
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/MainActivity;->m()Landroidx/fragment/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/i;->a()Landroidx/fragment/app/o;

    move-result-object v1

    .line 394
    :goto_3
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->o:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 395
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->o:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    goto :goto_3

    .line 396
    :cond_3
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->A:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    .line 397
    iput-object p2, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->A:Landroidx/fragment/app/Fragment;

    .line 398
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->A:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/o;->a(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->A:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/o;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/o;->e()V

    goto/16 :goto_0

    .line 402
    :pswitch_3
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/MainActivity;->m()Landroidx/fragment/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/i;->a()Landroidx/fragment/app/o;

    move-result-object v1

    .line 403
    :goto_4
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->o:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 404
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->o:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    goto :goto_4

    .line 405
    :cond_4
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->B:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    .line 406
    iput-object p2, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->B:Landroidx/fragment/app/Fragment;

    .line 407
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->B:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/o;->a(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->B:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/o;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/o;->e()V

    goto/16 :goto_0

    .line 411
    :pswitch_4
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/MainActivity;->m()Landroidx/fragment/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/i;->a()Landroidx/fragment/app/o;

    move-result-object v1

    .line 412
    :goto_5
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->o:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 413
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->o:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    goto :goto_5

    .line 414
    :cond_5
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->C:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    .line 415
    iput-object p2, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->C:Landroidx/fragment/app/Fragment;

    .line 416
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->C:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/o;->a(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->C:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/o;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/o;->e()V

    goto/16 :goto_0

    .line 373
    nop

    :pswitch_data_0
    .packed-switch 0x7f090110
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public a(ILjava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 805
    sget-object v0, Lcom/unknownphone/callblocker/activity/MainActivity;->l:Ljava/lang/String;

    const-string/jumbo v1, "onBillingError() was called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/b/a/a/a/h;)V
    .locals 0

    .prologue
    .line 797
    return-void
.end method

.method public b(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .prologue
    .line 426
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->o:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 427
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/MainActivity;->m()Landroidx/fragment/app/i;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Landroidx/fragment/app/i;->a()Landroidx/fragment/app/o;

    move-result-object v0

    const v1, 0x7f010021

    const v2, 0x7f010020

    .line 429
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/o;->a(II)Landroidx/fragment/app/o;

    move-result-object v0

    const v1, 0x7f0900d1

    .line 430
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/o;->a(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    move-result-object v0

    .line 431
    invoke-virtual {v0}, Landroidx/fragment/app/o;->e()V

    .line 432
    return-void
.end method

.method public d(I)V
    .locals 3

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/MainActivity;->m()Landroidx/fragment/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/i;->a()Landroidx/fragment/app/o;

    move-result-object v2

    .line 437
    const v0, 0x7f010021

    const v1, 0x7f010020

    invoke-virtual {v2, v0, v1}, Landroidx/fragment/app/o;->a(II)Landroidx/fragment/app/o;

    .line 438
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->o:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->o:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v0}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    .line 438
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 440
    :cond_0
    invoke-virtual {v2}, Landroidx/fragment/app/o;->e()V

    .line 441
    return-void
.end method

.method public e(I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v5, -0x1

    .line 772
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->r:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "feedback"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "left_feedback"

    .line 773
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 775
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "review_condition_deep_link"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "review_condition_deep_link"

    .line 776
    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "review_condition_sync"

    .line 777
    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_4

    move v0, v1

    .line 779
    :goto_0
    iget-object v3, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "review_condition_deep_link"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "review_condition_deep_link"

    .line 780
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "review_condition_sync"

    .line 781
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v2, v1

    .line 783
    :cond_1
    if-nez v0, :cond_2

    if-eqz v2, :cond_3

    .line 784
    :cond_2
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "left_feedback"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 785
    const-string/jumbo v0, "FeedbackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Came out of door #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/unknownphone/callblocker/activity/FeedbackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 789
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 777
    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 317
    const/16 v0, 0x405

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_2

    .line 318
    const-string/jumbo v0, "number"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    const-string/jumbo v1, "action"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 321
    const-string/jumbo v2, "action_search"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 323
    const v1, 0x7f090114

    .line 324
    :try_start_0
    invoke-static {p0, v0}, Lcom/unknownphone/callblocker/i/b;->a(Lcom/unknownphone/callblocker/f/a;Ljava/lang/String;)Lcom/unknownphone/callblocker/i/b;

    move-result-object v0

    const/4 v2, 0x1

    .line 323
    invoke-virtual {p0, v1, v0, v2}, Lcom/unknownphone/callblocker/activity/MainActivity;->a(ILandroidx/fragment/app/Fragment;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    const-string/jumbo v2, "action_block"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    new-instance v1, Lcom/unknownphone/callblocker/a/c;

    invoke-direct {v1}, Lcom/unknownphone/callblocker/a/c;-><init>()V

    .line 329
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/unknownphone/callblocker/a/c;->a(S)V

    .line 330
    const v2, 0x7f10020a

    invoke-virtual {p0, v2}, Lcom/unknownphone/callblocker/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unknownphone/callblocker/a/c;->a(Ljava/lang/String;)V

    .line 331
    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/unknownphone/callblocker/a/c;->b(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->u:Lcom/unknownphone/callblocker/d/b;

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/d/b;->a(Lcom/unknownphone/callblocker/a/c;)V

    .line 334
    const v0, 0x7f090110

    :try_start_1
    invoke-static {p0}, Lcom/unknownphone/callblocker/a/b;->a(Lcom/unknownphone/callblocker/f/a;)Lcom/unknownphone/callblocker/a/b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/unknownphone/callblocker/activity/MainActivity;->a(ILandroidx/fragment/app/Fragment;Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    goto :goto_0

    .line 339
    :cond_2
    const/16 v0, 0x4d2

    if-ne p1, v0, :cond_3

    .line 340
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->C:Landroidx/fragment/app/Fragment;

    instance-of v0, v0, Lcom/unknownphone/callblocker/h/a;

    if-eqz v0, :cond_0

    .line 342
    :try_start_2
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->C:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(IILandroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 343
    :catch_1
    move-exception v0

    goto :goto_0

    .line 346
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/c;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 325
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 445
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->o:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/MainActivity;->m()Landroidx/fragment/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/i;->a()Landroidx/fragment/app/o;

    move-result-object v1

    .line 447
    const v0, 0x7f010021

    const v2, 0x7f010020

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/o;->a(II)Landroidx/fragment/app/o;

    .line 448
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->o:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    .line 449
    invoke-virtual {v1}, Landroidx/fragment/app/o;->e()V

    .line 451
    :goto_0
    return-void

    .line 450
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/c;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 124
    invoke-super {p0, p1}, Landroidx/appcompat/app/c;->onCreate(Landroid/os/Bundle;)V

    .line 125
    const v0, 0x7f0c0021

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->setContentView(I)V

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->n:Ljava/util/List;

    .line 130
    const v0, 0x7f09006d

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->m:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 131
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->o:Ljava/util/Stack;

    .line 132
    const v0, 0x7f0901eb

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->p:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    .line 133
    const-string/jumbo v0, "block"

    invoke-virtual {p0, v0, v5}, Lcom/unknownphone/callblocker/activity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->r:Landroid/content/SharedPreferences;

    .line 134
    new-instance v0, Lcom/unknownphone/callblocker/d/b;

    invoke-direct {v0, p0}, Lcom/unknownphone/callblocker/d/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->u:Lcom/unknownphone/callblocker/d/b;

    .line 135
    invoke-static {}, Lcom/unknownphone/callblocker/d/d;->a()Lcom/unknownphone/callblocker/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->v:Lcom/unknownphone/callblocker/d/d;

    .line 136
    const-string/jumbo v0, "com.unknownphone.callblocker.PREFS"

    invoke-virtual {p0, v0, v5}, Lcom/unknownphone/callblocker/activity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    .line 140
    sget-object v0, Lcom/unknownphone/callblocker/activity/MainActivity;->l:Ljava/lang/String;

    const-string/jumbo v1, "called initialize() method on billing processor."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string/jumbo v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAg/n5OPCfZKt31Wr3N97lYlj1E5zbMAFI/LLhsPP1uQqSioY5hUUBo4hjgfr9caMdt+w0xBINTDBW2S0hpEBa1/+rAb30eh+mBdPuQ84lva6/7eFl8tccX2dOSGq9XuQZfa2NREIOSizIGyhCeYgD2hpye5OUIhoy2JNPL65KqkSRnMO3r/hEr9ak+EVCb5BfadcZoLXX/iotW1CdxA56bz7fccemf5RwSHRDoTGUGwQWFtra0Syn5PCDoB+Q+Mp8HzVWtQSL7z+ZoMufL3+GMT/f2cVFCg/ixZOsNHLuf/Q/w/cnDb2olGlOYKXoLgncKxWl1paKkKS6G9i5akqK9QIDAQAB"

    invoke-static {p0, v0, p0}, Lcom/b/a/a/a/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/b/a/a/a/c$b;)Lcom/b/a/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->q:Lcom/b/a/a/a/c;

    .line 142
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->q:Lcom/b/a/a/a/c;

    invoke-virtual {v0}, Lcom/b/a/a/a/c;->c()V

    .line 146
    new-instance v0, Lcom/google/android/gms/ads/i;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->t:Lcom/google/android/gms/ads/i;

    .line 147
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->t:Lcom/google/android/gms/ads/i;

    const-string/jumbo v1, "ca-app-pub-4660838923216567/3555283548"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/i;->a(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->t:Lcom/google/android/gms/ads/i;

    new-instance v1, Lcom/google/android/gms/ads/d$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/d$a;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/d$a;->a()Lcom/google/android/gms/ads/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/i;->a(Lcom/google/android/gms/ads/d;)V

    .line 149
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->t:Lcom/google/android/gms/ads/i;

    new-instance v1, Lcom/unknownphone/callblocker/activity/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/activity/MainActivity$1;-><init>(Lcom/unknownphone/callblocker/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/i;->a(Lcom/google/android/gms/ads/b;)V

    .line 155
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->t:Lcom/google/android/gms/ads/i;

    invoke-static {v0}, Lcom/unknownphone/callblocker/d/c;->a(Lcom/google/android/gms/ads/i;)V

    .line 159
    invoke-static {p0}, Landroidx/work/t;->a(Landroid/content/Context;)Landroidx/work/t;

    move-result-object v1

    .line 160
    const-string/jumbo v2, "periodic_work"

    sget-object v3, Landroidx/work/f;->b:Landroidx/work/f;

    new-instance v0, Landroidx/work/o$a;

    const-class v6, Lcom/unknownphone/callblocker/work/CustomWorker;

    const-wide/16 v8, 0x4

    sget-object v7, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v6, v8, v9, v7}, Landroidx/work/o$a;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    .line 166
    invoke-virtual {v0}, Landroidx/work/o$a;->e()Landroidx/work/u;

    move-result-object v0

    check-cast v0, Landroidx/work/o;

    .line 160
    invoke-virtual {v1, v2, v3, v0}, Landroidx/work/t;->a(Ljava/lang/String;Landroidx/work/f;Landroidx/work/o;)Landroidx/work/n;

    .line 171
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "subscription_ends_at"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 172
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "identify_spam_calls"

    .line 173
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "block_spam_calls"

    .line 174
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 175
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 180
    :cond_0
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "block_spam_calls"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "identify_spam_calls"

    .line 182
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->m:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v1, Lcom/unknownphone/callblocker/activity/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/activity/MainActivity$2;-><init>(Lcom/unknownphone/callblocker/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;)V

    .line 252
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p0, v0}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;F)I

    move-result v7

    .line 254
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->m:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/c;

    move v6, v5

    .line 255
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/c;->getChildCount()I

    move-result v1

    if-ge v6, v1, :cond_6

    .line 256
    invoke-virtual {v0, v6}, Lcom/google/android/material/bottomnavigation/c;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomnavigation/a;

    .line 257
    const v2, 0x7f090198

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomnavigation/a;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 258
    instance-of v2, v3, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    move-object v2, v3

    .line 260
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v7, v5, v7, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 262
    check-cast v3, Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 264
    :cond_2
    const v2, 0x7f0900fa

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomnavigation/a;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 265
    instance-of v1, v2, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    move-object v1, v2

    .line 267
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v7, v5, v7, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 269
    check-cast v2, Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 255
    :cond_3
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_1

    .line 176
    :cond_4
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "block_spam_calls"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "identify_spam_calls"

    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "block_spam_calls"

    .line 178
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v4

    .line 177
    :goto_2
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 178
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    :cond_5
    move v0, v5

    goto :goto_2

    .line 275
    :cond_6
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->D:Landroid/os/Handler;

    .line 276
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->D:Landroid/os/Handler;

    new-instance v1, Lcom/unknownphone/callblocker/activity/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/activity/MainActivity$3;-><init>(Lcom/unknownphone/callblocker/activity/MainActivity;)V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 285
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->n:Ljava/util/List;

    const-string/jumbo v1, "android.permission.CALL_PHONE"

    invoke-static {p0, v1}, Landroidx/core/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "android.permission.READ_CALL_LOG"

    .line 286
    invoke-static {p0, v1}, Landroidx/core/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    .line 287
    invoke-static {p0, v1}, Landroidx/core/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_8

    const-string/jumbo v1, "android.permission.ANSWER_PHONE_CALLS"

    .line 289
    invoke-static {p0, v1}, Landroidx/core/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    move v4, v5

    .line 285
    :cond_8
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "number_from_deep_link"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 294
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "number_from_deep_link"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct {p0, v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->a(Ljava/lang/String;)V

    .line 296
    :cond_9
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "number_from_deep_link"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 301
    :cond_a
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->r:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "feedback"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->s:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "left_feedback"

    .line 302
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_c

    .line 304
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->u:Lcom/unknownphone/callblocker/d/b;

    const-string/jumbo v1, "contact"

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/d/b;->c(Ljava/lang/String;)J

    move-result-wide v0

    .line 305
    iget-object v2, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->u:Lcom/unknownphone/callblocker/d/b;

    const-string/jumbo v3, "blocked_number"

    invoke-virtual {v2, v3}, Lcom/unknownphone/callblocker/d/b;->c(Ljava/lang/String;)J

    move-result-wide v2

    .line 307
    const-wide/16 v4, 0x3

    cmp-long v0, v0, v4

    if-gtz v0, :cond_b

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_c

    .line 308
    :cond_b
    const-string/jumbo v0, "FeedbackActivity"

    const-string/jumbo v1, "Came out of door #1."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/unknownphone/callblocker/activity/FeedbackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 312
    :cond_c
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->E:Lretrofit2/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->E:Lretrofit2/b;

    invoke-interface {v0}, Lretrofit2/b;->b()V

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->D:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->D:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->q:Lcom/b/a/a/a/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->q:Lcom/b/a/a/a/c;

    invoke-virtual {v0}, Lcom/b/a/a/a/c;->d()V

    .line 367
    :cond_2
    invoke-super {p0}, Landroidx/appcompat/app/c;->onDestroy()V

    .line 368
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 455
    .line 456
    array-length v2, p3

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_6

    aget v3, p3, v1

    .line 457
    if-eqz v3, :cond_2

    .line 458
    const/4 v0, 0x1

    move v1, v0

    .line 461
    :goto_1
    const/16 v0, 0x2fb

    if-ne p1, v0, :cond_5

    .line 462
    iget-object v2, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->n:Ljava/util/List;

    const-string/jumbo v0, "android.permission.CALL_PHONE"

    invoke-static {p0, v0}, Landroidx/core/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "android.permission.READ_CALL_LOG"

    .line 463
    invoke-static {p0, v0}, Landroidx/core/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    .line 464
    invoke-static {p0, v0}, Landroidx/core/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_3

    const-string/jumbo v0, "android.permission.ANSWER_PHONE_CALLS"

    .line 466
    invoke-static {p0, v0}, Landroidx/core/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const/16 v0, 0xa

    .line 462
    :goto_2
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    if-nez v1, :cond_4

    .line 470
    :try_start_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->y:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(I[Ljava/lang/String;[I)V

    .line 471
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->z:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(I[Ljava/lang/String;[I)V

    .line 472
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->A:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(I[Ljava/lang/String;[I)V

    .line 473
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->B:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(I[Ljava/lang/String;[I)V

    .line 474
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->C:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(I[Ljava/lang/String;[I)V

    .line 475
    invoke-direct {p0}, Lcom/unknownphone/callblocker/activity/MainActivity;->u()V

    .line 476
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->y:Landroidx/fragment/app/Fragment;

    check-cast v0, Lcom/unknownphone/callblocker/e/c;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->d()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :cond_1
    :goto_3
    return-void

    .line 456
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 466
    :cond_3
    const/16 v0, 0xb

    goto :goto_2

    .line 479
    :cond_4
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->n:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    invoke-direct {p0}, Lcom/unknownphone/callblocker/activity/MainActivity;->o()V

    goto :goto_3

    .line 483
    :cond_5
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/c;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_3

    .line 477
    :catch_0
    move-exception v0

    goto :goto_3

    :cond_6
    move v1, v0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 351
    invoke-super {p0}, Landroidx/appcompat/app/c;->onResume()V

    .line 353
    iget-boolean v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->w:Z

    if-eqz v0, :cond_1

    .line 354
    invoke-direct {p0}, Lcom/unknownphone/callblocker/activity/MainActivity;->p()V

    .line 358
    :goto_0
    invoke-static {p0}, Lcom/unknownphone/callblocker/custom/g;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    invoke-direct {p0}, Lcom/unknownphone/callblocker/activity/MainActivity;->t()V

    .line 360
    :cond_0
    return-void

    .line 355
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity;->w:Z

    goto :goto_0
.end method
