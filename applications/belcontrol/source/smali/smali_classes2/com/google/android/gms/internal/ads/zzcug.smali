.class public final Lcom/google/android/gms/internal/ads/zzcug;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcrr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcrr<",
        "Lcom/google/android/gms/internal/ads/zzcbu;",
        "Lcom/google/android/gms/internal/ads/zzdog;",
        "Lcom/google/android/gms/internal/ads/zzctd;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzfsj:Ljava/util/concurrent/Executor;

.field private final zzgun:Lcom/google/android/gms/internal/ads/zzcau;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcau;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcug;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzgun:Lcom/google/android/gms/internal/ads/zzcau;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzfsj:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzdnl;I)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdnl;->zzhkr:Lcom/google/android/gms/internal/ads/zzdng;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdng;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdnp;->zzhky:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzcrl;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdnl;",
            "Lcom/google/android/gms/internal/ads/zzdmw;",
            "Lcom/google/android/gms/internal/ads/zzcrl<",
            "Lcom/google/android/gms/internal/ads/zzdog;",
            "Lcom/google/android/gms/internal/ads/zzctd;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzcrl;->zzdnl:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdog;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcug;->context:Landroid/content/Context;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdnl;->zzhkr:Lcom/google/android/gms/internal/ads/zzdng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdng;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdnp;->zzhkw:Lcom/google/android/gms/internal/ads/zzvl;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjj:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjg:Lcom/google/android/gms/internal/ads/zzdnd;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzbh;->zza(Lcom/google/android/gms/ads/internal/util/zzbm;)Ljava/lang/String;

    move-result-object v5

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzcrl;->zzgsu:Lcom/google/android/gms/internal/ads/zzbsu;

    move-object v6, p2

    check-cast v6, Lcom/google/android/gms/internal/ads/zzank;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnl;->zzhkr:Lcom/google/android/gms/internal/ads/zzdng;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdng;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzdnp;->zzdoe:Lcom/google/android/gms/internal/ads/zzaeh;

    iget-object v8, p1, Lcom/google/android/gms/internal/ads/zzdnp;->zzhky:Ljava/util/ArrayList;

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzdog;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvl;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzank;Lcom/google/android/gms/internal/ads/zzaeh;Ljava/util/List;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzcrl;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzcrl;->zzdnl:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdog;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdog;->zzuv()Lcom/google/android/gms/internal/ads/zzanr;

    move-result-object v0

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzcrl;->zzdnl:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdog;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdog;->zzuw()Lcom/google/android/gms/internal/ads/zzans;

    move-result-object v1

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/zzcrl;->zzdnl:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdog;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdog;->zzvb()Lcom/google/android/gms/internal/ads/zzanx;

    move-result-object v2

    const/4 v3, 0x6

    if-eqz v2, :cond_0

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzcug;->zza(Lcom/google/android/gms/internal/ads/zzdnl;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzccd;->zzb(Lcom/google/android/gms/internal/ads/zzanx;)Lcom/google/android/gms/internal/ads/zzccd;

    move-result-object v3

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzcug;->zza(Lcom/google/android/gms/internal/ads/zzdnl;I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzccd;->zzb(Lcom/google/android/gms/internal/ads/zzanr;)Lcom/google/android/gms/internal/ads/zzccd;

    move-result-object v3

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const/4 v4, 0x2

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/zzcug;->zza(Lcom/google/android/gms/internal/ads/zzdnl;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzccd;->zza(Lcom/google/android/gms/internal/ads/zzanr;)Lcom/google/android/gms/internal/ads/zzccd;

    move-result-object v3

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzcug;->zza(Lcom/google/android/gms/internal/ads/zzdnl;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzccd;->zzb(Lcom/google/android/gms/internal/ads/zzans;)Lcom/google/android/gms/internal/ads/zzccd;

    move-result-object v3

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_5

    const/4 v3, 0x1

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzcug;->zza(Lcom/google/android/gms/internal/ads/zzdnl;I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzccd;->zza(Lcom/google/android/gms/internal/ads/zzans;)Lcom/google/android/gms/internal/ads/zzccd;

    move-result-object v3

    :goto_0
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzdnl;->zzhkr:Lcom/google/android/gms/internal/ads/zzdng;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzdng;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzdnp;->zzhky:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzccd;->zzanu()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzgun:Lcom/google/android/gms/internal/ads/zzcau;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzboj;

    iget-object v6, p3, Lcom/google/android/gms/internal/ads/zzcrl;->zzcio:Ljava/lang/String;

    invoke-direct {v5, p1, p2, v6}, Lcom/google/android/gms/internal/ads/zzboj;-><init>(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzccp;

    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/ads/zzccp;-><init>(Lcom/google/android/gms/internal/ads/zzccd;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcee;

    invoke-direct {p2, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzcee;-><init>(Lcom/google/android/gms/internal/ads/zzans;Lcom/google/android/gms/internal/ads/zzanr;Lcom/google/android/gms/internal/ads/zzanx;)V

    invoke-virtual {v4, v5, p1, p2}, Lcom/google/android/gms/internal/ads/zzcau;->zza(Lcom/google/android/gms/internal/ads/zzboj;Lcom/google/android/gms/internal/ads/zzccp;Lcom/google/android/gms/internal/ads/zzcee;)Lcom/google/android/gms/internal/ads/zzcci;

    move-result-object p1

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzcrl;->zzgsu:Lcom/google/android/gms/internal/ads/zzbsu;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzctd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnv;->zzags()Lcom/google/android/gms/internal/ads/zzcwl;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzctd;->zzb(Lcom/google/android/gms/internal/ads/zzank;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnv;->zzagn()Lcom/google/android/gms/internal/ads/zzbsg;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbjo;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzcrl;->zzdnl:Ljava/lang/Object;

    check-cast p3, Lcom/google/android/gms/internal/ads/zzdog;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/ads/zzbjo;-><init>(Lcom/google/android/gms/internal/ads/zzdog;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzfsj:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzbwf;->zza(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzccg;->zzagu()Lcom/google/android/gms/internal/ads/zzcbu;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcva;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdom;->zzhlu:Lcom/google/android/gms/internal/ads/zzdom;

    const-string p3, "No corresponding native ad listener"

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcva;-><init>(Lcom/google/android/gms/internal/ads/zzdom;Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcva;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdom;->zzhlu:Lcom/google/android/gms/internal/ads/zzdom;

    const-string p3, "No native ad mappers"

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcva;-><init>(Lcom/google/android/gms/internal/ads/zzdom;Ljava/lang/String;)V

    throw p1
.end method
