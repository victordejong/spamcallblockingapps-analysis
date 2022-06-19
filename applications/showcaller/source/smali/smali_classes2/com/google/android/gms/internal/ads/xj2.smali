.class public final Lcom/google/android/gms/internal/ads/xj2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzbis;

.field public final b:Lcom/google/android/gms/internal/ads/zzbrx;

.field public final c:Lcom/google/android/gms/internal/ads/a42;

.field public final d:Lcom/google/android/gms/internal/ads/zzbdg;

.field public final e:Lcom/google/android/gms/internal/ads/zzbdl;

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

.field public final i:Lcom/google/android/gms/internal/ads/zzblv;

.field public final j:Lcom/google/android/gms/internal/ads/zzbdr;

.field public final k:I

.field public final l:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

.field public final m:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

.field public final n:Lcom/google/android/gms/internal/ads/at;

.field public final o:Lcom/google/android/gms/internal/ads/nj2;

.field public final p:Z

.field public final q:Lcom/google/android/gms/internal/ads/et;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/vj2;Lcom/google/android/gms/internal/ads/wj2;)V
    .locals 28

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->q(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/xj2;->e:Lcom/google/android/gms/internal/ads/zzbdl;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->r(Lcom/google/android/gms/internal/ads/vj2;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/xj2;->f:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->n(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/et;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/xj2;->q:Lcom/google/android/gms/internal/ads/et;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbdg;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->p(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzbdg;->d:I

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->p(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzbdg;->e:J

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->p(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzbdg;->f:Landroid/os/Bundle;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->p(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzbdg;->g:I

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->p(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zzbdg;->h:Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->p(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-boolean v9, v2, Lcom/google/android/gms/internal/ads/zzbdg;->i:Z

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->p(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget v10, v2, Lcom/google/android/gms/internal/ads/zzbdg;->j:I

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->p(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzbdg;->k:Z

    const/4 v11, 0x1

    if-nez v2, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->t(Lcom/google/android/gms/internal/ads/vj2;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v11, 0x0

    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->p(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-object v12, v2, Lcom/google/android/gms/internal/ads/zzbdg;->l:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->p(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-object v13, v2, Lcom/google/android/gms/internal/ads/zzbdg;->m:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->p(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-object v14, v2, Lcom/google/android/gms/internal/ads/zzbdg;->n:Landroid/location/Location;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->p(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-object v15, v2, Lcom/google/android/gms/internal/ads/zzbdg;->o:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->p(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbdg;->p:Landroid/os/Bundle;

    move-object/from16 v16, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->p(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbdg;->q:Landroid/os/Bundle;

    move-object/from16 v17, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->p(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbdg;->r:Ljava/util/List;

    move-object/from16 v18, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->p(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbdg;->s:Ljava/lang/String;

    move-object/from16 v19, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->p(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbdg;->t:Ljava/lang/String;

    move-object/from16 v20, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->p(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzbdg;->u:Z

    move/from16 v21, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->p(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbdg;->v:Lcom/google/android/gms/internal/ads/zzbcx;

    move-object/from16 v22, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->p(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbdg;->w:I

    move/from16 v23, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->p(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbdg;->x:Ljava/lang/String;

    move-object/from16 v24, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->p(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbdg;->y:Ljava/util/List;

    move-object/from16 v25, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->p(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbdg;->z:I

    .line 2
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/c2;->L(I)I

    move-result v26

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->p(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbdg;->A:Ljava/lang/String;

    move-object/from16 v27, v2

    move-object v2, v1

    invoke-direct/range {v2 .. v27}, Lcom/google/android/gms/internal/ads/zzbdg;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzbio;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzbcx;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/xj2;->d:Lcom/google/android/gms/internal/ads/zzbdg;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->s(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbis;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->s(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbis;

    move-result-object v1

    goto :goto_1

    .line 3
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->w(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzblv;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->w(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzblv;

    move-result-object v1

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzblv;->i:Lcom/google/android/gms/internal/ads/zzbis;

    goto :goto_1

    :cond_3
    move-object v1, v2

    .line 5
    :goto_1
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/xj2;->a:Lcom/google/android/gms/internal/ads/zzbis;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->u(Lcom/google/android/gms/internal/ads/vj2;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/xj2;->g:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->v(Lcom/google/android/gms/internal/ads/vj2;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/xj2;->h:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->u(Lcom/google/android/gms/internal/ads/vj2;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v1, v2

    goto :goto_2

    .line 6
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->w(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzblv;

    move-result-object v1

    if-nez v1, :cond_5

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzblv;

    new-instance v3, Lcom/google/android/gms/ads/formats/c$a;

    invoke-direct {v3}, Lcom/google/android/gms/ads/formats/c$a;-><init>()V

    invoke-virtual {v3}, Lcom/google/android/gms/ads/formats/c$a;->a()Lcom/google/android/gms/ads/formats/c;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/zzblv;-><init>(Lcom/google/android/gms/ads/formats/c;)V

    goto :goto_2

    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->w(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzblv;

    move-result-object v1

    .line 8
    :goto_2
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/xj2;->i:Lcom/google/android/gms/internal/ads/zzblv;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->x(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbdr;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/xj2;->j:Lcom/google/android/gms/internal/ads/zzbdr;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->B(Lcom/google/android/gms/internal/ads/vj2;)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/xj2;->k:I

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->y(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/xj2;->l:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->z(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/xj2;->m:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->A(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/at;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/xj2;->n:Lcom/google/android/gms/internal/ads/at;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->C(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/zzbrx;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/xj2;->b:Lcom/google/android/gms/internal/ads/zzbrx;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->D(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/lj2;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/ads/nj2;

    .line 9
    invoke-direct {v3, v1, v2}, Lcom/google/android/gms/internal/ads/nj2;-><init>(Lcom/google/android/gms/internal/ads/lj2;Lcom/google/android/gms/internal/ads/mj2;)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/xj2;->o:Lcom/google/android/gms/internal/ads/nj2;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->E(Lcom/google/android/gms/internal/ads/vj2;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/xj2;->p:Z

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/vj2;->F(Lcom/google/android/gms/internal/ads/vj2;)Lcom/google/android/gms/internal/ads/a42;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/xj2;->c:Lcom/google/android/gms/internal/ads/a42;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/w00;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xj2;->m:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xj2;->l:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->l0()Lcom/google/android/gms/internal/ads/w00;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xj2;->l:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->l0()Lcom/google/android/gms/internal/ads/w00;

    move-result-object v0

    return-object v0
.end method
