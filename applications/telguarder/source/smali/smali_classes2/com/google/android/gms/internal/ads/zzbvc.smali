.class final synthetic Lcom/google/android/gms/internal/ads/zzbvc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbvh;


# instance fields
.field private final zzdjf:Ljava/lang/String;

.field private final zzdlo:Ljava/lang/String;

.field private final zzfzl:Lcom/google/android/gms/internal/ads/zzauk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzauk;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvc;->zzfzl:Lcom/google/android/gms/internal/ads/zzauk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbvc;->zzdjf:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbvc;->zzdlo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzp(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvc;->zzfzl:Lcom/google/android/gms/internal/ads/zzauk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvc;->zzdjf:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbvc;->zzdlo:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdlh;

    .line 2
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdlh;->zzb(Lcom/google/android/gms/internal/ads/zzauk;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
