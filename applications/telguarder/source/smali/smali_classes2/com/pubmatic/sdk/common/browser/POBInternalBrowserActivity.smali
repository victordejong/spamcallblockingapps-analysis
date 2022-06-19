.class public Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;
.super Landroid/app/Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;,
        Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$InternalBrowserListener;
    }
.end annotation


# static fields
.field private static g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$InternalBrowserListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/webkit/WebView;

.field private d:Landroid/widget/ProgressBar;

.field private e:I

.field private f:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->f:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private a()Landroid/widget/ImageView;
    .locals 2

    sget v0, Lcom/pubmatic/sdk/common/R$drawable;->ic_action_back:I

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->a(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->a(Landroid/widget/ImageView;Z)V

    iget-object v0, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$b;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$b;-><init>(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(I)Landroid/widget/ImageView;
    .locals 4

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const v2, 0x106000e

    const/16 v3, 0x17

    if-lt p1, v3, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method static synthetic a(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->b(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/widget/ImageView;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    const/16 p2, 0xff

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    const/16 p2, 0xa0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    return-void
.end method

.method private a(Landroid/widget/RelativeLayout;)V
    .locals 6

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x28

    invoke-static {v1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->convertDpToPixel(I)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/pubmatic/sdk/common/R$id;->dialog_id:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setId(I)V

    const v3, -0xbbbbbc

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v4, 0x2

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-direct {p0}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->b()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->a()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->e()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->f()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->d()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-direct {p0}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->g()Landroid/webkit/WebView;

    move-result-object v1

    iput-object v1, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x1010077

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$InternalBrowserListener;)V
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object p1, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    sput-object p1, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->g:Ljava/util/List;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->k()V

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;Landroid/widget/ImageView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->a(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->c:Landroid/webkit/WebView;

    const-string v1, "POBInternalBrowserActivity"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v2, "Loading url in internal browser : %s"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "Invalid url"

    aput-object v0, p1, v2

    const-string v0, "Unable to open internal browser : %s"

    invoke-static {v1, v0, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->c:Landroid/webkit/WebView;

    return-object p0
.end method

.method private b()Landroid/widget/ImageView;
    .locals 2

    sget v0, Lcom/pubmatic/sdk/common/R$drawable;->ic_action_cancel:I

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->a(I)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$a;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$a;-><init>(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private b(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const-string p1, "SSL Error."

    return-object p1

    :cond_0
    const-string p1, "Invalid Date."

    return-object p1

    :cond_1
    const-string p1, "Untrusted Certificate."

    return-object p1

    :cond_2
    const-string p1, "Domain Name Mismatched."

    return-object p1

    :cond_3
    const-string p1, "Certificate Expired."

    return-object p1

    :cond_4
    const-string p1, "Certificate Invalid."

    return-object p1
.end method

.method private c()Landroid/widget/RelativeLayout;
    .locals 2

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->a(Landroid/widget/RelativeLayout;)V

    return-object v0
.end method

.method static synthetic c(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->i()V

    return-void
.end method

.method private d()Landroid/widget/ImageView;
    .locals 2

    sget v0, Lcom/pubmatic/sdk/common/R$drawable;->ic_action_web_site:I

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->a(I)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$e;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$e;-><init>(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method static synthetic d(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->d:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private e()Landroid/widget/ImageView;
    .locals 2

    sget v0, Lcom/pubmatic/sdk/common/R$drawable;->ic_action_forward:I

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->a(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->a(Landroid/widget/ImageView;Z)V

    iget-object v0, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$c;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$c;-><init>(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->a:Landroid/widget/ImageView;

    return-object p0
.end method

.method private f()Landroid/widget/ImageView;
    .locals 2

    sget v0, Lcom/pubmatic/sdk/common/R$drawable;->ic_action_refresh:I

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->a(I)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$d;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$d;-><init>(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method static synthetic f(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic g(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->f:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private g()Landroid/webkit/WebView;
    .locals 3

    new-instance v0, Landroid/webkit/WebView;

    invoke-static {p0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->resolveWebViewContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    new-instance v1, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f;-><init>(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-object v0
.end method

.method private h()V
    .locals 4

    sget-object v0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$InternalBrowserListener;

    iget v2, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->e:I

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$InternalBrowserListener;->onBrowserDismiss()V

    invoke-direct {p0, v1}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->a(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$InternalBrowserListener;)V

    :cond_1
    return-void
.end method

.method private i()V
    .locals 4

    sget-object v0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$InternalBrowserListener;

    iget-object v2, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->c:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget v3, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->e:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$InternalBrowserListener;->onExternalBrowserClick(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private j()V
    .locals 4

    sget-object v0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$InternalBrowserListener;

    iget v2, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->e:I

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$InternalBrowserListener;->onBrowserStart()V

    :cond_1
    return-void
.end method

.method private k()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public static startNewActivity(Landroid/content/Context;Ljava/lang/String;Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$InternalBrowserListener;)V
    .locals 2

    sget-object v0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->g:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->g:Ljava/util/List;

    :cond_0
    sget-object v0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->g:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    const-string p2, "listener_hash_code"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->k()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->c()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "listener_hash_code"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->e:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->j()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->c:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iput-object v1, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->c:Landroid/webkit/WebView;

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->f:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->f:Landroid/app/AlertDialog;

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-direct {p0}, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->h()V

    return-void
.end method
