.class final synthetic Lcom/google/android/gms/internal/ads/zzbst;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbwh;


# instance fields
.field private final zzdjf:Ljava/lang/String;

.field private final zzdlo:Ljava/lang/String;

.field private final zzfzl:Lcom/google/android/gms/internal/ads/zzauk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzauk;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbst;->zzfzl:Lcom/google/android/gms/internal/ads/zzauk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbst;->zzdjf:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbst;->zzdlo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzo(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbst;->zzfzl:Lcom/google/android/gms/internal/ads/zzauk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbst;->zzdjf:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbst;->zzdlo:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbrm;

    .line 2
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbrm;->zzb(Lcom/google/android/gms/internal/ads/zzauk;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
