.class final Lcom/google/android/gms/internal/ads/mw;
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
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/mb;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/ku;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/mt;Lcom/google/android/gms/internal/ads/mb;Lcom/google/android/gms/internal/ads/ku;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mw;->a:Lcom/google/android/gms/internal/ads/mb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/mw;->b:Lcom/google/android/gms/internal/ads/ku;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->a:Lcom/google/android/gms/internal/ads/mb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/mb;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :goto_0
    return-void

    .line 16
    :catch_0
    move-exception v0

    .line 17
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
