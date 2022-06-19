.class public final Lcom/google/android/gms/internal/gtm/zzz;
.super Lcom/google/android/gms/analytics/zzi;
.source ""


# annotations
.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/zzi<",
        "Lcom/google/android/gms/internal/gtm/zzz;",
        ">;"
    }
.end annotation


# instance fields
.field private zzus:Ljava/lang/String;

.field private zzut:Ljava/lang/String;

.field private zzuu:Ljava/lang/String;

.field private zzuv:Ljava/lang/String;

.field private zzuw:Z

.field private zzux:Ljava/lang/String;

.field private zzuy:Z

.field private zzuz:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzi;-><init>()V

    return-void
.end method


# virtual methods
.method public final setClientId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzut:Ljava/lang/String;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuu:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzus:Ljava/lang/String;

    const-string v2, "hitType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzut:Ljava/lang/String;

    const-string v2, "clientId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuu:Ljava/lang/String;

    const-string v2, "userId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuv:Ljava/lang/String;

    const-string v2, "androidAdId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuw:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "AdTargetingEnabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzux:Ljava/lang/String;

    const-string v2, "sessionControl"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuy:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "nonInteraction"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuz:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "sampleRate"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzi;->zza(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuw:Z

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/analytics/zzi;)V
    .locals 6

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzz;

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzus:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzus:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/gtm/zzz;->zzus:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzut:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzut:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/gtm/zzz;->zzut:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuu:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuu:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/gtm/zzz;->zzuu:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuv:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/gtm/zzz;->zzuv:Ljava/lang/String;

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuw:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iput-boolean v1, p1, Lcom/google/android/gms/internal/gtm/zzz;->zzuw:Z

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzux:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzux:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/gtm/zzz;->zzux:Ljava/lang/String;

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuy:Z

    if-eqz v0, :cond_6

    iput-boolean v0, p1, Lcom/google/android/gms/internal/gtm/zzz;->zzuy:Z

    :cond_6
    iget-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuz:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_8

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_7

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :goto_0
    const-string v0, "Sample rate must be between 0% and 100%"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-wide v2, p1, Lcom/google/android/gms/internal/gtm/zzz;->zzuz:D

    :cond_8
    return-void
.end method

.method public final zzb(Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuy:Z

    return-void
.end method

.method public final zzbs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzus:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzut:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbu()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuu:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuv:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuw:Z

    return v0
.end method

.method public final zzbx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzux:Ljava/lang/String;

    return-object v0
.end method

.method public final zzby()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuy:Z

    return v0
.end method

.method public final zzbz()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuz:D

    return-wide v0
.end method

.method public final zzl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzus:Ljava/lang/String;

    return-void
.end method

.method public final zzm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzz;->zzuv:Ljava/lang/String;

    return-void
.end method
