.class public final Lcom/google/android/gms/internal/ads/zzeig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeht;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeht<",
        "Lcom/google/android/gms/internal/ads/zzcyp;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcyk;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdwj;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfef;

.field private final zze:Ljava/util/concurrent/Executor;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzcjf;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzbrw;

.field private final zzh:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcyk;Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdwj;Lcom/google/android/gms/internal/ads/zzfef;Lcom/google/android/gms/internal/ads/zzcjf;Lcom/google/android/gms/internal/ads/zzbrw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeig;->zzb:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeig;->zza:Lcom/google/android/gms/internal/ads/zzcyk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeig;->zze:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeig;->zzc:Lcom/google/android/gms/internal/ads/zzdwj;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeig;->zzd:Lcom/google/android/gms/internal/ads/zzfef;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeig;->zzf:Lcom/google/android/gms/internal/ads/zzcjf;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzeig;->zzg:Lcom/google/android/gms/internal/ads/zzbrw;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzblj;->zzgz:Lcom/google/android/gms/internal/ads/zzblb;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgq;->zzc()Lcom/google/android/gms/internal/ads/zzblh;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzblh;->zzb(Lcom/google/android/gms/internal/ads/zzblb;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzeig;->zzh:Z

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfdz;Lcom/google/android/gms/internal/ads/zzfdn;)Lcom/google/android/gms/internal/ads/zzfxa;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfdz;",
            "Lcom/google/android/gms/internal/ads/zzfdn;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfxa<",
            "Lcom/google/android/gms/internal/ads/zzcyp;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdwn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdwn;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfwq;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxa;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeie;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzeie;-><init>(Lcom/google/android/gms/internal/ads/zzeig;Lcom/google/android/gms/internal/ads/zzfdn;Lcom/google/android/gms/internal/ads/zzfdz;Lcom/google/android/gms/internal/ads/zzdwn;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeig;->zze:Ljava/util/concurrent/Executor;

    .line 2
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzfwq;->zzn(Lcom/google/android/gms/internal/ads/zzfxa;Lcom/google/android/gms/internal/ads/zzfvx;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfxa;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzeif;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzeif;-><init>(Lcom/google/android/gms/internal/ads/zzdwn;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeig;->zze:Ljava/util/concurrent/Executor;

    .line 3
    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfxa;->zzc(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfdz;Lcom/google/android/gms/internal/ads/zzfdn;)Z
    .locals 0

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfdn;->zzt:Lcom/google/android/gms/internal/ads/zzfds;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfds;->zza:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzfdn;Lcom/google/android/gms/internal/ads/zzfdz;Lcom/google/android/gms/internal/ads/zzdwn;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxa;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p2

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzeig;->zzc:Lcom/google/android/gms/internal/ads/zzdwj;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzeig;->zzd:Lcom/google/android/gms/internal/ads/zzfef;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfef;->zze:Lcom/google/android/gms/internal/ads/zzbfi;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzfdz;->zzb:Lcom/google/android/gms/internal/ads/zzfdy;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfdy;->zzb:Lcom/google/android/gms/internal/ads/zzfdq;

    .line 2
    invoke-virtual {v2, v3, v9, v4}, Lcom/google/android/gms/internal/ads/zzdwj;->zza(Lcom/google/android/gms/internal/ads/zzbfi;Lcom/google/android/gms/internal/ads/zzfdn;Lcom/google/android/gms/internal/ads/zzfdq;)Lcom/google/android/gms/internal/ads/zzcop;

    move-result-object v10

    .line 3
    iget-boolean v2, v9, Lcom/google/android/gms/internal/ads/zzfdn;->zzT:Z

    invoke-interface {v10, v2}, Lcom/google/android/gms/internal/ads/zzcop;->zzab(Z)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzeig;->zzb:Landroid/content/Context;

    .line 4
    move-object v3, v10

    check-cast v3, Landroid/view/View;

    move-object/from16 v4, p3

    .line 5
    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzdwn;->zza(Landroid/content/Context;Landroid/view/View;)V

    new-instance v11, Lcom/google/android/gms/internal/ads/zzcjr;

    .line 6
    invoke-direct {v11}, Lcom/google/android/gms/internal/ads/zzcjr;-><init>()V

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzeig;->zza:Lcom/google/android/gms/internal/ads/zzcyk;

    new-instance v13, Lcom/google/android/gms/internal/ads/zzdbk;

    const/4 v14, 0x0

    invoke-direct {v13, v1, v9, v14}, Lcom/google/android/gms/internal/ads/zzdbk;-><init>(Lcom/google/android/gms/internal/ads/zzfdz;Lcom/google/android/gms/internal/ads/zzfdn;Ljava/lang/String;)V

    new-instance v15, Lcom/google/android/gms/internal/ads/zzdna;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzeii;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzeig;->zzf:Lcom/google/android/gms/internal/ads/zzcjf;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzeig;->zzd:Lcom/google/android/gms/internal/ads/zzfef;

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzeig;->zzh:Z

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzeig;->zzg:Lcom/google/android/gms/internal/ads/zzbrw;

    move-object v1, v8

    move-object v3, v11

    move-object/from16 v4, p1

    move-object/from16 v16, v5

    move-object v5, v10

    move-object v14, v8

    move-object/from16 v8, v16

    .line 7
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzeii;-><init>(Lcom/google/android/gms/internal/ads/zzcjf;Lcom/google/android/gms/internal/ads/zzfxa;Lcom/google/android/gms/internal/ads/zzfdn;Lcom/google/android/gms/internal/ads/zzcop;Lcom/google/android/gms/internal/ads/zzfef;ZLcom/google/android/gms/internal/ads/zzbrw;)V

    invoke-direct {v15, v14, v10}, Lcom/google/android/gms/internal/ads/zzdna;-><init>(Lcom/google/android/gms/internal/ads/zzdob;Lcom/google/android/gms/internal/ads/zzcop;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcyi;

    iget v2, v9, Lcom/google/android/gms/internal/ads/zzfdn;->zzX:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcyi;-><init>(I)V

    .line 8
    invoke-virtual {v12, v13, v15, v1}, Lcom/google/android/gms/internal/ads/zzcyk;->zza(Lcom/google/android/gms/internal/ads/zzdbk;Lcom/google/android/gms/internal/ads/zzdna;Lcom/google/android/gms/internal/ads/zzcyi;)Lcom/google/android/gms/internal/ads/zzcyh;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcyh;->zzj()Lcom/google/android/gms/internal/ads/zzdwi;

    move-result-object v2

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzeig;->zzh:Z

    if-eqz v3, :cond_0

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzeig;->zzg:Lcom/google/android/gms/internal/ads/zzbrw;

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v2, v10, v3, v14}, Lcom/google/android/gms/internal/ads/zzdwi;->zzi(Lcom/google/android/gms/internal/ads/zzcop;ZLcom/google/android/gms/internal/ads/zzbrw;)V

    .line 11
    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/zzcjr;->zzd(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdaw;->zzc()Lcom/google/android/gms/internal/ads/zzdfj;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzeic;

    invoke-direct {v3, v10}, Lcom/google/android/gms/internal/ads/zzeic;-><init>(Lcom/google/android/gms/internal/ads/zzcop;)V

    .line 13
    sget-object v4, Lcom/google/android/gms/internal/ads/zzcjm;->zzf:Lcom/google/android/gms/internal/ads/zzfxb;

    .line 14
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdkb;->zzj(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcyh;->zzj()Lcom/google/android/gms/internal/ads/zzdwi;

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzfdn;->zzt:Lcom/google/android/gms/internal/ads/zzfds;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzfds;->zzb:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfds;->zza:Ljava/lang/String;

    .line 16
    invoke-static {v10, v3, v2}, Lcom/google/android/gms/internal/ads/zzdwi;->zzj(Lcom/google/android/gms/internal/ads/zzcop;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfxa;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzeid;

    invoke-direct {v3, v0, v10, v9, v1}, Lcom/google/android/gms/internal/ads/zzeid;-><init>(Lcom/google/android/gms/internal/ads/zzeig;Lcom/google/android/gms/internal/ads/zzcop;Lcom/google/android/gms/internal/ads/zzfdn;Lcom/google/android/gms/internal/ads/zzcyh;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeig;->zze:Ljava/util/concurrent/Executor;

    .line 17
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzfwq;->zzm(Lcom/google/android/gms/internal/ads/zzfxa;Lcom/google/android/gms/internal/ads/zzfpv;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfxa;

    move-result-object v1

    return-object v1
.end method
