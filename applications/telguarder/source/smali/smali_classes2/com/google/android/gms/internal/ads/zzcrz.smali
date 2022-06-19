.class public final Lcom/google/android/gms/internal/ads/zzcrz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcrj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcrj<",
        "Lcom/google/android/gms/internal/ads/zzblg;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzfsj:Ljava/util/concurrent/Executor;

.field private final zzggk:Lcom/google/android/gms/internal/ads/zzchq;

.field private final zzgti:Lcom/google/android/gms/internal/ads/zzbkx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbkx;Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzchq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcrz;->context:Landroid/content/Context;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrz;->zzgti:Lcom/google/android/gms/internal/ads/zzbkx;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcrz;->zzfsj:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcrz;->zzggk:Lcom/google/android/gms/internal/ads/zzchq;

    return-void
.end method


# virtual methods
.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcrz;->context:Landroid/content/Context;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzhji:Ljava/util/List;

    .line 13
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/zzdnu;->zzb(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzvs;

    move-result-object p3

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrz;->zzggk:Lcom/google/android/gms/internal/ads/zzchq;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzdnl;->zzhks:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdnj;->zzess:Lcom/google/android/gms/internal/ads/zzdnb;

    .line 15
    invoke-virtual {v0, p3, p2, v1}, Lcom/google/android/gms/internal/ads/zzchq;->zza(Lcom/google/android/gms/internal/ads/zzvs;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzdnb;)Lcom/google/android/gms/internal/ads/zzbeb;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcrz;->zzgti:Lcom/google/android/gms/internal/ads/zzbkx;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzboj;

    const/4 v2, 0x0

    invoke-direct {v9, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzboj;-><init>(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbks;

    .line 17
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->getView()Landroid/view/View;

    move-result-object v3

    .line 18
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzdnu;->zzh(Lcom/google/android/gms/internal/ads/zzvs;)Lcom/google/android/gms/internal/ads/zzdmz;

    move-result-object v5

    iget v6, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzfto:I

    iget-boolean v7, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzftp:Z

    iget-boolean v8, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzftq:Z

    move-object v2, p1

    move-object v4, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzbks;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbeb;Lcom/google/android/gms/internal/ads/zzdmz;IZZ)V

    .line 19
    invoke-virtual {v1, v9, p1}, Lcom/google/android/gms/internal/ads/zzbkx;->zza(Lcom/google/android/gms/internal/ads/zzboj;Lcom/google/android/gms/internal/ads/zzbks;)Lcom/google/android/gms/internal/ads/zzbkp;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbkp;->zzahe()Lcom/google/android/gms/internal/ads/zzchs;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/ads/zzchs;->zza(Lcom/google/android/gms/internal/ads/zzbeb;Z)V

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnv;->zzagq()Lcom/google/android/gms/internal/ads/zzbsd;

    move-result-object p3

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcsb;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzcsb;-><init>(Lcom/google/android/gms/internal/ads/zzbeb;)V

    .line 23
    sget-object v2, Lcom/google/android/gms/internal/ads/zzazp;->zzeih:Lcom/google/android/gms/internal/ads/zzdzv;

    .line 24
    invoke-virtual {p3, v1, v2}, Lcom/google/android/gms/internal/ads/zzbwf;->zza(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbkp;->zzahe()Lcom/google/android/gms/internal/ads/zzchs;

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjg:Lcom/google/android/gms/internal/ads/zzdnd;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzdnd;->zzdsw:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjg:Lcom/google/android/gms/internal/ads/zzdnd;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdnd;->zzdsy:Ljava/lang/String;

    .line 27
    invoke-static {v0, p3, p2}, Lcom/google/android/gms/internal/ads/zzchs;->zza(Lcom/google/android/gms/internal/ads/zzbeb;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p2

    .line 28
    new-instance p3, Lcom/google/android/gms/internal/ads/zzcse;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ads/zzcse;-><init>(Lcom/google/android/gms/internal/ads/zzbkp;)V

    .line 29
    sget-object p1, Lcom/google/android/gms/internal/ads/zzazp;->zzeih:Lcom/google/android/gms/internal/ads/zzdzv;

    .line 30
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdzk;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdvz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;)Z
    .locals 0

    .line 7
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjg:Lcom/google/android/gms/internal/ads/zzdnd;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjg:Lcom/google/android/gms/internal/ads/zzdnd;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnd;->zzdsy:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdnl;",
            "Lcom/google/android/gms/internal/ads/zzdmw;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzblg;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdzk;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcsc;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcsc;-><init>(Lcom/google/android/gms/internal/ads/zzcrz;Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrz;->zzfsj:Ljava/util/concurrent/Executor;

    .line 10
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdzk;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdyu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method
