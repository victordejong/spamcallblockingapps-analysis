.class public final Lcom/google/android/gms/internal/ads/cpo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/elk;

.field public final b:Lcom/google/android/gms/internal/ads/zzaaz;

.field public final c:Lcom/google/android/gms/internal/ads/zzajy;

.field public final d:Lcom/google/android/gms/internal/ads/zzvq;

.field public final e:Lcom/google/android/gms/internal/ads/zzvt;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lcom/google/android/gms/internal/ads/zzaei;

.field public final j:Lcom/google/android/gms/internal/ads/zzwc;

.field public final k:I

.field public final l:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

.field public final m:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

.field public final n:Lcom/google/android/gms/internal/ads/ele;

.field public final o:Lcom/google/android/gms/internal/ads/cpa;

.field public final p:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/cpq;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1094
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/cpq;->b:Lcom/google/android/gms/internal/ads/zzvt;

    .line 2
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/cpo;->e:Lcom/google/android/gms/internal/ads/zzvt;

    .line 1095
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/cpq;->d:Ljava/lang/String;

    .line 3
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/cpo;->f:Ljava/lang/String;

    .line 1096
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/cpq;->c:Lcom/google/android/gms/internal/ads/elk;

    .line 4
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/cpo;->a:Lcom/google/android/gms/internal/ads/elk;

    .line 6
    new-instance v2, Lcom/google/android/gms/internal/ads/zzvq;

    .line 1107
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/cpq;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 7
    iget v4, v3, Lcom/google/android/gms/internal/ads/zzvq;->versionCode:I

    .line 2107
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/cpq;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 8
    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzvq;->zzcia:J

    .line 3107
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/cpq;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 9
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzvq;->extras:Landroid/os/Bundle;

    .line 4107
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/cpq;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 10
    iget v8, v3, Lcom/google/android/gms/internal/ads/zzvq;->zzcib:I

    .line 5107
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/cpq;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 11
    iget-object v9, v3, Lcom/google/android/gms/internal/ads/zzvq;->zzcic:Ljava/util/List;

    .line 6107
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/cpq;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 12
    iget-boolean v10, v3, Lcom/google/android/gms/internal/ads/zzvq;->zzcid:Z

    .line 7107
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/cpq;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 13
    iget v11, v3, Lcom/google/android/gms/internal/ads/zzvq;->zzadv:I

    .line 8107
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/cpq;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 14
    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzvq;->zzbns:Z

    if-nez v3, :cond_1

    .line 8108
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/cpq;->f:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    const/4 v12, 0x1

    .line 9107
    :goto_1
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/cpq;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 15
    iget-object v13, v3, Lcom/google/android/gms/internal/ads/zzvq;->zzcie:Ljava/lang/String;

    .line 10107
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/cpq;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 16
    iget-object v14, v3, Lcom/google/android/gms/internal/ads/zzvq;->zzcif:Lcom/google/android/gms/internal/ads/zzaav;

    .line 11107
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/cpq;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 17
    iget-object v15, v3, Lcom/google/android/gms/internal/ads/zzvq;->zzng:Landroid/location/Location;

    .line 12107
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/cpq;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 18
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzvq;->zzcig:Ljava/lang/String;

    move-object/from16 v16, v3

    .line 13107
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/cpq;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 19
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzvq;->zzcih:Landroid/os/Bundle;

    move-object/from16 v17, v3

    .line 14107
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/cpq;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 20
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzvq;->zzcii:Landroid/os/Bundle;

    move-object/from16 v18, v3

    .line 15107
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/cpq;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 21
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzvq;->zzcij:Ljava/util/List;

    move-object/from16 v19, v3

    .line 16107
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/cpq;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 22
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzvq;->zzcik:Ljava/lang/String;

    move-object/from16 v20, v3

    .line 17107
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/cpq;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 23
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzvq;->zzcil:Ljava/lang/String;

    move-object/from16 v21, v3

    .line 18107
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/cpq;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 24
    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzvq;->zzcim:Z

    move/from16 v22, v3

    .line 19107
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/cpq;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 25
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzvq;->zzcip:Lcom/google/android/gms/internal/ads/zzvf;

    move-object/from16 v23, v3

    .line 20107
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/cpq;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 26
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzvq;->zzadw:I

    move/from16 v24, v3

    .line 21107
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/cpq;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 27
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzvq;->zzadx:Ljava/lang/String;

    move-object/from16 v25, v3

    .line 22107
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/cpq;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 28
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzvq;->zzcin:Ljava/util/List;

    move-object/from16 v26, v3

    .line 23107
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/cpq;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 29
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzvq;->zzcio:I

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzj;->zzdl(I)I

    move-result v27

    move-object v3, v2

    invoke-direct/range {v3 .. v27}, Lcom/google/android/gms/internal/ads/zzvq;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzaav;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzvf;ILjava/lang/String;Ljava/util/List;I)V

    .line 30
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    .line 23109
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/cpq;->e:Lcom/google/android/gms/internal/ads/zzaaz;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 24109
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/cpq;->e:Lcom/google/android/gms/internal/ads/zzaaz;

    goto :goto_2

    .line 24110
    :cond_2
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/cpq;->i:Lcom/google/android/gms/internal/ads/zzaei;

    if-eqz v2, :cond_3

    .line 25110
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/cpq;->i:Lcom/google/android/gms/internal/ads/zzaei;

    .line 35
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaei;->zzdgy:Lcom/google/android/gms/internal/ads/zzaaz;

    goto :goto_2

    :cond_3
    move-object v2, v3

    .line 37
    :goto_2
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/cpo;->b:Lcom/google/android/gms/internal/ads/zzaaz;

    .line 26097
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/cpq;->g:Ljava/util/ArrayList;

    .line 38
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/cpo;->g:Ljava/util/ArrayList;

    .line 26098
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/cpq;->h:Ljava/util/ArrayList;

    .line 39
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/cpo;->h:Ljava/util/ArrayList;

    .line 27097
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/cpq;->g:Ljava/util/ArrayList;

    if-nez v2, :cond_4

    move-object v2, v3

    goto :goto_3

    .line 27110
    :cond_4
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/cpq;->i:Lcom/google/android/gms/internal/ads/zzaei;

    if-nez v2, :cond_5

    .line 44
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaei;

    new-instance v4, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-direct {v4}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    invoke-virtual {v4}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/ads/zzaei;-><init>(Lcom/google/android/gms/ads/formats/NativeAdOptions;)V

    goto :goto_3

    .line 28110
    :cond_5
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/cpq;->i:Lcom/google/android/gms/internal/ads/zzaei;

    .line 46
    :goto_3
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/cpo;->i:Lcom/google/android/gms/internal/ads/zzaei;

    .line 29099
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/cpq;->j:Lcom/google/android/gms/internal/ads/zzwc;

    .line 47
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/cpo;->j:Lcom/google/android/gms/internal/ads/zzwc;

    .line 29100
    iget v2, v1, Lcom/google/android/gms/internal/ads/cpq;->n:I

    .line 48
    iput v2, v0, Lcom/google/android/gms/internal/ads/cpo;->k:I

    .line 29101
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/cpq;->k:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    .line 49
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/cpo;->l:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    .line 29102
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/cpq;->l:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    .line 50
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/cpo;->m:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    .line 29103
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/cpq;->m:Lcom/google/android/gms/internal/ads/ele;

    .line 51
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/cpo;->n:Lcom/google/android/gms/internal/ads/ele;

    .line 29104
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/cpq;->o:Lcom/google/android/gms/internal/ads/zzajy;

    .line 52
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/cpo;->c:Lcom/google/android/gms/internal/ads/zzajy;

    .line 29105
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/cpq;->p:Lcom/google/android/gms/internal/ads/cpd;

    .line 54
    new-instance v4, Lcom/google/android/gms/internal/ads/cpa;

    invoke-direct {v4, v2, v3}, Lcom/google/android/gms/internal/ads/cpa;-><init>(Lcom/google/android/gms/internal/ads/cpd;Lcom/google/android/gms/internal/ads/cpe;)V

    .line 55
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/cpo;->o:Lcom/google/android/gms/internal/ads/cpa;

    .line 29106
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/cpq;->q:Z

    .line 56
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/cpo;->p:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/cpq;Lcom/google/android/gms/internal/ads/cpn;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cpo;-><init>(Lcom/google/android/gms/internal/ads/cpq;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/fn;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cpo;->m:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cpo;->l:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzjv()Lcom/google/android/gms/internal/ads/fn;

    move-result-object v0

    return-object v0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cpo;->l:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->zzjv()Lcom/google/android/gms/internal/ads/fn;

    move-result-object v0

    return-object v0
.end method
