.class public final Lcom/google/android/gms/internal/gtm/zzcx;
.super Lcom/google/android/gms/internal/gtm/zzam;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gtm/zzam;",
        "Lcom/google/android/gms/internal/gtm/zzbp<",
        "Lcom/google/android/gms/internal/gtm/zzcy;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzacl:Lcom/google/android/gms/internal/gtm/zzcy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzam;-><init>(Lcom/google/android/gms/internal/gtm/zzap;)V

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzcy;

    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzcy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcx;->zzacl:Lcom/google/android/gms/internal/gtm/zzcy;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "ga_autoActivityTracking"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcx;->zzacl:Lcom/google/android/gms/internal/gtm/zzcy;

    iput p2, p1, Lcom/google/android/gms/internal/gtm/zzcy;->zzacp:I

    return-void

    :cond_0
    const-string v0, "ga_anonymizeIp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcx;->zzacl:Lcom/google/android/gms/internal/gtm/zzcy;

    iput p2, p1, Lcom/google/android/gms/internal/gtm/zzcy;->zzacq:I

    return-void

    :cond_1
    const-string v0, "ga_reportUncaughtExceptions"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcx;->zzacl:Lcom/google/android/gms/internal/gtm/zzcy;

    iput p2, p1, Lcom/google/android/gms/internal/gtm/zzcy;->zzacr:I

    return-void

    :cond_2
    const-string p2, "bool configuration name not recognized"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/gtm/zzam;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "ga_sessionTimeout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcx;->zzacl:Lcom/google/android/gms/internal/gtm/zzcy;

    iput p2, p1, Lcom/google/android/gms/internal/gtm/zzcy;->zzaco:I

    return-void

    :cond_0
    const-string p2, "int configuration name not recognized"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/gtm/zzam;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcx;->zzacl:Lcom/google/android/gms/internal/gtm/zzcy;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzcy;->zzacs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "ga_trackingId"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcx;->zzacl:Lcom/google/android/gms/internal/gtm/zzcy;

    iput-object p2, p1, Lcom/google/android/gms/internal/gtm/zzcy;->zzacm:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "ga_sampleFrequency"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcx;->zzacl:Lcom/google/android/gms/internal/gtm/zzcy;

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/google/android/gms/internal/gtm/zzcy;->zzacn:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error parsing ga_sampleFrequency value"

    invoke-virtual {p0, v0, p2, p1}, Lcom/google/android/gms/internal/gtm/zzam;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string p2, "string configuration name not recognized"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/gtm/zzam;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic zzel()Lcom/google/android/gms/internal/gtm/zzbn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcx;->zzacl:Lcom/google/android/gms/internal/gtm/zzcy;

    return-object v0
.end method
