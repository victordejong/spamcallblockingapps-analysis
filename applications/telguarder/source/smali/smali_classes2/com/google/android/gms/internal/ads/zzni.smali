.class final Lcom/google/android/gms/internal/ads/zzni;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zznd;


# instance fields
.field private final synthetic zzbfl:I

.field private final synthetic zzbfm:Lcom/google/android/gms/internal/ads/zznf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zznf;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfm:Lcom/google/android/gms/internal/ads/zznf;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfl:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzid;Ljava/lang/Object;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfm:Lcom/google/android/gms/internal/ads/zznf;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzni;->zzbfl:I

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zznf;->zza(Lcom/google/android/gms/internal/ads/zznf;ILcom/google/android/gms/internal/ads/zzid;Ljava/lang/Object;)V

    return-void
.end method
