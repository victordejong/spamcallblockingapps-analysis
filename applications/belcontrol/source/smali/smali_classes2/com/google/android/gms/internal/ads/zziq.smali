.class public final Lcom/google/android/gms/internal/ads/zziq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzajh:Lcom/google/android/gms/internal/ads/zzik;

.field private final synthetic zzajn:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzik;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zziq;->zzajh:Lcom/google/android/gms/internal/ads/zzik;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zziq;->zzajn:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziq;->zzajh:Lcom/google/android/gms/internal/ads/zzik;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzik;->zza(Lcom/google/android/gms/internal/ads/zzik;)Lcom/google/android/gms/internal/ads/zzil;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziq;->zzajn:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzil;->zzx(I)V

    return-void
.end method
