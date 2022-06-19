.class final synthetic Lcom/google/android/gms/internal/ads/bja;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bja;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bja;->a:Landroid/content/Context;

    .line 2
    const-string/jumbo v0, ""

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/vj;->c(Landroid/content/Context;)Landroid/webkit/CookieManager;

    move-result-object v1

    .line 4
    if-eqz v1, :cond_0

    .line 5
    const-string/jumbo v0, "googleads.g.doubleclick.net"

    .line 6
    invoke-virtual {v1, v0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    :cond_0
    return-object v0
.end method
