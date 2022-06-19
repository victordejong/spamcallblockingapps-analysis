.class public final Lcom/google/android/gms/internal/ads/zzaca;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final time:J

.field private final zzdbb:Ljava/lang/String;

.field private final zzdbc:Lcom/google/android/gms/internal/ads/zzaca;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/google/android/gms/internal/ads/zzaca;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->time:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzdbb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzdbc:Lcom/google/android/gms/internal/ads/zzaca;

    return-void
.end method


# virtual methods
.method public final getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaca;->time:J

    return-wide v0
.end method

.method public final zzsl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzdbb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzsm()Lcom/google/android/gms/internal/ads/zzaca;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzdbc:Lcom/google/android/gms/internal/ads/zzaca;

    return-object v0
.end method
