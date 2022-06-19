.class public final Lcom/google/android/gms/internal/ads/zzin;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzajh:Lcom/google/android/gms/internal/ads/zzik;

.field private final synthetic zzaji:Lcom/google/android/gms/internal/ads/zzjm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzik;Lcom/google/android/gms/internal/ads/zzjm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzin;->zzajh:Lcom/google/android/gms/internal/ads/zzik;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzin;->zzaji:Lcom/google/android/gms/internal/ads/zzjm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzin;->zzajh:Lcom/google/android/gms/internal/ads/zzik;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzik;->zza(Lcom/google/android/gms/internal/ads/zzik;)Lcom/google/android/gms/internal/ads/zzil;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzin;->zzaji:Lcom/google/android/gms/internal/ads/zzjm;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzil;->zzc(Lcom/google/android/gms/internal/ads/zzjm;)V

    return-void
.end method
