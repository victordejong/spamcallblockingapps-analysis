.class public final Lcom/verizon/ads/webview/MRAIDExpandedActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/webview/MRAIDExpandedActivity$LoadTwoPartContentAsyncTask;
    }
.end annotation


# static fields
.field public static final MRAID_EXPANDED_CLOSE_INDICATOR:Ljava/lang/String; = "MRAID_EXPANDED_CLOSE_INDICATOR"

.field public static final TWO_PART_LOADING_SPINNER:Ljava/lang/String; = "TWO_PART_LOADING_SPINNER"

.field private static final a:Lcom/verizon/ads/Logger;


# instance fields
.field private b:Landroid/widget/RelativeLayout;

.field private c:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->a:Lcom/verizon/ads/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/webview/MRAIDExpandedActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->d:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic a()Lcom/verizon/ads/Logger;
    .locals 1

    .line 35
    sget-object v0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->a:Lcom/verizon/ads/Logger;

    return-object v0
.end method

.method static synthetic a(Lcom/verizon/ads/webview/MRAIDExpandedActivity;)V
    .locals 1

    .line 3361
    new-instance v0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$4;

    invoke-direct {v0, p0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity$4;-><init>(Lcom/verizon/ads/webview/MRAIDExpandedActivity;)V

    invoke-virtual {p0, v0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->c:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->f:Lcom/iab/omid/library/verizonmedia/adsession/b;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->c:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->f:Lcom/iab/omid/library/verizonmedia/adsession/b;

    invoke-virtual {v0}, Lcom/iab/omid/library/verizonmedia/adsession/b;->c()V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->c:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-virtual {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->f()V

    .line 330
    iget-object v0, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->c:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    instance-of v1, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$TwoPartExpandWebView;

    if-eqz v1, :cond_2

    .line 331
    invoke-virtual {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->release()V

    return-void

    .line 335
    :cond_1
    invoke-virtual {p0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->finish()V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/verizon/ads/webview/MRAIDExpandedActivity;)V
    .locals 1

    .line 3391
    new-instance v0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$5;

    invoke-direct {v0, p0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity$5;-><init>(Lcom/verizon/ads/webview/MRAIDExpandedActivity;)V

    invoke-virtual {p0, v0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c()V
    .locals 4

    .line 344
    invoke-virtual {p0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x3

    .line 348
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    sget-object v1, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->a:Lcom/verizon/ads/Logger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const-string v3, "Enabling immersive mode:\ndecorView = %s\nActivity = %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x1706

    .line 352
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/verizon/ads/webview/MRAIDExpandedActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->c()V

    return-void
.end method

.method static synthetic d(Lcom/verizon/ads/webview/MRAIDExpandedActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->b()V

    return-void
.end method

.method static synthetic e(Lcom/verizon/ads/webview/MRAIDExpandedActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->d:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic f(Lcom/verizon/ads/webview/MRAIDExpandedActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->b:Landroid/widget/RelativeLayout;

    return-object p0
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 0

    .line 299
    invoke-direct {p0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->b()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 157
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 159
    invoke-virtual {p0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "webview_cached_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-static {p1}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->a:Lcom/verizon/ads/Logger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "Could not find an MRAID WebView instance for cache ID: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->finish()V

    return-void

    .line 168
    :cond_0
    invoke-static {p1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->b(Ljava/lang/String;)Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 171
    sget-object v0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->a:Lcom/verizon/ads/Logger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "VerizonAdMRAIDWebView for cache Id <%s> was null."

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->finish()V

    return-void

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "immersive"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->e:Z

    .line 179
    invoke-virtual {p0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 181
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->e:Z

    if-eqz v3, :cond_2

    .line 182
    invoke-direct {p0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->c()V

    if-eqz p1, :cond_3

    .line 191
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v3, Lcom/verizon/ads/webview/MRAIDExpandedActivity$1;

    invoke-direct {v3, p0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity$1;-><init>(Lcom/verizon/ads/webview/MRAIDExpandedActivity;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    goto :goto_0

    .line 203
    :cond_2
    iget-boolean v3, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->e:Z

    if-eqz v3, :cond_3

    .line 204
    invoke-virtual {p0, v2}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->requestWindowFeature(I)Z

    if-eqz p1, :cond_3

    const/16 v3, 0x400

    .line 207
    invoke-virtual {p1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 212
    :cond_3
    :goto_0
    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-direct {p1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->b:Landroid/widget/RelativeLayout;

    .line 215
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, -0x1000000

    invoke-direct {p1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/16 v3, 0xa0

    .line 216
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 217
    iget-object v3, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 219
    iget-object p1, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->setContentView(Landroid/view/View;)V

    .line 221
    invoke-virtual {p0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "url"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-virtual {p0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "expand_width"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 224
    invoke-virtual {p0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v6, "expand_height"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 227
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    .line 228
    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 231
    invoke-static {p1}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2477
    new-instance v3, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$TwoPartExpandWebView;

    invoke-virtual {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->d()Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VASAdsMRAIDWebViewListener;

    move-result-object v7

    invoke-direct {v3, v4, v0, v7}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$TwoPartExpandWebView;-><init>(Landroid/content/Context;Lcom/verizon/ads/webview/VASAdsMRAIDWebView;Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VASAdsMRAIDWebViewListener;)V

    .line 232
    iput-object v3, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->c:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    .line 233
    invoke-virtual {v3}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/content/MutableContextWrapper;

    .line 234
    invoke-virtual {v3, p0}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 236
    iget-object v3, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->b:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->c:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-virtual {v3, v4, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    new-instance v3, Lcom/verizon/ads/webview/MRAIDExpandedActivity$LoadTwoPartContentAsyncTask;

    iget-object v4, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->c:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    const/4 v6, 0x0

    invoke-direct {v3, p0, v0, v4, v6}, Lcom/verizon/ads/webview/MRAIDExpandedActivity$LoadTwoPartContentAsyncTask;-><init>(Lcom/verizon/ads/webview/MRAIDExpandedActivity;Lcom/verizon/ads/webview/VASAdsMRAIDWebView;Lcom/verizon/ads/webview/VASAdsMRAIDWebView;Lcom/verizon/ads/webview/MRAIDExpandedActivity$1;)V

    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v1

    .line 241
    invoke-virtual {v3, v0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity$LoadTwoPartContentAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 243
    :cond_4
    iput-object v0, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->c:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    .line 244
    invoke-virtual {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/content/MutableContextWrapper;

    .line 245
    invoke-virtual {p1, p0}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 247
    iget-object p1, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->c:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-virtual {p1, v1, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    invoke-virtual {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->e()V

    .line 252
    :goto_1
    invoke-virtual {p0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "orientation"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 253
    invoke-static {p0, p1}, Lcom/verizon/ads/support/utils/ViewUtils;->setRequestedOrientationSafe(Landroid/app/Activity;I)V

    .line 255
    new-instance p1, Landroid/widget/ImageView;

    invoke-direct {p1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v0, "MRAID_EXPANDED_CLOSE_INDICATOR"

    .line 256
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 257
    sget v0, Lcom/verizon/ads/webview/R$drawable;->mraid_close:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v0, 0x8

    .line 258
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    new-instance v0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$2;

    invoke-direct {v0, p0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity$2;-><init>(Lcom/verizon/ads/webview/MRAIDExpandedActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v0, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->c:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->f:Lcom/iab/omid/library/verizonmedia/adsession/b;

    if-eqz v0, :cond_5

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->c:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->f:Lcom/iab/omid/library/verizonmedia/adsession/b;

    sget-object v1, Lcom/iab/omid/library/verizonmedia/adsession/f;->CLOSE_AD:Lcom/iab/omid/library/verizonmedia/adsession/f;

    invoke-virtual {v0, p1, v1}, Lcom/iab/omid/library/verizonmedia/adsession/b;->a(Landroid/view/View;Lcom/iab/omid/library/verizonmedia/adsession/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 274
    sget-object v1, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Error adding friendly obstruction to OM SDK ad session"

    invoke-virtual {v1, v2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 278
    :cond_5
    :goto_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 279
    invoke-virtual {p0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/verizon/ads/webview/R$dimen;->close_region_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/verizon/ads/webview/R$dimen;->close_region_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    .line 281
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    .line 282
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 284
    iget-object v1, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    iget-object v0, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->b:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/verizon/ads/webview/MRAIDExpandedActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/verizon/ads/webview/MRAIDExpandedActivity$3;-><init>(Lcom/verizon/ads/webview/MRAIDExpandedActivity;Landroid/widget/ImageView;)V

    const/16 p1, 0x44c

    const-string v2, "com.verizon.ads.webview"

    const-string v3, "close.indicator.appearance.delay"

    .line 292
    invoke-static {v2, v3, p1}, Lcom/verizon/ads/Configuration;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    int-to-long v2, p1

    .line 286
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 4

    .line 306
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    const/4 v0, 0x3

    .line 308
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    sget-object v0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->a:Lcom/verizon/ads/Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->e:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "onWindowFocusChanged: hasFocus = %b, immersive = %b"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 312
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->e:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 314
    invoke-direct {p0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->c()V

    :cond_1
    return-void
.end method
