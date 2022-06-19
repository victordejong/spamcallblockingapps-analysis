.class public final Lcom/google/android/gms/internal/ads/s;
.super Lcom/google/android/gms/internal/ads/emh;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/ads/OnPaidEventListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/emh;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/s;->a:Lcom/google/android/gms/ads/OnPaidEventListener;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzvv;)V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s;->a:Lcom/google/android/gms/ads/OnPaidEventListener;

    if-eqz v0, :cond_0

    .line 5
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzvv;->zzadj:I

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzvv;->zzadk:Ljava/lang/String;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzvv;->zzadl:J

    .line 6
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/ads/AdValue;->zza(ILjava/lang/String;J)Lcom/google/android/gms/ads/AdValue;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s;->a:Lcom/google/android/gms/ads/OnPaidEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/OnPaidEventListener;->onPaidEvent(Lcom/google/android/gms/ads/AdValue;)V

    :cond_0
    return-void
.end method
