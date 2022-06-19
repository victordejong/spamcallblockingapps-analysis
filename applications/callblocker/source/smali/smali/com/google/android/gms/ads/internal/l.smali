.class public final Lcom/google/android/gms/ads/internal/l;
.super Lcom/google/android/gms/internal/ads/dzm;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/yd;

.field private final b:Lcom/google/android/gms/internal/ads/dyd;

.field private final c:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/ads/ctl;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/gms/ads/internal/o;

.field private f:Landroid/webkit/WebView;

.field private g:Lcom/google/android/gms/internal/ads/dza;

.field private h:Lcom/google/android/gms/internal/ads/ctl;

.field private i:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dyd;Ljava/lang/String;Lcom/google/android/gms/internal/ads/yd;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dzm;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l;->d:Landroid/content/Context;

    .line 3
    iput-object p4, p0, Lcom/google/android/gms/ads/internal/l;->a:Lcom/google/android/gms/internal/ads/yd;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/l;->b:Lcom/google/android/gms/internal/ads/dyd;

    .line 5
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/l;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Landroid/webkit/WebView;

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/yg;->a:Lcom/google/android/gms/internal/ads/crs;

    new-instance v1, Lcom/google/android/gms/ads/internal/m;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/m;-><init>(Lcom/google/android/gms/ads/internal/l;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/crs;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/l;->c:Ljava/util/concurrent/Future;

    .line 9
    new-instance v0, Lcom/google/android/gms/ads/internal/o;

    invoke-direct {v0, p1, p3}, Lcom/google/android/gms/ads/internal/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/l;->e:Lcom/google/android/gms/ads/internal/o;

    .line 11
    invoke-virtual {p0, v2}, Lcom/google/android/gms/ads/internal/l;->a(I)V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/android/gms/ads/internal/k;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/k;-><init>(Lcom/google/android/gms/ads/internal/l;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/android/gms/ads/internal/n;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/n;-><init>(Lcom/google/android/gms/ads/internal/l;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 16
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/l;Lcom/google/android/gms/internal/ads/ctl;)Lcom/google/android/gms/internal/ads/ctl;
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l;->h:Lcom/google/android/gms/internal/ads/ctl;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/l;)Lcom/google/android/gms/internal/ads/dza;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->g:Lcom/google/android/gms/internal/ads/dza;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/ads/internal/l;)Lcom/google/android/gms/internal/ads/ctl;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->h:Lcom/google/android/gms/internal/ads/ctl;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/ads/internal/l;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/l;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/ads/internal/l;)Lcom/google/android/gms/internal/ads/yd;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->a:Lcom/google/android/gms/internal/ads/yd;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/ads/internal/l;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->d:Landroid/content/Context;

    return-object v0
.end method

.method private final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->h:Lcom/google/android/gms/internal/ads/ctl;

    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-object p1

    .line 100
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/l;->h:Lcom/google/android/gms/internal/ads/ctl;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/l;->d:Landroid/content/Context;

    .line 103
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/ctl;->a(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdw; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 108
    :goto_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 106
    :catch_0
    move-exception v1

    .line 107
    const-string/jumbo v2, "Unable to process ad data"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic e(Lcom/google/android/gms/ads/internal/l;)Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->c:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method private final e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/l;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method

.method static synthetic f(Lcom/google/android/gms/ads/internal/l;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/dynamic/a;
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "getAdFrame must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    return-object v0
.end method

.method final a(I)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 75
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/l;->f:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dve;)V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dyd;)V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "AdSize must be set before initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dyk;)V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dyz;)V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dza;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l;->g:Lcom/google/android/gms/internal/ads/dza;

    .line 35
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dzr;)V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dzw;)V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/eac;)V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/eau;)V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ebg;)V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ecn;)V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/oi;)V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/oo;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/rb;)V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/u;)V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dya;)Z
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Landroid/webkit/WebView;

    const-string/jumbo v1, "This Search Ad has already been torn down"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->e:Lcom/google/android/gms/ads/internal/o;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/l;->a:Lcom/google/android/gms/internal/ads/yd;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/internal/o;->a(Lcom/google/android/gms/internal/ads/dya;Lcom/google/android/gms/internal/ads/yd;)V

    .line 28
    new-instance v0, Lcom/google/android/gms/ads/internal/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/internal/p;-><init>(Lcom/google/android/gms/ads/internal/l;Lcom/google/android/gms/ads/internal/k;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/p;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/l;->i:Landroid/os/AsyncTask;

    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 19
    const-string/jumbo v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->i:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->c:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Landroid/webkit/WebView;

    .line 24
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Z)V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final c(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "height"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    :goto_0
    return v0

    .line 69
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/l;->d:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/xr;->a(Landroid/content/Context;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public final f()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j()Lcom/google/android/gms/internal/ads/dyd;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->b:Lcom/google/android/gms/internal/ads/dyd;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public final m()Lcom/google/android/gms/internal/ads/eav;
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getAdUnitId not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final o()Lcom/google/android/gms/internal/ads/dzw;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getIAppEventListener not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final p()Lcom/google/android/gms/internal/ads/dza;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getIAdListener not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public final r()Lcom/google/android/gms/internal/ads/eba;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method final s()Ljava/lang/String;
    .locals 5

    .prologue
    .line 77
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 78
    const-string/jumbo v0, "https://"

    .line 79
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/internal/ads/ag;->d:Lcom/google/android/gms/internal/ads/ab;

    .line 80
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 81
    const-string/jumbo v0, "query"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/l;->e:Lcom/google/android/gms/ads/internal/o;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 82
    const-string/jumbo v0, "pubId"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/l;->e:Lcom/google/android/gms/ads/internal/o;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/o;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->e:Lcom/google/android/gms/ads/internal/o;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/o;->d()Ljava/util/Map;

    move-result-object v3

    .line 84
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 85
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/l;->h:Lcom/google/android/gms/internal/ads/ctl;

    if-eqz v1, :cond_1

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/l;->h:Lcom/google/android/gms/internal/ads/ctl;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/l;->d:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/ctl;->a(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdw; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 93
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/l;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    const-string/jumbo v2, "Unable to process ad data"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method final t()Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->e:Lcom/google/android/gms/ads/internal/o;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/o;->a()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const-string/jumbo v0, "www.google.com"

    move-object v1, v0

    .line 97
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/ag;->d:Lcom/google/android/gms/internal/ads/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "https://"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method
