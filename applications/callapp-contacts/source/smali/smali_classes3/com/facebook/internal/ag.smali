.class public Lcom/facebook/internal/ag;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/ag$d;,
        Lcom/facebook/internal/ag$a;,
        Lcom/facebook/internal/ag$b;,
        Lcom/facebook/internal/ag$c;
    }
.end annotation


# static fields
.field private static final c:I

.field private static volatile m:I


# instance fields
.field a:Lcom/facebook/internal/ag$c;

.field b:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/webkit/WebView;

.field private g:Landroid/app/ProgressDialog;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/FrameLayout;

.field private j:Lcom/facebook/internal/ag$d;

.field private k:Z

.field private l:Z

.field private n:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    sget v0, Lcom/facebook/common/a$g;->com_facebook_activity_theme:I

    sput v0, Lcom/facebook/internal/ag;->c:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 2172
    invoke-static {}, Lcom/facebook/internal/af;->a()V

    .line 2173
    sget v0, Lcom/facebook/internal/ag;->m:I

    .line 208
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/internal/ag;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    if-nez p3, :cond_0

    .line 3172
    invoke-static {}, Lcom/facebook/internal/af;->a()V

    .line 3173
    sget p3, Lcom/facebook/internal/ag;->m:I

    .line 221
    :cond_0
    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string p1, "fbconnect://success"

    .line 115
    iput-object p1, p0, Lcom/facebook/internal/ag;->e:Ljava/lang/String;

    const/4 p1, 0x0

    .line 122
    iput-boolean p1, p0, Lcom/facebook/internal/ag;->b:Z

    .line 123
    iput-boolean p1, p0, Lcom/facebook/internal/ag;->k:Z

    .line 124
    iput-boolean p1, p0, Lcom/facebook/internal/ag;->l:Z

    .line 222
    iput-object p2, p0, Lcom/facebook/internal/ag;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/internal/ag$c;)V
    .locals 2

    if-nez p4, :cond_0

    .line 4172
    invoke-static {}, Lcom/facebook/internal/af;->a()V

    .line 4173
    sget p4, Lcom/facebook/internal/ag;->m:I

    .line 236
    :cond_0
    invoke-direct {p0, p1, p4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string p4, "fbconnect://success"

    .line 115
    iput-object p4, p0, Lcom/facebook/internal/ag;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/facebook/internal/ag;->b:Z

    .line 123
    iput-boolean v0, p0, Lcom/facebook/internal/ag;->k:Z

    .line 124
    iput-boolean v0, p0, Lcom/facebook/internal/ag;->l:Z

    if-nez p3, :cond_1

    .line 239
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 242
    :cond_1
    invoke-static {p1}, Lcom/facebook/internal/ae;->e(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p4, "fbconnect://chrome_os_success"

    .line 244
    :cond_2
    iput-object p4, p0, Lcom/facebook/internal/ag;->e:Ljava/lang/String;

    const-string p1, "redirect_uri"

    .line 250
    invoke-virtual {p3, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "display"

    const-string p4, "touch"

    .line 252
    invoke-virtual {p3, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-static {}, Lcom/facebook/g;->m()Ljava/lang/String;

    move-result-object p1

    const-string p4, "client_id"

    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    .line 258
    invoke-static {}, Lcom/facebook/g;->k()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v0

    const-string v0, "android-%s"

    invoke-static {p1, v0, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "sdk"

    .line 256
    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iput-object p5, p0, Lcom/facebook/internal/ag;->a:Lcom/facebook/internal/ag$c;

    const-string p1, "share"

    .line 262
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "media"

    .line 263
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 264
    new-instance p1, Lcom/facebook/internal/ag$d;

    invoke-direct {p1, p0, p2, p3}, Lcom/facebook/internal/ag$d;-><init>(Lcom/facebook/internal/ag;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/facebook/internal/ag;->j:Lcom/facebook/internal/ag$d;

    return-void

    .line 268
    :cond_3
    invoke-static {}, Lcom/facebook/internal/ac;->e()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    invoke-static {}, Lcom/facebook/g;->j()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "/dialog/"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 267
    invoke-static {p1, p2, p3}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object p1

    .line 271
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/internal/ag;->d:Ljava/lang/String;

    return-void
.end method

.method private static a(IFII)I
    .locals 4

    int-to-float v0, p0

    div-float/2addr v0, p1

    float-to-int p1, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    if-gt p1, p2, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    if-lt p1, p3, :cond_1

    goto :goto_0

    :cond_1
    sub-int p1, p3, p1

    int-to-double v2, p1

    sub-int/2addr p3, p2

    int-to-double p1, p3

    div-double/2addr v2, p1

    mul-double v2, v2, v0

    add-double/2addr v0, v2

    :goto_0
    int-to-double p0, p0

    mul-double p0, p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/internal/ag$c;)Lcom/facebook/internal/ag;
    .locals 7

    .line 161
    invoke-static {p0}, Lcom/facebook/internal/ag;->a(Landroid/content/Context;)V

    .line 163
    new-instance v6, Lcom/facebook/internal/ag;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/internal/ag;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/internal/ag$c;)V

    return-object v6
.end method

.method static synthetic a(Lcom/facebook/internal/ag;)Ljava/lang/String;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/facebook/internal/ag;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/facebook/internal/ag;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/facebook/internal/ag;->d:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .locals 6

    .line 551
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/internal/ag;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 552
    new-instance v1, Lcom/facebook/internal/ag$3;

    .line 553
    invoke-virtual {p0}, Lcom/facebook/internal/ag;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/facebook/internal/ag$3;-><init>(Lcom/facebook/internal/ag;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/internal/ag;->f:Landroid/webkit/WebView;

    const/4 v2, 0x0

    .line 568
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 569
    iget-object v1, p0, Lcom/facebook/internal/ag;->f:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 570
    iget-object v1, p0, Lcom/facebook/internal/ag;->f:Landroid/webkit/WebView;

    new-instance v3, Lcom/facebook/internal/ag$b;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/facebook/internal/ag$b;-><init>(Lcom/facebook/internal/ag;Lcom/facebook/internal/ag$1;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 571
    iget-object v1, p0, Lcom/facebook/internal/ag;->f:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 572
    iget-object v1, p0, Lcom/facebook/internal/ag;->f:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/facebook/internal/ag;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 573
    iget-object v1, p0, Lcom/facebook/internal/ag;->f:Landroid/webkit/WebView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 576
    iget-object v1, p0, Lcom/facebook/internal/ag;->f:Landroid/webkit/WebView;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 577
    iget-object v1, p0, Lcom/facebook/internal/ag;->f:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 578
    iget-object v1, p0, Lcom/facebook/internal/ag;->f:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 579
    iget-object v1, p0, Lcom/facebook/internal/ag;->f:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 580
    iget-object v1, p0, Lcom/facebook/internal/ag;->f:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 581
    iget-object v1, p0, Lcom/facebook/internal/ag;->f:Landroid/webkit/WebView;

    new-instance v2, Lcom/facebook/internal/ag$4;

    invoke-direct {v2, p0}, Lcom/facebook/internal/ag$4;-><init>(Lcom/facebook/internal/ag;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 592
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 593
    iget-object p1, p0, Lcom/facebook/internal/ag;->f:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/high16 p1, -0x34000000    # -3.3554432E7f

    .line 594
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 595
    iget-object p1, p0, Lcom/facebook/internal/ag;->i:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected static a(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 144
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    .line 150
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_1

    goto :goto_1

    .line 154
    :cond_1
    sget v0, Lcom/facebook/internal/ag;->m:I

    if-nez v0, :cond_3

    .line 155
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.facebook.sdk.WebDialogTheme"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 1182
    :cond_2
    sget p0, Lcom/facebook/internal/ag;->c:I

    :goto_0
    sput p0, Lcom/facebook/internal/ag;->m:I

    :catch_0
    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/facebook/internal/ag;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/facebook/internal/ag;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/internal/ag;)Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Lcom/facebook/internal/ag;->k:Z

    return p0
.end method

.method static synthetic c(Lcom/facebook/internal/ag;)Landroid/app/ProgressDialog;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/facebook/internal/ag;->g:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/internal/ag;)Landroid/widget/FrameLayout;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/facebook/internal/ag;->i:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic e(Lcom/facebook/internal/ag;)Landroid/webkit/WebView;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/facebook/internal/ag;->f:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic f(Lcom/facebook/internal/ag;)Landroid/widget/ImageView;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/facebook/internal/ag;->h:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic g(Lcom/facebook/internal/ag;)Z
    .locals 1

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/facebook/internal/ag;->l:Z

    return v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 428
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 430
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/ae;->d(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 431
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/internal/ae;->d(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object v0
.end method

.method protected final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 512
    iget-object v0, p0, Lcom/facebook/internal/ag;->a:Lcom/facebook/internal/ag$c;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/internal/ag;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 513
    iput-boolean v0, p0, Lcom/facebook/internal/ag;->b:Z

    .line 515
    instance-of v0, p1, Lcom/facebook/FacebookException;

    if-eqz v0, :cond_0

    .line 516
    check-cast p1, Lcom/facebook/FacebookException;

    goto :goto_0

    .line 518
    :cond_0
    new-instance v0, Lcom/facebook/FacebookException;

    invoke-direct {v0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    .line 520
    :goto_0
    iget-object v0, p0, Lcom/facebook/internal/ag;->a:Lcom/facebook/internal/ag$c;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/facebook/internal/ag$c;->a(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 521
    invoke-virtual {p0}, Lcom/facebook/internal/ag;->dismiss()V

    :cond_1
    return-void
.end method

.method protected final a()Z
    .locals 1

    .line 441
    iget-boolean v0, p0, Lcom/facebook/internal/ag;->l:Z

    return v0
.end method

.method protected final b()Landroid/webkit/WebView;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/facebook/internal/ag;->f:Landroid/webkit/WebView;

    return-object v0
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/facebook/internal/ag;->e:Ljava/lang/String;

    return-void
.end method

.method public final c()V
    .locals 6

    .line 449
    invoke-virtual {p0}, Lcom/facebook/internal/ag;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 450
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 451
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 452
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 456
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v2, :cond_0

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_0
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 458
    :goto_0
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v2, v3, :cond_1

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_1

    :cond_1
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 461
    :goto_1
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    const/16 v4, 0x1e0

    const/16 v5, 0x320

    .line 463
    invoke-static {v0, v3, v4, v5}, Lcom/facebook/internal/ag;->a(IFII)I

    move-result v0

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 462
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 466
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    const/16 v4, 0x500

    .line 468
    invoke-static {v2, v3, v5, v4}, Lcom/facebook/internal/ag;->a(IFII)I

    move-result v2

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 467
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 472
    invoke-virtual {p0}, Lcom/facebook/internal/ag;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/facebook/internal/ag;->a:Lcom/facebook/internal/ag$c;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/internal/ag;->b:Z

    if-nez v0, :cond_0

    .line 527
    new-instance v0, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v0}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/facebook/internal/ag;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/facebook/internal/ag;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 312
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/internal/ag;->k:Z

    if-nez v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/facebook/internal/ag;->g:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/facebook/internal/ag;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 317
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    const/4 v0, 0x0

    .line 348
    iput-boolean v0, p0, Lcom/facebook/internal/ag;->k:Z

    .line 350
    invoke-virtual {p0}, Lcom/facebook/internal/ag;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/ae;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/internal/ag;->n:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/facebook/internal/ag;->n:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/facebook/internal/ag;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Set token on onAttachedToWindow(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/internal/ag;->n:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/facebook/internal/ae;->a()V

    .line 357
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 373
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 375
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/facebook/internal/ag;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/facebook/internal/ag;->g:Landroid/app/ProgressDialog;

    const/4 v0, 0x1

    .line 376
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 377
    iget-object p1, p0, Lcom/facebook/internal/ag;->g:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/facebook/internal/ag;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/common/a$f;->com_facebook_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 379
    iget-object p1, p0, Lcom/facebook/internal/ag;->g:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 380
    iget-object p1, p0, Lcom/facebook/internal/ag;->g:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/facebook/internal/ag$1;

    invoke-direct {v1, p0}, Lcom/facebook/internal/ag$1;-><init>(Lcom/facebook/internal/ag;)V

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 388
    invoke-virtual {p0, v0}, Lcom/facebook/internal/ag;->requestWindowFeature(I)Z

    .line 389
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/facebook/internal/ag;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/facebook/internal/ag;->i:Landroid/widget/FrameLayout;

    .line 392
    invoke-virtual {p0}, Lcom/facebook/internal/ag;->c()V

    .line 393
    invoke-virtual {p0}, Lcom/facebook/internal/ag;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/view/Window;->setGravity(I)V

    .line 396
    invoke-virtual {p0}, Lcom/facebook/internal/ag;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 4532
    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/internal/ag;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/facebook/internal/ag;->h:Landroid/widget/ImageView;

    .line 4534
    new-instance v1, Lcom/facebook/internal/ag$2;

    invoke-direct {v1, p0}, Lcom/facebook/internal/ag$2;-><init>(Lcom/facebook/internal/ag;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4541
    invoke-virtual {p0}, Lcom/facebook/internal/ag;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/facebook/common/a$c;->com_facebook_close:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 4542
    iget-object v1, p0, Lcom/facebook/internal/ag;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4546
    iget-object p1, p0, Lcom/facebook/internal/ag;->h:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 404
    iget-object p1, p0, Lcom/facebook/internal/ag;->d:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 408
    iget-object p1, p0, Lcom/facebook/internal/ag;->h:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 409
    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/facebook/internal/ag;->a(I)V

    .line 415
    :cond_0
    iget-object p1, p0, Lcom/facebook/internal/ag;->i:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/facebook/internal/ag;->h:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    iget-object p1, p0, Lcom/facebook/internal/ag;->i:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lcom/facebook/internal/ag;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x1

    .line 342
    iput-boolean v0, p0, Lcom/facebook/internal/ag;->k:Z

    .line 343
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/facebook/internal/ag;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object p1, p0, Lcom/facebook/internal/ag;->f:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    const/4 p1, 0x1

    return p1

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/internal/ag;->cancel()V

    .line 304
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onStart()V
    .locals 2

    .line 322
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 323
    iget-object v0, p0, Lcom/facebook/internal/ag;->j:Lcom/facebook/internal/ag$d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/internal/ag$d;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/facebook/internal/ag;->j:Lcom/facebook/internal/ag$d;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/facebook/internal/ag$d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 325
    iget-object v0, p0, Lcom/facebook/internal/ag;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/internal/ag;->c()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/facebook/internal/ag;->j:Lcom/facebook/internal/ag$d;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 334
    invoke-virtual {v0, v1}, Lcom/facebook/internal/ag$d;->cancel(Z)Z

    .line 335
    iget-object v0, p0, Lcom/facebook/internal/ag;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 337
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 362
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 365
    iput-object p1, p0, Lcom/facebook/internal/ag;->n:Landroid/view/WindowManager$LayoutParams;

    .line 368
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
