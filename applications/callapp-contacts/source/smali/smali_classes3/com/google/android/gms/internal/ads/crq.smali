.class final synthetic Lcom/google/android/gms/internal/ads/crq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/crr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/crr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/crq;->a:Lcom/google/android/gms/internal/ads/crr;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/crq;->a:Lcom/google/android/gms/internal/ads/crr;

    check-cast p1, Lcom/google/android/gms/internal/ads/crj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/crr;->a(Lcom/google/android/gms/internal/ads/crj;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
