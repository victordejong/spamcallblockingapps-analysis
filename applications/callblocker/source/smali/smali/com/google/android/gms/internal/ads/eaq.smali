.class public final Lcom/google/android/gms/internal/ads/eaq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/google/android/gms/internal/ads/eal;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/eal;)V
    .locals 3

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eaq;->b:Lcom/google/android/gms/internal/ads/eal;

    .line 3
    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/eal;->a()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 8
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eaq;->a:Ljava/lang/String;

    .line 9
    return-void

    .line 6
    :catch_0
    move-exception v1

    .line 7
    const-string/jumbo v2, ""

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eaq;->a:Ljava/lang/String;

    return-object v0
.end method
