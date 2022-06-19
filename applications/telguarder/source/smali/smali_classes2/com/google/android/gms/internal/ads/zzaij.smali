.class public final Lcom/google/android/gms/internal/ads/zzaij;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaif;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/ads/zzvc;",
        ":",
        "Lcom/google/android/gms/internal/ads/zzbdu;",
        ":",
        "Lcom/google/android/gms/internal/ads/zzbeb;",
        ":",
        "Lcom/google/android/gms/internal/ads/zzaki;",
        ":",
        "Lcom/google/android/gms/internal/ads/zzbfa;",
        ":",
        "Lcom/google/android/gms/internal/ads/zzbfd;",
        ":",
        "Ljava/lang/Object;",
        ":",
        "Lcom/google/android/gms/internal/ads/zzbfh;",
        ":",
        "Lcom/google/android/gms/internal/ads/zzbfm;",
        ":",
        "Lcom/google/android/gms/internal/ads/zzbfo;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzaif<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zzdhw:Lcom/google/android/gms/ads/internal/zza;

.field private final zzdhx:Lcom/google/android/gms/internal/ads/zzaqg;

.field private final zzdib:Lcom/google/android/gms/internal/ads/zzckn;

.field private final zzdic:Lcom/google/android/gms/internal/ads/zzdrz;

.field private final zzdid:Lcom/google/android/gms/internal/ads/zzazo;

.field private final zzdie:Lcom/google/android/gms/internal/ads/zzcqr;

.field private zzdif:Lcom/google/android/gms/ads/internal/overlay/zzt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzaqg;Lcom/google/android/gms/internal/ads/zzcqr;Lcom/google/android/gms/internal/ads/zzckn;Lcom/google/android/gms/internal/ads/zzdrz;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaij;->zzdif:Lcom/google/android/gms/ads/internal/overlay/zzt;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaij;->zzdhw:Lcom/google/android/gms/ads/internal/zza;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaij;->zzdhx:Lcom/google/android/gms/internal/ads/zzaqg;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaij;->zzdie:Lcom/google/android/gms/internal/ads/zzcqr;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaij;->zzdib:Lcom/google/android/gms/internal/ads/zzckn;

    .line 7
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzaij;->zzdic:Lcom/google/android/gms/internal/ads/zzdrz;

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzazo;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzazo;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaij;->zzdid:Lcom/google/android/gms/internal/ads/zzazo;

    return-void
.end method

.method static zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzei;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;
    .locals 1

    if-nez p1, :cond_0

    return-object p2

    .line 80
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzei;->zzc(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p1, p2, p0, p3, p4}, Lcom/google/android/gms/internal/ads/zzei;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 86
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/internal/ads/zzayo;

    move-result-object p1

    const-string p3, "OpenGmsgHandler.maybeAddClickSignalsToUri"

    invoke-virtual {p1, p0, p3}, Lcom/google/android/gms/internal/ads/zzayo;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    :catch_1
    :cond_1
    :goto_0
    return-object p2
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzaij;Lcom/google/android/gms/internal/ads/zzacr;)V
    .locals 0

    .line 253
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaij;->zzb(Lcom/google/android/gms/internal/ads/zzacr;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzvc;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v9, p4

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzba(Landroid/content/Context;)Z

    move-result v7

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbd(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/util/zzbg;

    move-result-object v8

    .line 12
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaij;->zzdib:Lcom/google/android/gms/internal/ads/zzckn;

    if-eqz v2, :cond_0

    .line 13
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaij;->zzdic:Lcom/google/android/gms/internal/ads/zzdrz;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaij;->zzdie:Lcom/google/android/gms/internal/ads/zzcqr;

    const-string v6, "offline_open"

    move-object v1, p2

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcrb;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzckn;Lcom/google/android/gms/internal/ads/zzdrz;Lcom/google/android/gms/internal/ads/zzcqr;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbeb;

    .line 15
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacv()Lcom/google/android/gms/internal/ads/zzbft;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbft;->zzaeo()Z

    move-result v2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzabe()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v7, :cond_2

    .line 17
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaij;->zzdie:Lcom/google/android/gms/internal/ads/zzcqr;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaij;->zzdid:Lcom/google/android/gms/internal/ads/zzazo;

    invoke-virtual {v1, v2, v9}, Lcom/google/android/gms/internal/ads/zzcqr;->zzb(Lcom/google/android/gms/internal/ads/zzazo;Ljava/lang/String;)V

    return v11

    .line 19
    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbc(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v8, :cond_6

    if-nez v2, :cond_6

    sget-object v3, Lcom/google/android/gms/internal/ads/zzabp;->zzdae:Lcom/google/android/gms/internal/ads/zzaba;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v3

    .line 22
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 38
    :cond_3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacv()Lcom/google/android/gms/internal/ads/zzbft;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbft;->zzaeo()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 40
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzabe()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaij;->zzdie:Lcom/google/android/gms/internal/ads/zzcqr;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaij;->zzdib:Lcom/google/android/gms/internal/ads/zzckn;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaij;->zzdic:Lcom/google/android/gms/internal/ads/zzdrz;

    move-object v3, v8

    move-object/from16 v7, p4

    move-object v8, p3

    .line 41
    invoke-static/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzcrb;->zza(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/ads/internal/util/zzbg;Lcom/google/android/gms/internal/ads/zzcqr;Lcom/google/android/gms/internal/ads/zzckn;Lcom/google/android/gms/internal/ads/zzdrz;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 42
    :cond_4
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbfh;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaij;->zzdie:Lcom/google/android/gms/internal/ads/zzcqr;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaij;->zzdib:Lcom/google/android/gms/internal/ads/zzckn;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaij;->zzdic:Lcom/google/android/gms/internal/ads/zzdrz;

    .line 43
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkt()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/util/zzr;->zzzc()I

    move-result v11

    move-object v2, v8

    move-object/from16 v6, p4

    move-object v7, p3

    move v8, v11

    .line 44
    invoke-interface/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzbfh;->zza(Lcom/google/android/gms/ads/internal/util/zzbg;Lcom/google/android/gms/internal/ads/zzcqr;Lcom/google/android/gms/internal/ads/zzckn;Lcom/google/android/gms/internal/ads/zzdrz;Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    :goto_1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaij;->zzdib:Lcom/google/android/gms/internal/ads/zzckn;

    if-eqz v2, :cond_5

    .line 46
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaij;->zzdic:Lcom/google/android/gms/internal/ads/zzdrz;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaij;->zzdie:Lcom/google/android/gms/internal/ads/zzcqr;

    const-string v6, "dialog_impression"

    move-object v1, p2

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcrb;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzckn;Lcom/google/android/gms/internal/ads/zzdrz;Lcom/google/android/gms/internal/ads/zzcqr;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzvc;->onAdClicked()V

    return v10

    .line 23
    :cond_6
    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaij;->zzdie:Lcom/google/android/gms/internal/ads/zzcqr;

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzcqr;->zzgm(Ljava/lang/String;)V

    .line 24
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaij;->zzdib:Lcom/google/android/gms/internal/ads/zzckn;

    if-eqz v1, :cond_b

    .line 25
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbc(Landroid/content/Context;)Z

    move-result v1

    const-string v3, "dialog_not_shown_reason"

    if-nez v1, :cond_7

    const-string v1, "notifications_disabled"

    .line 27
    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    if-nez v8, :cond_8

    const-string v1, "work_manager_unavailable"

    .line 29
    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 30
    :cond_8
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabp;->zzdae:Lcom/google/android/gms/internal/ads/zzaba;

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "notification_flow_disabled"

    .line 33
    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    if-eqz v2, :cond_a

    const-string v1, "fullscreen_no_activity"

    .line 35
    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_a
    :goto_3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaij;->zzdib:Lcom/google/android/gms/internal/ads/zzckn;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaij;->zzdic:Lcom/google/android/gms/internal/ads/zzdrz;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaij;->zzdie:Lcom/google/android/gms/internal/ads/zzcqr;

    const-string v6, "dialog_not_shown"

    move-object v1, p2

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzcrb;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzckn;Lcom/google/android/gms/internal/ads/zzdrz;Lcom/google/android/gms/internal/ads/zzcqr;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_b
    return v11
.end method

.method private final zzac(Z)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaij;->zzdhx:Lcom/google/android/gms/internal/ads/zzaqg;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaqg;->zzad(Z)V

    :cond_0
    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzacr;)V
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaij;->zzdib:Lcom/google/android/gms/internal/ads/zzckn;

    if-nez v0, :cond_0

    return-void

    .line 51
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzdal:Lcom/google/android/gms/internal/ads/zzaba;

    .line 52
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "cct_open_status"

    const-string v2, "cct_action"

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaij;->zzdic:Lcom/google/android/gms/internal/ads/zzdrz;

    .line 55
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdsa;->zzgx(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v2

    .line 56
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzacr;->toString()Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {v2, v1, p1}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object p1

    .line 58
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdrz;->zzb(Lcom/google/android/gms/internal/ads/zzdsa;)V

    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaij;->zzdib:Lcom/google/android/gms/internal/ads/zzckn;

    .line 60
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzckn;->zzaqr()Lcom/google/android/gms/internal/ads/zzckq;

    move-result-object v0

    const-string v3, "action"

    .line 61
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzckq;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckq;

    move-result-object v0

    .line 62
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzacr;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzckq;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckq;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzckq;->zzaqt()V

    return-void
.end method

.method private static zzc(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "custom_close"

    .line 65
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static zzd(Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, "o"

    .line 66
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    const-string v0, "p"

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x7

    return p0

    :cond_0
    const-string v0, "l"

    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x6

    return p0

    :cond_1
    const-string v0, "c"

    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 73
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkt()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzr;->zzzc()I

    move-result p0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method static zze(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4

    :try_start_0
    const-string v0, "aclk_ms"

    .line 88
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "aclk_upms"

    .line 91
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "Error adding click uptime parameter to url: "

    .line 96
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 98
    move-object/from16 v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzvc;

    const-string v0, "u"

    .line 99
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbeb;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    .line 224
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 100
    invoke-static {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzaxu;->zzc(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v5

    const-string v0, "a"

    .line 101
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_0

    const-string v0, "Action missing from an open GMSG."

    .line 103
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    return-void

    .line 105
    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaij;->zzdhw:Lcom/google/android/gms/ads/internal/zza;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zza;->zzjy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaij;->zzdhw:Lcom/google/android/gms/ads/internal/zza;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/ads/internal/zza;->zzbk(Ljava/lang/String;)V

    return-void

    .line 110
    :cond_1
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacp()Lcom/google/android/gms/internal/ads/zzdmw;

    move-result-object v0

    .line 111
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbeb;->zzadn()Lcom/google/android/gms/internal/ads/zzdnb;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v0, :cond_2

    if-eqz v9, :cond_2

    .line 113
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjz:Z

    .line 114
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzdnb;->zzbvs:Ljava/lang/String;

    move-object v11, v9

    move v9, v0

    goto :goto_0

    :cond_2
    const-string v9, ""

    move-object v11, v9

    const/4 v9, 0x0

    :goto_0
    const-string v0, "expand"

    .line 115
    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 116
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbeb;->zzadc()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Cannot expand WebView that is already expanded."

    .line 117
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    return-void

    .line 119
    :cond_3
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/ads/zzaij;->zzac(Z)V

    .line 120
    check-cast v3, Lcom/google/android/gms/internal/ads/zzbfh;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzaij;->zzc(Ljava/util/Map;)Z

    move-result v0

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzaij;->zzd(Ljava/util/Map;)I

    move-result v2

    invoke-interface {v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzbfh;->zzc(ZI)V

    return-void

    :cond_4
    const-string v0, "webapp"

    .line 121
    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 122
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/ads/zzaij;->zzac(Z)V

    if-eqz v5, :cond_5

    .line 124
    check-cast v3, Lcom/google/android/gms/internal/ads/zzbfh;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzaij;->zzc(Ljava/util/Map;)Z

    move-result v0

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzaij;->zzd(Ljava/util/Map;)I

    move-result v2

    invoke-interface {v3, v0, v2, v5}, Lcom/google/android/gms/internal/ads/zzbfh;->zza(ZILjava/lang/String;)V

    return-void

    .line 125
    :cond_5
    check-cast v3, Lcom/google/android/gms/internal/ads/zzbfh;

    .line 126
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzaij;->zzc(Ljava/util/Map;)Z

    move-result v0

    .line 127
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzaij;->zzd(Ljava/util/Map;)I

    move-result v4

    const-string v5, "html"

    .line 128
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "baseurl"

    .line 129
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 130
    invoke-interface {v3, v0, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzbfh;->zza(ZILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    const-string v0, "chrome_custom_tab"

    .line 131
    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcur:Lcom/google/android/gms/internal/ads/zzaba;

    .line 133
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v12

    invoke-virtual {v12, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 134
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 135
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/ads/zzaij;->zzac(Z)V

    .line 136
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Cannot open browser with null or empty url"

    .line 137
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    .line 138
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacr;->zzdcb:Lcom/google/android/gms/internal/ads/zzacr;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzaij;->zzb(Lcom/google/android/gms/internal/ads/zzacr;)V

    return-void

    .line 140
    :cond_7
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 142
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbeb;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 143
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbeb;->zzada()Lcom/google/android/gms/internal/ads/zzei;

    move-result-object v5

    .line 144
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbeb;->getView()Landroid/view/View;

    move-result-object v7

    .line 145
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbeb;->zzabe()Landroid/app/Activity;

    move-result-object v8

    .line 146
    invoke-static {v2, v5, v0, v7, v8}, Lcom/google/android/gms/internal/ads/zzaij;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzei;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    .line 147
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaij;->zze(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v9, :cond_8

    .line 148
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaij;->zzdie:Lcom/google/android/gms/internal/ads/zzcqr;

    if-eqz v2, :cond_8

    .line 149
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbeb;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 150
    invoke-direct {v1, v3, v2, v4, v11}, Lcom/google/android/gms/internal/ads/zzaij;->zza(Lcom/google/android/gms/internal/ads/zzvc;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 151
    :cond_8
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaii;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzaii;-><init>(Lcom/google/android/gms/internal/ads/zzaij;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzaij;->zzdif:Lcom/google/android/gms/ads/internal/overlay/zzt;

    .line 152
    check-cast v3, Lcom/google/android/gms/internal/ads/zzbfh;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzd;

    .line 153
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaij;->zzdif:Lcom/google/android/gms/ads/internal/overlay/zzt;

    invoke-direct {v2, v0, v4, v6}, Lcom/google/android/gms/ads/internal/overlay/zzd;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/overlay/zzt;Z)V

    .line 154
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzbfh;->zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    return-void

    :cond_9
    const-string v0, "app"

    .line 155
    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "system_browser"

    .line 156
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v12, "true"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 157
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/ads/zzaij;->zzac(Z)V

    .line 158
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaik;

    .line 159
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbeb;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbeb;->zzada()Lcom/google/android/gms/internal/ads/zzei;

    move-result-object v6

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbeb;->getView()Landroid/view/View;

    move-result-object v7

    invoke-direct {v0, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzaik;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzei;Landroid/view/View;)V

    .line 160
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzaik;->zze(Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v9, :cond_a

    .line 161
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaij;->zzdie:Lcom/google/android/gms/internal/ads/zzcqr;

    if-eqz v2, :cond_a

    if-eqz v0, :cond_a

    .line 162
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbeb;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 163
    invoke-direct {v1, v3, v2, v4, v11}, Lcom/google/android/gms/internal/ads/zzaij;->zza(Lcom/google/android/gms/internal/ads/zzvc;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 165
    :cond_a
    :try_start_0
    check-cast v3, Lcom/google/android/gms/internal/ads/zzbfh;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaij;->zzdif:Lcom/google/android/gms/ads/internal/overlay/zzt;

    invoke-direct {v2, v0, v4}, Lcom/google/android/gms/ads/internal/overlay/zzd;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzt;)V

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzbfh;->zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 167
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    return-void

    :cond_b
    const-string v0, "open_app"

    .line 168
    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v12, "p"

    if-eqz v0, :cond_10

    .line 169
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzczw:Lcom/google/android/gms/internal/ads/zzaba;

    .line 170
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 171
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 172
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/ads/zzaij;->zzac(Z)V

    .line 173
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_c

    const-string v0, "Package name missing from open app action."

    .line 175
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    return-void

    :cond_c
    if-eqz v9, :cond_d

    .line 177
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaij;->zzdie:Lcom/google/android/gms/internal/ads/zzcqr;

    if-eqz v2, :cond_d

    .line 178
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbeb;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v3, v2, v0, v11}, Lcom/google/android/gms/internal/ads/zzaij;->zza(Lcom/google/android/gms/internal/ads/zzvc;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 179
    :cond_d
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbeb;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez v2, :cond_e

    const-string v0, "Cannot get package manager from open app action."

    .line 181
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    return-void

    .line 183
    :cond_e
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 185
    check-cast v3, Lcom/google/android/gms/internal/ads/zzbfh;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaij;->zzdif:Lcom/google/android/gms/ads/internal/overlay/zzt;

    invoke-direct {v2, v0, v4}, Lcom/google/android/gms/ads/internal/overlay/zzd;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzt;)V

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzbfh;->zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    :cond_f
    return-void

    .line 187
    :cond_10
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/ads/zzaij;->zzac(Z)V

    const-string v0, "intent_url"

    .line 188
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    const/4 v14, 0x0

    .line 190
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 191
    :try_start_1
    invoke-static {v13, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v14
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v15, v0

    const-string v0, "Error parsing the url: "

    .line 194
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_11

    invoke-virtual {v0, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_11
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v13

    :goto_1
    invoke-static {v0, v15}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_12
    :goto_2
    if-eqz v14, :cond_14

    .line 195
    invoke-virtual {v14}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 196
    invoke-virtual {v14}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 197
    sget-object v13, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v13, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_14

    .line 199
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbeb;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 200
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbeb;->zzada()Lcom/google/android/gms/internal/ads/zzei;

    move-result-object v15

    .line 201
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbeb;->getView()Landroid/view/View;

    move-result-object v6

    .line 202
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbeb;->zzabe()Landroid/app/Activity;

    move-result-object v10

    .line 203
    invoke-static {v13, v15, v0, v6, v10}, Lcom/google/android/gms/internal/ads/zzaij;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzei;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    .line 204
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaij;->zze(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 205
    invoke-virtual {v14}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_13

    sget-object v6, Lcom/google/android/gms/internal/ads/zzabp;->zzczx:Lcom/google/android/gms/internal/ads/zzaba;

    .line 206
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v6

    .line 207
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 208
    invoke-virtual {v14}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v0, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 209
    :cond_13
    invoke-virtual {v14, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 210
    :cond_14
    :goto_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzdah:Lcom/google/android/gms/internal/ads/zzaba;

    .line 212
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 213
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v6, "event_id"

    if-eqz v0, :cond_15

    const-string v0, "intent_async"

    .line 214
    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 215
    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v16, 0x1

    goto :goto_4

    :cond_15
    const/16 v16, 0x0

    .line 216
    :goto_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz v16, :cond_16

    .line 218
    new-instance v8, Lcom/google/android/gms/internal/ads/zzail;

    invoke-direct {v8, v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzail;-><init>(Lcom/google/android/gms/internal/ads/zzaij;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzvc;)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzaij;->zzdif:Lcom/google/android/gms/ads/internal/overlay/zzt;

    :cond_16
    const-string v8, "openIntentAsync"

    if-eqz v14, :cond_19

    if-eqz v9, :cond_18

    .line 220
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzaij;->zzdie:Lcom/google/android/gms/internal/ads/zzcqr;

    if-eqz v5, :cond_18

    .line 221
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbeb;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v14}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 222
    invoke-direct {v1, v3, v4, v5, v11}, Lcom/google/android/gms/internal/ads/zzaij;->zza(Lcom/google/android/gms/internal/ads/zzvc;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    if-eqz v16, :cond_17

    .line 224
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    check-cast v3, Lcom/google/android/gms/internal/ads/zzaki;

    invoke-interface {v3, v8, v0}, Lcom/google/android/gms/internal/ads/zzaki;->zza(Ljava/lang/String;Ljava/util/Map;)V

    :cond_17
    return-void

    .line 227
    :cond_18
    check-cast v3, Lcom/google/android/gms/internal/ads/zzbfh;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaij;->zzdif:Lcom/google/android/gms/ads/internal/overlay/zzt;

    invoke-direct {v0, v14, v2}, Lcom/google/android/gms/ads/internal/overlay/zzd;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzt;)V

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/ads/zzbfh;->zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    return-void

    .line 228
    :cond_19
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1a

    .line 229
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 231
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbeb;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 232
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbeb;->zzada()Lcom/google/android/gms/internal/ads/zzei;

    move-result-object v13

    .line 233
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbeb;->getView()Landroid/view/View;

    move-result-object v14

    .line 234
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbeb;->zzabe()Landroid/app/Activity;

    move-result-object v15

    .line 235
    invoke-static {v10, v13, v5, v14, v15}, Lcom/google/android/gms/internal/ads/zzaij;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzei;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v5

    .line 236
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaij;->zze(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 237
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1a
    if-eqz v9, :cond_1c

    .line 238
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzaij;->zzdie:Lcom/google/android/gms/internal/ads/zzcqr;

    if-eqz v9, :cond_1c

    .line 239
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbeb;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v3, v4, v5, v11}, Lcom/google/android/gms/internal/ads/zzaij;->zza(Lcom/google/android/gms/internal/ads/zzvc;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    if-eqz v16, :cond_1b

    .line 241
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    check-cast v3, Lcom/google/android/gms/internal/ads/zzaki;

    invoke-interface {v3, v8, v0}, Lcom/google/android/gms/internal/ads/zzaki;->zza(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1b
    return-void

    .line 244
    :cond_1c
    check-cast v3, Lcom/google/android/gms/internal/ads/zzbfh;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzd;

    const-string v4, "i"

    .line 245
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Ljava/lang/String;

    const-string v4, "m"

    .line 246
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v20, v4

    check-cast v20, Ljava/lang/String;

    .line 247
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v21, v4

    check-cast v21, Ljava/lang/String;

    const-string v4, "c"

    .line 248
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v22, v4

    check-cast v22, Ljava/lang/String;

    const-string v4, "f"

    .line 249
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v23, v4

    check-cast v23, Ljava/lang/String;

    const-string v4, "e"

    .line 250
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Ljava/lang/String;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaij;->zzdif:Lcom/google/android/gms/ads/internal/overlay/zzt;

    move-object/from16 v17, v0

    move-object/from16 v19, v5

    move-object/from16 v25, v2

    invoke-direct/range {v17 .. v25}, Lcom/google/android/gms/ads/internal/overlay/zzd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/overlay/zzt;)V

    .line 251
    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/ads/zzbfh;->zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    :cond_1d
    return-void
.end method
