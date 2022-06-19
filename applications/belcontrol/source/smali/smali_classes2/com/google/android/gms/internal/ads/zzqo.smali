.class public final Lcom/google/android/gms/internal/ads/zzqo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzajm:Lcom/google/android/gms/internal/ads/zzht;

.field private final synthetic zzbna:Lcom/google/android/gms/internal/ads/zzqj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzqj;Lcom/google/android/gms/internal/ads/zzht;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqo;->zzbna:Lcom/google/android/gms/internal/ads/zzqj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqo;->zzajm:Lcom/google/android/gms/internal/ads/zzht;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqo;->zzbna:Lcom/google/android/gms/internal/ads/zzqj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzqj;->zza(Lcom/google/android/gms/internal/ads/zzqj;)Lcom/google/android/gms/internal/ads/zzqk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqo;->zzajm:Lcom/google/android/gms/internal/ads/zzht;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzqk;->zzk(Lcom/google/android/gms/internal/ads/zzht;)V

    return-void
.end method
