.class public final Lcom/google/android/gms/internal/ads/zzim;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzaje:Ljava/lang/String;

.field private final synthetic zzajf:J

.field private final synthetic zzajg:J

.field private final synthetic zzajh:Lcom/google/android/gms/internal/ads/zzik;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzik;Ljava/lang/String;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzim;->zzajh:Lcom/google/android/gms/internal/ads/zzik;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzim;->zzaje:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzim;->zzajf:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzim;->zzajg:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzim;->zzajh:Lcom/google/android/gms/internal/ads/zzik;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzik;->zza(Lcom/google/android/gms/internal/ads/zzik;)Lcom/google/android/gms/internal/ads/zzil;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzim;->zzaje:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzim;->zzajf:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzim;->zzajg:J

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzil;->zzb(Ljava/lang/String;JJ)V

    return-void
.end method
