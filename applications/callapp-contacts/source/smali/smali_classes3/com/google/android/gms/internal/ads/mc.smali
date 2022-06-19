.class final synthetic Lcom/google/android/gms/internal/ads/mc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/lz;

.field private final b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/lz;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mc;->a:Lcom/google/android/gms/internal/ads/lz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mc;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mc;->a:Lcom/google/android/gms/internal/ads/lz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mc;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/lc;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/lz;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/lc;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
