.class public final Lcom/google/android/gms/internal/ads/zzbra;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeqb<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfyz:Lcom/google/android/gms/internal/ads/zzbqx;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbqx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbra;->zzfyz:Lcom/google/android/gms/internal/ads/zzbqx;

    return-void
.end method

.method public static zzh(Lcom/google/android/gms/internal/ads/zzbqx;)Lcom/google/android/gms/internal/ads/zzbra;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbra;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbra;-><init>(Lcom/google/android/gms/internal/ads/zzbqx;)V

    return-object v0
.end method

.method public static zzi(Lcom/google/android/gms/internal/ads/zzbqx;)Landroid/os/Bundle;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbqx;->zzaln()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbra;->zzfyz:Lcom/google/android/gms/internal/ads/zzbqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqx;->zzaln()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
