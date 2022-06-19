.class final Lcom/google/android/gms/ads/x/a/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/x/a/a;->b:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/x/a/a;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/x/a/a;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/x/a/a;->b:Landroid/webkit/WebView;

    return-object p0
.end method


# virtual methods
.method public getQueryInfo()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->d()Lcom/google/android/gms/ads/internal/util/l1;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/x/a/a;->a:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/ads/AdFormat;->b:Lcom/google/android/gms/ads/AdFormat;

    new-instance v3, Lcom/google/android/gms/ads/e$a;

    invoke-direct {v3}, Lcom/google/android/gms/ads/e$a;-><init>()V

    invoke-virtual {v3}, Lcom/google/android/gms/ads/e$a;->c()Lcom/google/android/gms/ads/e;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/ads/x/a/e;

    invoke-direct {v4, p0, v0}, Lcom/google/android/gms/ads/x/a/e;-><init>(Lcom/google/android/gms/ads/x/a/a;Ljava/lang/String;)V

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/ads/y/b;->a(Landroid/content/Context;Lcom/google/android/gms/ads/AdFormat;Lcom/google/android/gms/ads/e;Lcom/google/android/gms/ads/y/c;)V

    return-object v0
.end method
