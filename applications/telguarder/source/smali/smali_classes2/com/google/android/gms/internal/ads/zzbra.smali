.class public final Lcom/google/android/gms/internal/ads/zzbra;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbra;->zzfyz:Lcom/google/android/gms/internal/ads/zzbqx;

    return-void
.end method

.method public static zzh(Lcom/google/android/gms/internal/ads/zzbqx;)Lcom/google/android/gms/internal/ads/zzbra;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbra;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbra;-><init>(Lcom/google/android/gms/internal/ads/zzbqx;)V

    return-object v0
.end method

.method public static zzi(Lcom/google/android/gms/internal/ads/zzbqx;)Landroid/os/Bundle;
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbqx;->zzaln()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbra;->zzfyz:Lcom/google/android/gms/internal/ads/zzbqx;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqx;->zzaln()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
