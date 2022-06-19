.class final Lcom/google/android/gms/ads/internal/zzq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/internal/ads/die;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzbqf:Lcom/google/android/gms/ads/internal/zzl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzbqf:Lcom/google/android/gms/ads/internal/zzl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzbqf:Lcom/google/android/gms/ads/internal/zzl;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzl;->zzc(Lcom/google/android/gms/ads/internal/zzl;)Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbar;->zzbrz:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzbqf:Lcom/google/android/gms/ads/internal/zzl;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzl;->zzd(Lcom/google/android/gms/ads/internal/zzl;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dfc;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/gms/internal/ads/dfc;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/die;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/die;-><init>(Lcom/google/android/gms/internal/ads/cxx;)V

    return-object v1
.end method
