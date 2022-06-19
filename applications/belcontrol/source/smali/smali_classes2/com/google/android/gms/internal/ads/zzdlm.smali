.class public final synthetic Lcom/google/android/gms/internal/ads/zzdlm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdkc;


# instance fields
.field private final zzdjf:Ljava/lang/String;

.field private final zzdlo:Ljava/lang/String;

.field private final zzfzl:Lcom/google/android/gms/internal/ads/zzauk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzauk;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlm;->zzfzl:Lcom/google/android/gms/internal/ads/zzauk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdlm;->zzdjf:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdlm;->zzdlo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzp(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlm;->zzfzl:Lcom/google/android/gms/internal/ads/zzauk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdlm;->zzdjf:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdlm;->zzdlo:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaup;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaup;->zza(Lcom/google/android/gms/internal/ads/zzauk;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
