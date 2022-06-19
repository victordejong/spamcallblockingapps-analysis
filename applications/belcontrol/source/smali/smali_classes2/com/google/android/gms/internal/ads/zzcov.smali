.class public final synthetic Lcom/google/android/gms/internal/ads/zzcov;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyu;


# instance fields
.field private final zzgpq:Lcom/google/android/gms/internal/ads/zzcol;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcol;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzgpq:Lcom/google/android/gms/internal/ads/zzcol;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 0

    check-cast p1, Ljava/io/InputStream;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdoi;->zze(Ljava/io/InputStream;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdzk;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method
