.class public Lcom/facebook/internal/z;
.super Landroid/app/Dialog;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/z$d;,
        Lcom/facebook/internal/z$a;,
        Lcom/facebook/internal/z$b;,
        Lcom/facebook/internal/z$c;
    }
.end annotation


# static fields
.field private static final a:I

.field private static volatile m:I


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/facebook/internal/z$c;

.field private e:Landroid/webkit/WebView;

.field private f:Landroid/app/ProgressDialog;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/FrameLayout;

.field private i:Lcom/facebook/internal/z$d;

.field private j:Z

.field private k:Z

.field private l:Z

.field private n:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    sget v0, Lcom/facebook/common/a$f;->com_facebook_activity_theme:I

    sput v0, Lcom/facebook/internal/z;->a:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 205
    invoke-static {}, Lcom/facebook/internal/z;->a()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/internal/z;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 206
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 217
    if-nez p3, :cond_0

    invoke-static {}, Lcom/facebook/internal/z;->a()I

    move-result p3

    :cond_0
    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 116
    const-string/jumbo v0, "fbconnect://success"

    iput-object v0, p0, Lcom/facebook/internal/z;->c:Ljava/lang/String;

    .line 123
    iput-boolean v1, p0, Lcom/facebook/internal/z;->j:Z

    .line 124
    iput-boolean v1, p0, Lcom/facebook/internal/z;->k:Z

    .line 125
    iput-boolean v1, p0, Lcom/facebook/internal/z;->l:Z

    .line 218
    iput-object p2, p0, Lcom/facebook/internal/z;->b:Ljava/lang/String;

    .line 219
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/internal/z$c;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 236
    if-nez p4, :cond_0

    invoke-static {}, Lcom/facebook/internal/z;->a()I

    move-result p4

    :cond_0
    invoke-direct {p0, p1, p4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 116
    const-string/jumbo v0, "fbconnect://success"

    iput-object v0, p0, Lcom/facebook/internal/z;->c:Ljava/lang/String;

    .line 123
    iput-boolean v5, p0, Lcom/facebook/internal/z;->j:Z

    .line 124
    iput-boolean v5, p0, Lcom/facebook/internal/z;->k:Z

    .line 125
    iput-boolean v5, p0, Lcom/facebook/internal/z;->l:Z

    .line 238
    if-nez p3, :cond_1

    .line 239
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 242
    :cond_1
    invoke-static {p1}, Lcom/facebook/internal/x;->f(Landroid/content/Context;)Z

    move-result v0

    .line 244
    if-eqz v0, :cond_2

    const-string/jumbo v0, "fbconnect://chrome_os_success"

    :goto_0
    iput-object v0, p0, Lcom/facebook/internal/z;->c:Ljava/lang/String;

    .line 249
    const-string/jumbo v0, "redirect_uri"

    iget-object v1, p0, Lcom/facebook/internal/z;->c:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string/jumbo v0, "display"

    const-string/jumbo v1, "touch"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string/jumbo v0, "client_id"

    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string/jumbo v0, "sdk"

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v2, "android-%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 259
    invoke-static {}, Lcom/facebook/j;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iput-object p5, p0, Lcom/facebook/internal/z;->d:Lcom/facebook/internal/z$c;

    .line 263
    const-string/jumbo v0, "share"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "media"

    .line 264
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    new-instance v0, Lcom/facebook/internal/z$d;

    invoke-direct {v0, p0, p2, p3}, Lcom/facebook/internal/z$d;-><init>(Lcom/facebook/internal/z;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/facebook/internal/z;->i:Lcom/facebook/internal/z$d;

    .line 273
    :goto_1
    return-void

    .line 244
    :cond_2
    const-string/jumbo v0, "fbconnect://success"

    goto :goto_0

    .line 268
    :cond_3
    invoke-static {}, Lcom/facebook/internal/v;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    invoke-static {}, Lcom/facebook/j;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "dialog/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-static {v0, v1, p3}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/z;->b:Ljava/lang/String;

    goto :goto_1
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Lcom/facebook/internal/y;->a()V

    .line 171
    sget v0, Lcom/facebook/internal/z;->m:I

    return v0
.end method

.method private a(IFII)I
    .locals 6

    .prologue
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 468
    int-to-float v2, p1

    div-float/2addr v2, p2

    float-to-int v2, v2

    .line 470
    if-gt v2, p3, :cond_1

    .line 471
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 482
    :cond_0
    :goto_0
    int-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0

    .line 472
    :cond_1
    if-ge v2, p4, :cond_0

    .line 477
    sub-int v2, p4, v2

    int-to-double v2, v2

    sub-int v4, p4, p3

    int-to-double v4, v4

    div-double/2addr v2, v4

    mul-double/2addr v2, v0

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/internal/z$c;)Lcom/facebook/internal/z;
    .locals 6

    .prologue
    .line 160
    invoke-static {p0}, Lcom/facebook/internal/z;->a(Landroid/content/Context;)V

    .line 162
    new-instance v0, Lcom/facebook/internal/z;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/internal/z;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/internal/z$c;)V

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/internal/z;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/internal/z;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/internal/z;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/facebook/internal/z;->b:Ljava/lang/String;

    return-object p1
.end method

.method public static a(I)V
    .locals 0

    .prologue
    .line 179
    if-eqz p0, :cond_0

    :goto_0
    sput p0, Lcom/facebook/internal/z;->m:I

    .line 180
    return-void

    .line 179
    :cond_0
    sget p0, Lcom/facebook/internal/z;->a:I

    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 132
    if-nez p0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 138
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 149
    sget v1, Lcom/facebook/internal/z;->m:I

    if-nez v1, :cond_0

    .line 150
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "com.facebook.sdk.WebDialogTheme"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/internal/z;->a(I)V

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/internal/z;I)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/facebook/internal/z;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/internal/z;Z)Z
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/facebook/internal/z;->l:Z

    return p1
.end method

.method private b(I)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 532
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/internal/z;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 533
    new-instance v1, Lcom/facebook/internal/z$3;

    invoke-virtual {p0}, Lcom/facebook/internal/z;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/facebook/internal/z$3;-><init>(Lcom/facebook/internal/z;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/internal/z;->e:Landroid/webkit/WebView;

    .line 545
    iget-object v1, p0, Lcom/facebook/internal/z;->e:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 546
    iget-object v1, p0, Lcom/facebook/internal/z;->e:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 547
    iget-object v1, p0, Lcom/facebook/internal/z;->e:Landroid/webkit/WebView;

    new-instance v2, Lcom/facebook/internal/z$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/facebook/internal/z$b;-><init>(Lcom/facebook/internal/z;Lcom/facebook/internal/z$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 548
    iget-object v1, p0, Lcom/facebook/internal/z;->e:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 549
    iget-object v1, p0, Lcom/facebook/internal/z;->e:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/facebook/internal/z;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 550
    iget-object v1, p0, Lcom/facebook/internal/z;->e:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 552
    iget-object v1, p0, Lcom/facebook/internal/z;->e:Landroid/webkit/WebView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 553
    iget-object v1, p0, Lcom/facebook/internal/z;->e:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 554
    iget-object v1, p0, Lcom/facebook/internal/z;->e:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 555
    iget-object v1, p0, Lcom/facebook/internal/z;->e:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 556
    iget-object v1, p0, Lcom/facebook/internal/z;->e:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 557
    iget-object v1, p0, Lcom/facebook/internal/z;->e:Landroid/webkit/WebView;

    new-instance v2, Lcom/facebook/internal/z$4;

    invoke-direct {v2, p0}, Lcom/facebook/internal/z$4;-><init>(Lcom/facebook/internal/z;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 568
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 569
    iget-object v1, p0, Lcom/facebook/internal/z;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 570
    const/high16 v1, -0x34000000    # -3.3554432E7f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 571
    iget-object v1, p0, Lcom/facebook/internal/z;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 572
    return-void
.end method

.method static synthetic b(Lcom/facebook/internal/z;)Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/facebook/internal/z;->k:Z

    return v0
.end method

.method static synthetic c(Lcom/facebook/internal/z;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/internal/z;->f:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/internal/z;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/internal/z;->h:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/internal/z;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/internal/z;->e:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/internal/z;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/internal/z;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 514
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/internal/z;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/internal/z;->g:Landroid/widget/ImageView;

    .line 516
    iget-object v0, p0, Lcom/facebook/internal/z;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/facebook/internal/z$2;

    invoke-direct {v1, p0}, Lcom/facebook/internal/z$2;-><init>(Lcom/facebook/internal/z;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    invoke-virtual {p0}, Lcom/facebook/internal/z;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/common/a$b;->com_facebook_close:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 523
    iget-object v1, p0, Lcom/facebook/internal/z;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 527
    iget-object v0, p0, Lcom/facebook/internal/z;->g:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 528
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 419
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 421
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/x;->d(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 422
    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/x;->d(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 424
    return-object v1
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/facebook/internal/z;->d:Lcom/facebook/internal/z$c;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/internal/z;->j:Z

    if-nez v0, :cond_0

    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/internal/z;->j:Z

    .line 488
    iget-object v0, p0, Lcom/facebook/internal/z;->d:Lcom/facebook/internal/z$c;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/facebook/internal/z$c;->a(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 489
    invoke-virtual {p0}, Lcom/facebook/internal/z;->dismiss()V

    .line 491
    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/internal/z$c;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/facebook/internal/z;->d:Lcom/facebook/internal/z$c;

    .line 282
    return-void
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/facebook/internal/z;->d:Lcom/facebook/internal/z$c;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/internal/z;->j:Z

    if-nez v0, :cond_0

    .line 495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/internal/z;->j:Z

    .line 497
    instance-of v0, p1, Lcom/facebook/FacebookException;

    if-eqz v0, :cond_1

    .line 498
    check-cast p1, Lcom/facebook/FacebookException;

    .line 502
    :goto_0
    iget-object v0, p0, Lcom/facebook/internal/z;->d:Lcom/facebook/internal/z$c;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/facebook/internal/z$c;->a(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 503
    invoke-virtual {p0}, Lcom/facebook/internal/z;->dismiss()V

    .line 505
    :cond_0
    return-void

    .line 500
    :cond_1
    new-instance v0, Lcom/facebook/FacebookException;

    invoke-direct {v0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/facebook/internal/z;->c:Ljava/lang/String;

    .line 416
    return-void
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/facebook/internal/z;->j:Z

    return v0
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/facebook/internal/z;->l:Z

    return v0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/facebook/internal/z;->d:Lcom/facebook/internal/z$c;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/internal/z;->j:Z

    if-nez v0, :cond_0

    .line 509
    new-instance v0, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v0}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/facebook/internal/z;->a(Ljava/lang/Throwable;)V

    .line 511
    :cond_0
    return-void
.end method

.method protected d()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/facebook/internal/z;->e:Landroid/webkit/WebView;

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/facebook/internal/z;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/facebook/internal/z;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 307
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/internal/z;->k:Z

    if-nez v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/facebook/internal/z;->f:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/internal/z;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/facebook/internal/z;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 312
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 313
    return-void
.end method

.method public e()V
    .locals 6

    .prologue
    const/16 v5, 0x320

    .line 440
    invoke-virtual {p0}, Lcom/facebook/internal/z;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 441
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 442
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 443
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 446
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v1, :cond_0

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 447
    :goto_0
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v3, :cond_1

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 449
    :goto_1
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    const/16 v4, 0x1e0

    .line 450
    invoke-direct {p0, v0, v3, v4, v5}, Lcom/facebook/internal/z;->a(IFII)I

    move-result v0

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 449
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 452
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    const/16 v4, 0x500

    .line 453
    invoke-direct {p0, v1, v3, v5, v4}, Lcom/facebook/internal/z;->a(IFII)I

    move-result v1

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 452
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 456
    invoke-virtual {p0}, Lcom/facebook/internal/z;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 457
    return-void

    .line 446
    :cond_0
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 447
    :cond_1
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_1
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/internal/z;->k:Z

    .line 345
    invoke-virtual {p0}, Lcom/facebook/internal/z;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/x;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/internal/z;->n:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/internal/z;->n:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/facebook/internal/z;->n:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/facebook/internal/z;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 348
    const-string/jumbo v0, "FacebookSDK.WebDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set token on onAttachedToWindow(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/internal/z;->n:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/internal/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 352
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 367
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 369
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/facebook/internal/z;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/internal/z;->f:Landroid/app/ProgressDialog;

    .line 370
    iget-object v0, p0, Lcom/facebook/internal/z;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 371
    iget-object v0, p0, Lcom/facebook/internal/z;->f:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/facebook/internal/z;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/common/a$e;->com_facebook_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v0, p0, Lcom/facebook/internal/z;->f:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 374
    iget-object v0, p0, Lcom/facebook/internal/z;->f:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/facebook/internal/z$1;

    invoke-direct {v1, p0}, Lcom/facebook/internal/z$1;-><init>(Lcom/facebook/internal/z;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 381
    invoke-virtual {p0, v4}, Lcom/facebook/internal/z;->requestWindowFeature(I)Z

    .line 382
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/facebook/internal/z;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/internal/z;->h:Landroid/widget/FrameLayout;

    .line 385
    invoke-virtual {p0}, Lcom/facebook/internal/z;->e()V

    .line 386
    invoke-virtual {p0}, Lcom/facebook/internal/z;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 389
    invoke-virtual {p0}, Lcom/facebook/internal/z;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 395
    invoke-direct {p0}, Lcom/facebook/internal/z;->f()V

    .line 397
    iget-object v0, p0, Lcom/facebook/internal/z;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/facebook/internal/z;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 402
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/internal/z;->b(I)V

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/z;->h:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/facebook/internal/z;->g:Landroid/widget/ImageView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    iget-object v0, p0, Lcom/facebook/internal/z;->h:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/internal/z;->setContentView(Landroid/view/View;)V

    .line 412
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/internal/z;->k:Z

    .line 338
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 339
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/facebook/internal/z;->cancel()V

    .line 299
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 317
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 318
    iget-object v0, p0, Lcom/facebook/internal/z;->i:Lcom/facebook/internal/z$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/internal/z;->i:Lcom/facebook/internal/z$d;

    invoke-virtual {v0}, Lcom/facebook/internal/z$d;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/facebook/internal/z;->i:Lcom/facebook/internal/z$d;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/facebook/internal/z$d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 320
    iget-object v0, p0, Lcom/facebook/internal/z;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/internal/z;->e()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/facebook/internal/z;->i:Lcom/facebook/internal/z$d;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/facebook/internal/z;->i:Lcom/facebook/internal/z$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/internal/z$d;->cancel(Z)Z

    .line 330
    iget-object v0, p0, Lcom/facebook/internal/z;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 332
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 333
    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 359
    iput-object p1, p0, Lcom/facebook/internal/z;->n:Landroid/view/WindowManager$LayoutParams;

    .line 362
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 363
    return-void
.end method
