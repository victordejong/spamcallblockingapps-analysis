.class public Lcom/google/android/gms/internal/ads/zzcvj;
.super Lcom/google/android/gms/internal/ads/zzcwl;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private zzgvo:Lcom/google/android/gms/internal/ads/zzbyk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbrl;Lcom/google/android/gms/internal/ads/zzbsd;Lcom/google/android/gms/internal/ads/zzbsm;Lcom/google/android/gms/internal/ads/zzbsw;Lcom/google/android/gms/internal/ads/zzbrt;Lcom/google/android/gms/internal/ads/zzbvt;Lcom/google/android/gms/internal/ads/zzbyp;Lcom/google/android/gms/internal/ads/zzbtj;Lcom/google/android/gms/internal/ads/zzbyk;Lcom/google/android/gms/internal/ads/zzbvm;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p7

    move-object/from16 v8, p10

    move-object v9, p5

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzcwl;-><init>(Lcom/google/android/gms/internal/ads/zzbrl;Lcom/google/android/gms/internal/ads/zzbsd;Lcom/google/android/gms/internal/ads/zzbsm;Lcom/google/android/gms/internal/ads/zzbsw;Lcom/google/android/gms/internal/ads/zzbvt;Lcom/google/android/gms/internal/ads/zzbtj;Lcom/google/android/gms/internal/ads/zzbyp;Lcom/google/android/gms/internal/ads/zzbvm;Lcom/google/android/gms/internal/ads/zzbrt;)V

    move-object/from16 v1, p9

    .line 2
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcvj;->zzgvo:Lcom/google/android/gms/internal/ads/zzbyk;

    return-void
.end method


# virtual methods
.method public final onVideoEnd()V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvj;->zzgvo:Lcom/google/android/gms/internal/ads/zzbyk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyk;->zzud()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzavl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzcwl;->zza(Lcom/google/android/gms/internal/ads/zzavl;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvj;->zzgvo:Lcom/google/android/gms/internal/ads/zzbyk;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzavj;

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzavl;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzavl;->getAmount()I

    move-result p1

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzavj;-><init>(Ljava/lang/String;I)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbyk;->zza(Lcom/google/android/gms/internal/ads/zzavj;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzavj;)V
    .locals 1

    .line 13
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzcwl;->zzb(Lcom/google/android/gms/internal/ads/zzavj;)V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvj;->zzgvo:Lcom/google/android/gms/internal/ads/zzbyk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbyk;->zza(Lcom/google/android/gms/internal/ads/zzavj;)V

    return-void
.end method

.method public final zzve()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvj;->zzgvo:Lcom/google/android/gms/internal/ads/zzbyk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyk;->zzuc()V

    return-void
.end method

.method public final zzvf()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvj;->zzgvo:Lcom/google/android/gms/internal/ads/zzbyk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyk;->zzud()V

    return-void
.end method
