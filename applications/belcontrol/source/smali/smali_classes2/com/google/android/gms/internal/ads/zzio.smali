.class public final Lcom/google/android/gms/internal/ads/zzio;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzajh:Lcom/google/android/gms/internal/ads/zzik;

.field private final synthetic zzajj:I

.field private final synthetic zzajk:J

.field private final synthetic zzajl:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzik;IJJ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajh:Lcom/google/android/gms/internal/ads/zzik;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajj:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajk:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajl:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajh:Lcom/google/android/gms/internal/ads/zzik;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzik;->zza(Lcom/google/android/gms/internal/ads/zzik;)Lcom/google/android/gms/internal/ads/zzil;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajj:I

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajk:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajl:J

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzil;->zzb(IJJ)V

    return-void
.end method
