.class final synthetic Lcom/google/android/gms/internal/ads/zzclv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzesf:Ljava/lang/String;

.field private final zzgmp:Lcom/google/android/gms/internal/ads/zzclq;

.field private final zzgnd:Lcom/google/android/gms/internal/ads/zzdog;

.field private final zzgne:Lcom/google/android/gms/internal/ads/zzajj;

.field private final zzgnf:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzclq;Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzajj;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclv;->zzgmp:Lcom/google/android/gms/internal/ads/zzclq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclv;->zzgnd:Lcom/google/android/gms/internal/ads/zzdog;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzclv;->zzgne:Lcom/google/android/gms/internal/ads/zzajj;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzclv;->zzgnf:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzclv;->zzesf:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclv;->zzgmp:Lcom/google/android/gms/internal/ads/zzclq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclv;->zzgnd:Lcom/google/android/gms/internal/ads/zzdog;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzclv;->zzgne:Lcom/google/android/gms/internal/ads/zzajj;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzclv;->zzgnf:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzclv;->zzesf:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzclq;->zza(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzajj;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
