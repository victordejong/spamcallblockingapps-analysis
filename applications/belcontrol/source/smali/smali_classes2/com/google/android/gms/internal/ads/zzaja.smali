.class public final Lcom/google/android/gms/internal/ads/zzaja;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyu<",
        "Lcom/google/android/gms/internal/ads/zzaiz;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzdiq:Lcom/google/android/gms/internal/ads/zzait;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzajb;Lcom/google/android/gms/internal/ads/zzait;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaja;->zzdiq:Lcom/google/android/gms/internal/ads/zzait;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaiz;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbaa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbaa;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaja;->zzdiq:Lcom/google/android/gms/internal/ads/zzait;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzajd;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzajd;-><init>(Lcom/google/android/gms/internal/ads/zzaja;Lcom/google/android/gms/internal/ads/zzbaa;)V

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzaiz;->zza(Lcom/google/android/gms/internal/ads/zzait;Lcom/google/android/gms/internal/ads/zzaix;)V

    return-object v0
.end method
