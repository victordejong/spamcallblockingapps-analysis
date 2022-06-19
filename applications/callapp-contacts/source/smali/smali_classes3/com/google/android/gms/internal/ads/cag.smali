.class final synthetic Lcom/google/android/gms/internal/ads/cag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/arp;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bza;

.field private final b:Lcom/google/android/gms/internal/ads/jf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bza;Lcom/google/android/gms/internal/ads/jf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cag;->a:Lcom/google/android/gms/internal/ads/bza;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cag;->b:Lcom/google/android/gms/internal/ads/jf;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cag;->a:Lcom/google/android/gms/internal/ads/bza;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cag;->b:Lcom/google/android/gms/internal/ads/jf;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bza;->a(Lcom/google/android/gms/internal/ads/zzvh;)V

    const-string v0, "#007 Could not call remote method."

    if-eqz v1, :cond_0

    .line 4
    :try_start_0
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/jf;->a(Lcom/google/android/gms/internal/ads/zzvh;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 7
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 9
    :try_start_1
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzvh;->errorCode:I

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/jf;->a(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 12
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
