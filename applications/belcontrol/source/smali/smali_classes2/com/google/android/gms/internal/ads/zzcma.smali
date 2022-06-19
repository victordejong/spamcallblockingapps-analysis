.class public final synthetic Lcom/google/android/gms/internal/ads/zzcma;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdjf:Ljava/lang/String;

.field private final zzgnl:Lcom/google/android/gms/internal/ads/zzclx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzclx;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcma;->zzgnl:Lcom/google/android/gms/internal/ads/zzclx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcma;->zzdjf:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcma;->zzgnl:Lcom/google/android/gms/internal/ads/zzclx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcma;->zzdjf:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzclx;->zzgng:Lcom/google/android/gms/internal/ads/zzclq;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzclq;->zza(Lcom/google/android/gms/internal/ads/zzclq;Ljava/lang/String;)V

    return-void
.end method
