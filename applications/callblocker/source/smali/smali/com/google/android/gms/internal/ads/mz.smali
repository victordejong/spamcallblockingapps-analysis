.class final Lcom/google/android/gms/internal/ads/mz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/mediation/d",
        "<",
        "Lcom/google/android/gms/ads/mediation/o;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/mi;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/ku;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/mt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/mt;Lcom/google/android/gms/internal/ads/mi;Lcom/google/android/gms/internal/ads/ku;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mz;->c:Lcom/google/android/gms/internal/ads/mt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mz;->a:Lcom/google/android/gms/internal/ads/mi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/mz;->b:Lcom/google/android/gms/internal/ads/ku;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mz;->a:Lcom/google/android/gms/internal/ads/mi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/mi;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :goto_0
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
