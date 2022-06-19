.class public final Lcom/google/android/gms/internal/gtm/zzcb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/gtm/zzbp<",
        "Lcom/google/android/gms/internal/gtm/zzcc;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaat:Lcom/google/android/gms/internal/gtm/zzcc;

.field private final zzwc:Lcom/google/android/gms/internal/gtm/zzap;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zzwc:Lcom/google/android/gms/internal/gtm/zzap;

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzcc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzcc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zzaat:Lcom/google/android/gms/internal/gtm/zzcc;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "ga_dryRun"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zzaat:Lcom/google/android/gms/internal/gtm/zzcc;

    iput p2, p1, Lcom/google/android/gms/internal/gtm/zzcc;->zzaay:I

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zzwc:Lcom/google/android/gms/internal/gtm/zzap;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzap;->zzco()Lcom/google/android/gms/internal/gtm/zzci;

    move-result-object p2

    const-string v0, "Bool xml configuration name not recognized"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/gtm/zzam;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "ga_dispatchPeriod"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zzaat:Lcom/google/android/gms/internal/gtm/zzcc;

    iput p2, p1, Lcom/google/android/gms/internal/gtm/zzcc;->zzaax:I

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zzwc:Lcom/google/android/gms/internal/gtm/zzap;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzap;->zzco()Lcom/google/android/gms/internal/gtm/zzci;

    move-result-object p2

    const-string v0, "Int xml configuration name not recognized"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/gtm/zzam;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "ga_appName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zzaat:Lcom/google/android/gms/internal/gtm/zzcc;

    iput-object p2, p1, Lcom/google/android/gms/internal/gtm/zzcc;->zzaau:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "ga_appVersion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zzaat:Lcom/google/android/gms/internal/gtm/zzcc;

    iput-object p2, p1, Lcom/google/android/gms/internal/gtm/zzcc;->zzaav:Ljava/lang/String;

    return-void

    :cond_1
    const-string v0, "ga_logLevel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zzaat:Lcom/google/android/gms/internal/gtm/zzcc;

    iput-object p2, p1, Lcom/google/android/gms/internal/gtm/zzcc;->zzaaw:Ljava/lang/String;

    return-void

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zzwc:Lcom/google/android/gms/internal/gtm/zzap;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzap;->zzco()Lcom/google/android/gms/internal/gtm/zzci;

    move-result-object p2

    const-string v0, "String xml configuration name not recognized"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/gtm/zzam;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic zzel()Lcom/google/android/gms/internal/gtm/zzbn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zzaat:Lcom/google/android/gms/internal/gtm/zzcc;

    return-object v0
.end method
