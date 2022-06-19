.class public Lcom/google/android/gms/ads/c;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dyb;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/dzf;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dzf;)V
    .locals 1

    .prologue
    .line 1
    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/dyb;->a:Lcom/google/android/gms/internal/ads/dyb;

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/ads/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dzf;Lcom/google/android/gms/internal/ads/dyb;)V

    .line 4
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dzf;Lcom/google/android/gms/internal/ads/dyb;)V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/ads/c;->b:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/ads/c;->c:Lcom/google/android/gms/internal/ads/dzf;

    .line 8
    iput-object p3, p0, Lcom/google/android/gms/ads/c;->a:Lcom/google/android/gms/internal/ads/dyb;

    .line 9
    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/ebi;)V
    .locals 2

    .prologue
    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/c;->c:Lcom/google/android/gms/internal/ads/dzf;

    iget-object v1, p0, Lcom/google/android/gms/ads/c;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/dyb;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ebi;)Lcom/google/android/gms/internal/ads/dya;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dzf;->a(Lcom/google/android/gms/internal/ads/dya;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :goto_0
    return-void

    .line 12
    :catch_0
    move-exception v0

    .line 13
    const-string/jumbo v1, "Failed to load ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/d;)V
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/ads/d;->a()Lcom/google/android/gms/internal/ads/ebi;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/c;->a(Lcom/google/android/gms/internal/ads/ebi;)V

    .line 16
    return-void
.end method
