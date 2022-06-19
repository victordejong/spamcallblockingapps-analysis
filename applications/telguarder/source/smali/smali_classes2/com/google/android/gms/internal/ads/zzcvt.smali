.class final synthetic Lcom/google/android/gms/internal/ads/zzcvt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbfq;


# instance fields
.field private final zzggw:Lcom/google/android/gms/internal/ads/zzbeb;

.field private final zzgtf:Lcom/google/android/gms/internal/ads/zzcig;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcig;Lcom/google/android/gms/internal/ads/zzbeb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvt;->zzgtf:Lcom/google/android/gms/internal/ads/zzcig;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvt;->zzggw:Lcom/google/android/gms/internal/ads/zzbeb;

    return-void
.end method


# virtual methods
.method public final zzal(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvt;->zzgtf:Lcom/google/android/gms/internal/ads/zzcig;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvt;->zzggw:Lcom/google/android/gms/internal/ads/zzbeb;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcig;->zzapr()V

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacr()V

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacx()Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzadv()V

    return-void
.end method
