.class public final Lcom/google/android/gms/internal/ads/zzdok;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzdom;Lcom/google/android/gms/internal/ads/zzvg;)Lcom/google/android/gms/internal/ads/zzvg;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdom;->zzhmb:Lcom/google/android/gms/internal/ads/zzdom;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdom;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzczy:Lcom/google/android/gms/internal/ads/zzaba;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzdok;->zza(Lcom/google/android/gms/internal/ads/zzdom;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdom;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;)Lcom/google/android/gms/internal/ads/zzvg;
    .locals 6

    if-nez p1, :cond_1

    .line 9
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdoj;->zzhlt:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdom;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const-string v0, "No fill."

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string p1, "Internal error."

    goto :goto_0

    .line 20
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabp;->zzdac:Lcom/google/android/gms/internal/ads/zzaba;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object p1

    .line 22
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gtz p1, :cond_0

    const-string p1, "The mediation adapter did not return an ad."

    goto :goto_0

    :pswitch_2
    const-string p1, "The ad can not be shown when app is not in foreground."

    goto :goto_0

    :pswitch_3
    const-string p1, "The ad has already been shown."

    goto :goto_0

    :pswitch_4
    const-string p1, "The ad is not ready."

    goto :goto_0

    :pswitch_5
    const-string p1, "A mediation adapter failed to show the ad."

    goto :goto_0

    :pswitch_6
    const-string p1, "App ID missing."

    goto :goto_0

    :cond_0
    :pswitch_7
    move-object p1, v0

    goto :goto_0

    :pswitch_8
    const-string p1, "Network error."

    goto :goto_0

    :pswitch_9
    const-string p1, "Invalid request: Invalid ad size."

    goto :goto_0

    :pswitch_a
    const-string p1, "Invalid request: Invalid ad unit ID."

    goto :goto_0

    :pswitch_b
    const-string p1, "Invalid request."

    :cond_1
    :goto_0
    move-object v2, p1

    .line 27
    new-instance p1, Lcom/google/android/gms/internal/ads/zzvg;

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdoj;->zzhlt:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdom;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x3

    packed-switch v0, :pswitch_data_1

    .line 45
    new-instance p1, Ljava/lang/AssertionError;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Unknown SdkError: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 39
    :pswitch_c
    sget-object p0, Lcom/google/android/gms/internal/ads/zzabp;->zzdac:Lcom/google/android/gms/internal/ads/zzaba;

    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object p0

    .line 41
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gtz p0, :cond_2

    const/16 p0, 0x9

    const/16 v1, 0x9

    goto :goto_1

    :pswitch_d
    const/4 p0, 0x4

    const/4 v1, 0x4

    goto :goto_1

    :pswitch_e
    const/16 p0, 0x8

    const/16 v1, 0x8

    goto :goto_1

    :cond_2
    :pswitch_f
    const/4 v1, 0x3

    goto :goto_1

    :pswitch_10
    const/4 v1, 0x2

    goto :goto_1

    :pswitch_11
    const/4 v1, 0x1

    :goto_1
    :pswitch_12
    const/4 v5, 0x0

    const-string v3, "com.google.android.gms.ads"

    move-object v0, p1

    move-object v4, p2

    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzvg;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;Landroid/os/IBinder;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_10
        :pswitch_11
        :pswitch_f
        :pswitch_12
        :pswitch_c
        :pswitch_12
    .end packed-switch
.end method

.method public static zza(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzcrq;)Lcom/google/android/gms/internal/ads/zzvg;
    .locals 2

    .line 71
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdok;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object p0

    .line 72
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->errorCode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->errorCode:I

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchi:Lcom/google/android/gms/internal/ads/zzvg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchi:Lcom/google/android/gms/internal/ads/zzvg;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzchh:Ljava/lang/String;

    const-string v1, "com.google.android.gms.ads"

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchi:Lcom/google/android/gms/internal/ads/zzvg;

    .line 75
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzdab:Lcom/google/android/gms/internal/ads/zzaba;

    .line 76
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 77
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 78
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrq;->zzasa()Lcom/google/android/gms/internal/ads/zzbrh;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzchj:Landroid/os/IBinder;

    :cond_2
    return-object p0
.end method

.method public static zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzvg;
    .locals 7

    .line 48
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzcrn;

    if-eqz v0, :cond_0

    .line 49
    check-cast p0, Lcom/google/android/gms/internal/ads/zzcrn;

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcmb;->zzarh()Lcom/google/android/gms/internal/ads/zzdom;

    move-result-object v0

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcrn;->zzary()Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object p0

    .line 52
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzdok;->zza(Lcom/google/android/gms/internal/ads/zzdom;Lcom/google/android/gms/internal/ads/zzvg;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object p0

    return-object p0

    .line 53
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 54
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 55
    check-cast p0, Lcom/google/android/gms/internal/ads/zzcmb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcmb;->zzarh()Lcom/google/android/gms/internal/ads/zzdom;

    move-result-object p0

    .line 56
    invoke-static {p0, v1, v1}, Lcom/google/android/gms/internal/ads/zzdok;->zza(Lcom/google/android/gms/internal/ads/zzdom;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object p0

    return-object p0

    .line 58
    :cond_1
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcmb;

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcmb;->zzarh()Lcom/google/android/gms/internal/ads/zzdom;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    .line 60
    invoke-static {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzdok;->zza(Lcom/google/android/gms/internal/ads/zzdom;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object p0

    return-object p0

    .line 62
    :cond_2
    instance-of v0, p0, Lcom/google/android/gms/ads/internal/util/zzap;

    if-eqz v0, :cond_3

    .line 63
    check-cast p0, Lcom/google/android/gms/ads/internal/util/zzap;

    .line 64
    new-instance v6, Lcom/google/android/gms/internal/ads/zzvg;

    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzap;->getErrorCode()I

    move-result v1

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzap;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdwt;->zzhm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v3, "com.google.android.gms.ads"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzvg;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;Landroid/os/IBinder;)V

    return-object v6

    .line 68
    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdom;->zzhlu:Lcom/google/android/gms/internal/ads/zzdom;

    .line 69
    invoke-static {p0, v1, v1}, Lcom/google/android/gms/internal/ads/zzdok;->zza(Lcom/google/android/gms/internal/ads/zzdom;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object p0

    return-object p0
.end method
