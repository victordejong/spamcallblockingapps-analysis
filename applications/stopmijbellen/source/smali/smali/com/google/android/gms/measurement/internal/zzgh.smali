.class final Lcom/google/android/gms/measurement/internal/zzgh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "[B>;"
    }
.end annotation


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzas;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzgm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzgm;Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgh;->zzc:Lcom/google/android/gms/measurement/internal/zzgm;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgh;->zza:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzgh;->zzb:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "_r"

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzgh;->zzc:Lcom/google/android/gms/measurement/internal/zzgm;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzgm;->zzx(Lcom/google/android/gms/measurement/internal/zzgm;)Lcom/google/android/gms/measurement/internal/zzkn;

    move-result-object v2

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzG()V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzgh;->zzc:Lcom/google/android/gms/measurement/internal/zzgm;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzgm;->zzx(Lcom/google/android/gms/measurement/internal/zzgm;)Lcom/google/android/gms/measurement/internal/zzkn;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzl()Lcom/google/android/gms/measurement/internal/zzib;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzgh;->zza:Lcom/google/android/gms/measurement/internal/zzas;

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzgh;->zzb:Ljava/lang/String;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzfu;->zzP()V

    .line 5
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 7
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v4

    .line 8
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzea;->zzU:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v4, v13, v5}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v4

    const/4 v14, 0x0

    const/4 v5, 0x0

    if-nez v4, :cond_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v2, "Generating ScionPayload disabled. packageName"

    invoke-virtual {v0, v2, v13}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v14, v5, [B

    goto/16 :goto_a

    .line 11
    :cond_0
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    const-string v6, "_iap"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    const-string v6, "_iapx"

    .line 12
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    const-string v3, "Generating a payload for this event is not available. package_name, event_name"

    .line 15
    invoke-virtual {v0, v3, v13, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 16
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfu;->zzc()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v6

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 17
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v4

    .line 18
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzai;->zzb()V

    :try_start_0
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 19
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v4

    .line 20
    invoke-virtual {v4, v13}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v3, "Log and bundle not available. package_name"

    invoke-virtual {v0, v3, v13}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v14, v5, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 23
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    goto/16 :goto_a

    .line 25
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzF()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v3, "Log and bundle disabled. package_name"

    invoke-virtual {v0, v3, v13}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v14, v5, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    goto :goto_0

    .line 28
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfw;->zzaj()Lcom/google/android/gms/internal/measurement/zzfv;

    move-result-object v15

    const/4 v11, 0x1

    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/measurement/zzfv;->zza(I)Lcom/google/android/gms/internal/measurement/zzfv;

    const-string v7, "android"

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzA(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 29
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 30
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzH(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 31
    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 32
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzF(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 33
    :cond_5
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 34
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzI(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 35
    :cond_6
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()J

    move-result-wide v7

    const-wide/32 v9, -0x80000000

    cmp-long v12, v7, v9

    if-eqz v12, :cond_7

    .line 36
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()J

    move-result-wide v7

    long-to-int v8, v7

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/zzfv;->zzab(I)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 37
    :cond_7
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzz()J

    move-result-wide v7

    invoke-virtual {v15, v7, v8}, Lcom/google/android/gms/internal/measurement/zzfv;->zzJ(J)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 38
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzD()J

    move-result-wide v7

    invoke-virtual {v15, v7, v8}, Lcom/google/android/gms/internal/measurement/zzfv;->zzal(J)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 39
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v7

    .line 40
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Ljava/lang/String;

    move-result-object v8

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzov;->zzb()Z

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 42
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v9

    .line 43
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v10

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzea;->zzag:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v9, v10, v12}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 44
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzj()Ljava/lang/String;

    move-result-object v9

    .line 45
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 46
    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    goto :goto_1

    .line 47
    :cond_8
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 48
    invoke-virtual {v15, v9}, Lcom/google/android/gms/internal/measurement/zzfv;->zzao(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    goto :goto_1

    .line 49
    :cond_9
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 50
    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/zzfv;->zzai(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    goto :goto_1

    .line 51
    :cond_a
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 52
    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    goto :goto_1

    .line 53
    :cond_b
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 54
    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/zzfv;->zzai(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 55
    :cond_c
    :goto_1
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 56
    invoke-virtual {v7, v13}, Lcom/google/android/gms/measurement/internal/zzkn;->zzt(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v7

    .line 57
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzB()J

    move-result-wide v8

    invoke-virtual {v15, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfv;->zzR(J)Lcom/google/android/gms/internal/measurement/zzfv;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 58
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfu;->zzF()Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 59
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v8

    .line 60
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfv;->zzG()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzae;->zzw(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 61
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 62
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 63
    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/measurement/zzfv;->zzaf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 64
    :cond_d
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzaf;->zzd()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/zzfv;->zzap(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 65
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzkn;->zzn()Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v8

    .line 66
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Lcom/google/android/gms/measurement/internal/zzjl;->zzc(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf;)Landroid/util/Pair;

    move-result-object v8

    .line 67
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/CharSequence;

    .line 68
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v9, :cond_e

    .line 69
    :try_start_3
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-wide v11, v3, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    .line 70
    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 71
    invoke-static {v9, v10}, Lcom/google/android/gms/measurement/internal/zzib;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 72
    invoke-virtual {v15, v9}, Lcom/google/android/gms/internal/measurement/zzfv;->zzL(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    :try_start_4
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v8, :cond_e

    .line 74
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/zzfv;->zzN(Z)Lcom/google/android/gms/internal/measurement/zzfv;

    goto :goto_2

    :catch_0
    move-exception v0

    .line 75
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 76
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v3

    .line 77
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v3

    const-string v4, "Resettable device id encryption failed"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v14, v5, [B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    goto/16 :goto_0

    .line 78
    :cond_e
    :goto_2
    :try_start_5
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 79
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfu;->zzz()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v8

    .line 80
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()V

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/zzfv;->zzC(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 81
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfu;->zzz()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v8

    .line 82
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()V

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/zzfv;->zzB(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 83
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfu;->zzz()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v8

    .line 84
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzam;->zzb()J

    move-result-wide v8

    long-to-int v9, v8

    invoke-virtual {v15, v9}, Lcom/google/android/gms/internal/measurement/zzfv;->zzE(I)Lcom/google/android/gms/internal/measurement/zzfv;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 85
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfu;->zzz()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v8

    .line 86
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzam;->zzc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/zzfv;->zzD(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 87
    :try_start_6
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzaf;->zzh()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 88
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 89
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    .line 90
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 91
    invoke-static {v7, v8}, Lcom/google/android/gms/measurement/internal/zzib;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 92
    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzP(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 93
    :cond_f
    :try_start_7
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 94
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzaa(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 95
    :cond_10
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 96
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzkn;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v8

    .line 97
    invoke-virtual {v8, v7}, Lcom/google/android/gms/measurement/internal/zzai;->zzl(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 98
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/zzks;

    const-string v11, "_lte"

    .line 99
    iget-object v12, v10, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    goto :goto_3

    :cond_12
    move-object v10, v14

    :goto_3
    const-wide/16 v24, 0x0

    if-eqz v10, :cond_13

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    if-nez v9, :cond_14

    :cond_13
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzks;

    const-string v19, "auto"

    const-string v20, "_lte"

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 100
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfu;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v10

    .line 101
    invoke-interface {v10}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v21

    .line 102
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v17, v9

    move-object/from16 v18, v7

    invoke-direct/range {v17 .. v23}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 103
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 104
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzkn;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v7

    .line 105
    invoke-virtual {v7, v9}, Lcom/google/android/gms/measurement/internal/zzai;->zzj(Lcom/google/android/gms/measurement/internal/zzks;)Z

    :cond_14
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 106
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzkn;->zzm()Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object v7

    iget-object v9, v7, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 107
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v9

    .line 108
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v9

    const-string v10, "Checking account type status for ad personalization signals"

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    iget-object v9, v7, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 109
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zzz()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v9

    .line 110
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzam;->zzf()Z

    move-result v9

    const-wide/16 v10, 0x1

    if-eqz v9, :cond_17

    .line 111
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v9

    .line 112
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Z

    move-result v12

    if-eqz v12, :cond_17

    iget-object v12, v7, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 114
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzkn;->zzf()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v12

    .line 115
    invoke-virtual {v12, v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzf(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_17

    iget-object v12, v7, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 116
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v12

    .line 117
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v12

    const-string v14, "Turning off ad personalization due to account type"

    invoke-virtual {v12, v14}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    .line 118
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 119
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_16

    const-string v14, "_npa"

    .line 120
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, Lcom/google/android/gms/measurement/internal/zzks;

    .line 121
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 122
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_15
    const/4 v5, 0x0

    goto :goto_4

    :cond_16
    :goto_5
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzks;

    const-string v19, "auto"

    const-string v20, "_npa"

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 123
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v7

    .line 124
    invoke-interface {v7}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v21

    .line 125
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v17, v5

    move-object/from16 v18, v9

    invoke-direct/range {v17 .. v23}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 126
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_17
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/google/android/gms/internal/measurement/zzgh;

    const/4 v7, 0x0

    .line 128
    :goto_6
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_18

    .line 129
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgh;->zzj()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v9

    .line 130
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/measurement/internal/zzks;

    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Ljava/lang/String;

    invoke-virtual {v9, v12}, Lcom/google/android/gms/internal/measurement/zzgg;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgg;

    .line 131
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/measurement/internal/zzks;

    iget-wide v10, v12, Lcom/google/android/gms/measurement/internal/zzks;->zzd:J

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzgg;->zza(J)Lcom/google/android/gms/internal/measurement/zzgg;

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 132
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzkn;->zzm()Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object v10

    .line 133
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/zzks;

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    invoke-virtual {v10, v9, v11}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc(Lcom/google/android/gms/internal/measurement/zzgg;Ljava/lang/Object;)V

    .line 134
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzgh;

    aput-object v9, v5, v7

    add-int/lit8 v7, v7, 0x1

    const-wide/16 v10, 0x1

    goto :goto_6

    .line 135
    :cond_18
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/google/android/gms/internal/measurement/zzfv;->zzp(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 136
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzen;->zza(Lcom/google/android/gms/measurement/internal/zzas;)Lcom/google/android/gms/measurement/internal/zzen;

    move-result-object v5

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 137
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v7

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/zzen;->zzd:Landroid/os/Bundle;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 138
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzkn;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v9

    .line 139
    invoke-virtual {v9, v13}, Lcom/google/android/gms/measurement/internal/zzai;->zzK(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 140
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzku;->zzH(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 141
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 142
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v8

    .line 143
    invoke-virtual {v8, v13}, Lcom/google/android/gms/measurement/internal/zzae;->zzd(Ljava/lang/String;)I

    move-result v8

    .line 144
    invoke-virtual {v7, v5, v8}, Lcom/google/android/gms/measurement/internal/zzku;->zzG(Lcom/google/android/gms/measurement/internal/zzen;I)V

    iget-object v14, v5, Lcom/google/android/gms/measurement/internal/zzen;->zzd:Landroid/os/Bundle;

    const-string v5, "_c"

    const-wide/16 v7, 0x1

    .line 145
    invoke-virtual {v14, v5, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 146
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v5

    .line 147
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v5

    const-string v7, "Marking in-app purchase as real-time"

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    const-wide/16 v7, 0x1

    .line 148
    invoke-virtual {v14, v0, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v5, "_o"

    .line 149
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    invoke-virtual {v14, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 150
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v5

    .line 151
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfv;->zzG()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/zzku;->zzT(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 152
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v5

    const-wide/16 v7, 0x1

    .line 153
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "_dbg"

    invoke-virtual {v5, v14, v8, v7}, Lcom/google/android/gms/measurement/internal/zzku;->zzL(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 154
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v5

    .line 155
    invoke-virtual {v5, v14, v0, v7}, Lcom/google/android/gms/measurement/internal/zzku;->zzL(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_19
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 156
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    .line 157
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    invoke-virtual {v0, v13, v5}, Lcom/google/android/gms/measurement/internal/zzai;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v0

    if-nez v0, :cond_1a

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzao;

    .line 158
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    iget-wide v11, v3, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v17, 0x0

    move-wide/from16 v21, v11

    move-wide/from16 v11, v17

    const-wide/16 v16, 0x0

    move-object/from16 v28, v15

    move-wide/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v23, v4

    move-object v4, v0

    move-object/from16 v27, v5

    move-object v5, v13

    move-object/from16 v29, v6

    move-object/from16 v6, v27

    move-object/from16 v27, v13

    move-object/from16 v30, v14

    const/16 v26, 0x0

    move-wide/from16 v13, v21

    .line 159
    invoke-direct/range {v4 .. v20}, Lcom/google/android/gms/measurement/internal/zzao;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-wide/from16 v11, v24

    goto :goto_7

    :cond_1a
    move-object/from16 v23, v4

    move-object/from16 v29, v6

    move-object/from16 v27, v13

    move-object/from16 v30, v14

    move-object/from16 v28, v15

    const/16 v26, 0x0

    .line 160
    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/zzao;->zzf:J

    .line 161
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    .line 162
    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzao;->zza(J)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v0

    move-wide v11, v4

    .line 163
    :goto_7
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 164
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v4

    .line 165
    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzh(Lcom/google/android/gms/measurement/internal/zzao;)V

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzan;

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 166
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    move-object v4, v14

    move-object/from16 v7, v27

    move-object/from16 v13, v30

    invoke-direct/range {v4 .. v13}, Lcom/google/android/gms/measurement/internal/zzan;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 167
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzk()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object v4

    iget-wide v5, v14, Lcom/google/android/gms/measurement/internal/zzan;->zzd:J

    .line 168
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfn;->zzo(J)Lcom/google/android/gms/internal/measurement/zzfn;

    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Ljava/lang/String;

    .line 169
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzfn;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfn;

    iget-wide v5, v14, Lcom/google/android/gms/measurement/internal/zzan;->zze:J

    .line 170
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfn;->zzq(J)Lcom/google/android/gms/internal/measurement/zzfn;

    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/zzan;->zzf:Lcom/google/android/gms/measurement/internal/zzaq;

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzap;

    .line 171
    invoke-direct {v6, v5}, Lcom/google/android/gms/measurement/internal/zzap;-><init>(Lcom/google/android/gms/measurement/internal/zzaq;)V

    .line 172
    :cond_1b
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 173
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzap;->zza()Ljava/lang/String;

    move-result-object v5

    .line 174
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs;->zzn()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/measurement/zzfr;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    iget-object v8, v14, Lcom/google/android/gms/measurement/internal/zzan;->zzf:Lcom/google/android/gms/measurement/internal/zzaq;

    .line 175
    invoke-virtual {v8, v5}, Lcom/google/android/gms/measurement/internal/zzaq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1b

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 176
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzkn;->zzm()Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object v8

    .line 177
    invoke-virtual {v8, v7, v5}, Lcom/google/android/gms/measurement/internal/zzkp;->zzd(Lcom/google/android/gms/internal/measurement/zzfr;Ljava/lang/Object;)V

    .line 178
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/measurement/zzfn;->zzg(Lcom/google/android/gms/internal/measurement/zzfr;)Lcom/google/android/gms/internal/measurement/zzfn;

    goto :goto_8

    :cond_1c
    move-object/from16 v5, v28

    .line 179
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzf(Lcom/google/android/gms/internal/measurement/zzfn;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 180
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgb;->zza()Lcom/google/android/gms/internal/measurement/zzfx;

    move-result-object v6

    .line 181
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfq;->zza()Lcom/google/android/gms/internal/measurement/zzfp;

    move-result-object v7

    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/zzao;->zzc:J

    .line 182
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfp;->zzb(J)Lcom/google/android/gms/internal/measurement/zzfp;

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 183
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzfp;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfp;

    .line 184
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzfx;->zza(Lcom/google/android/gms/internal/measurement/zzfp;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 185
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/zzfv;->zzaj(Lcom/google/android/gms/internal/measurement/zzfx;)Lcom/google/android/gms/internal/measurement/zzfv;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 186
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzk()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v6

    .line 187
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v7

    .line 188
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 189
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfv;->zzj()Ljava/util/List;

    move-result-object v9

    .line 190
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 191
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 192
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzy;->zzb(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 193
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzfv;->zzY(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 194
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfn;->zzm()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 195
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzt(J)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 196
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzv(J)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 197
    :cond_1d
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/zzg;->zzr()J

    move-result-wide v3

    cmp-long v0, v3, v24

    if-eqz v0, :cond_1e

    .line 198
    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzy(J)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 199
    :cond_1e
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/zzg;->zzp()J

    move-result-wide v6

    cmp-long v8, v6, v24

    if-eqz v8, :cond_1f

    .line 200
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzw(J)Lcom/google/android/gms/internal/measurement/zzfv;

    goto :goto_9

    :cond_1f
    if-eqz v0, :cond_20

    .line 201
    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzw(J)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 202
    :cond_20
    :goto_9
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/zzg;->zzN()V

    .line 203
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/zzg;->zzI()J

    move-result-wide v3

    long-to-int v0, v3

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzfv;->zzS(I)Lcom/google/android/gms/internal/measurement/zzfv;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 204
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzae;->zzf()J

    const-wide/32 v3, 0xa414

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzK(J)Lcom/google/android/gms/internal/measurement/zzfv;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 206
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 207
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzr(J)Lcom/google/android/gms/internal/measurement/zzfv;

    const/4 v0, 0x1

    .line 208
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzfv;->zzX(Z)Lcom/google/android/gms/internal/measurement/zzfv;

    move-object/from16 v0, v29

    .line 209
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/measurement/zzft;->zzb(Lcom/google/android/gms/internal/measurement/zzfv;)Lcom/google/android/gms/internal/measurement/zzft;

    .line 210
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfv;->zzs()J

    move-result-wide v3

    move-object/from16 v6, v23

    invoke-virtual {v6, v3, v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzq(J)V

    .line 211
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfv;->zzu()J

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzs(J)V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 212
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v3

    .line 213
    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzai;->zzt(Lcom/google/android/gms/measurement/internal/zzg;)V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 214
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v3

    .line 215
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 216
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v3

    .line 217
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    :try_start_8
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 218
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzm()Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object v3

    .line 219
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzio;->zzbp()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzs([B)[B

    move-result-object v14
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    .line 220
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 221
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 222
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    invoke-static/range {v27 .. v27}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Data loss. Failed to bundle and serialize. appId"

    .line 223
    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v14, v26

    goto :goto_a

    :catch_2
    move-exception v0

    .line 224
    :try_start_9
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 225
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v3

    .line 226
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v3

    const-string v4, "app instance id encryption failed"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    new-array v14, v3, [B
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    goto/16 :goto_0

    :goto_a
    return-object v14

    :catchall_0
    move-exception v0

    .line 227
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 228
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v2

    .line 229
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 230
    throw v0
.end method
