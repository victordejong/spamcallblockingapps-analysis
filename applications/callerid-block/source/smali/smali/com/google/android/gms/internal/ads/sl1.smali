.class public final Lcom/google/android/gms/internal/ads/sl1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzady;

.field public final b:Lcom/google/android/gms/internal/ads/zzamv;

.field public final c:Lcom/google/android/gms/internal/ads/f71;

.field public final d:Lcom/google/android/gms/internal/ads/zzys;

.field public final e:Lcom/google/android/gms/internal/ads/zzyx;

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

.field public final i:Lcom/google/android/gms/internal/ads/zzagy;

.field public final j:Lcom/google/android/gms/internal/ads/zzzd;

.field public final k:I

.field public final l:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

.field public final m:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

.field public final n:Lcom/google/android/gms/internal/ads/e0;

.field public final o:Lcom/google/android/gms/internal/ads/hl1;

.field public final p:Z

.field public final q:Lcom/google/android/gms/internal/ads/i0;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/rl1;Lcom/google/android/gms/internal/ads/ql1;)V
    .locals 27

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->L(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzyx;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/sl1;->e:Lcom/google/android/gms/internal/ads/zzyx;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->M(Lcom/google/android/gms/internal/ads/rl1;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/sl1;->f:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->o(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/i0;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/sl1;->q:Lcom/google/android/gms/internal/ads/i0;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzys;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->j(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v2

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzys;->b:I

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->j(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v2

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzys;->c:J

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->j(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v2

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzys;->d:Landroid/os/Bundle;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->j(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v2

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzys;->e:I

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->j(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v2

    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zzys;->f:Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->j(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v2

    iget-boolean v9, v2, Lcom/google/android/gms/internal/ads/zzys;->g:Z

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->j(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v2

    iget v10, v2, Lcom/google/android/gms/internal/ads/zzys;->h:I

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->j(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzys;->i:Z

    const/4 v11, 0x1

    if-nez v2, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->k(Lcom/google/android/gms/internal/ads/rl1;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v11, 0x0

    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->j(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v2

    iget-object v12, v2, Lcom/google/android/gms/internal/ads/zzys;->j:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->j(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v2

    iget-object v13, v2, Lcom/google/android/gms/internal/ads/zzys;->k:Lcom/google/android/gms/internal/ads/zzadu;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->j(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v2

    iget-object v14, v2, Lcom/google/android/gms/internal/ads/zzys;->l:Landroid/location/Location;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->j(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v2

    iget-object v15, v2, Lcom/google/android/gms/internal/ads/zzys;->m:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->j(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzys;->n:Landroid/os/Bundle;

    move-object/from16 v16, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->j(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzys;->o:Landroid/os/Bundle;

    move-object/from16 v17, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->j(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzys;->p:Ljava/util/List;

    move-object/from16 v18, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->j(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzys;->q:Ljava/lang/String;

    move-object/from16 v19, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->j(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzys;->r:Ljava/lang/String;

    move-object/from16 v20, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->j(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzys;->s:Z

    move/from16 v21, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->j(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzys;->t:Lcom/google/android/gms/internal/ads/zzyk;

    move-object/from16 v22, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->j(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzys;->u:I

    move/from16 v23, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->j(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzys;->v:Ljava/lang/String;

    move-object/from16 v24, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->j(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzys;->w:Ljava/util/List;

    move-object/from16 v25, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->j(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzys;->x:I

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/l1;->A(I)I

    move-result v26

    move-object v2, v1

    invoke-direct/range {v2 .. v26}, Lcom/google/android/gms/internal/ads/zzys;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzadu;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzyk;ILjava/lang/String;Ljava/util/List;I)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/sl1;->d:Lcom/google/android/gms/internal/ads/zzys;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->l(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzady;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->l(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzady;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->m(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzagy;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->m(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzagy;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzagy;->g:Lcom/google/android/gms/internal/ads/zzady;

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/sl1;->a:Lcom/google/android/gms/internal/ads/zzady;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->N(Lcom/google/android/gms/internal/ads/rl1;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/sl1;->g:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->O(Lcom/google/android/gms/internal/ads/rl1;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/sl1;->h:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->N(Lcom/google/android/gms/internal/ads/rl1;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v1, v2

    goto :goto_2

    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->m(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzagy;

    move-result-object v1

    if-nez v1, :cond_5

    new-instance v1, Lcom/google/android/gms/internal/ads/zzagy;

    new-instance v3, Lcom/google/android/gms/ads/formats/c$a;

    invoke-direct {v3}, Lcom/google/android/gms/ads/formats/c$a;-><init>()V

    invoke-virtual {v3}, Lcom/google/android/gms/ads/formats/c$a;->a()Lcom/google/android/gms/ads/formats/c;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/zzagy;-><init>(Lcom/google/android/gms/ads/formats/c;)V

    goto :goto_2

    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->m(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzagy;

    move-result-object v1

    :goto_2
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/sl1;->i:Lcom/google/android/gms/internal/ads/zzagy;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->a(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzzd;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/sl1;->j:Lcom/google/android/gms/internal/ads/zzzd;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->b(Lcom/google/android/gms/internal/ads/rl1;)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/sl1;->k:I

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->c(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/sl1;->l:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->d(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/sl1;->m:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->e(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/e0;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/sl1;->n:Lcom/google/android/gms/internal/ads/e0;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->f(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/zzamv;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/sl1;->b:Lcom/google/android/gms/internal/ads/zzamv;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->g(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/gl1;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/ads/hl1;

    invoke-direct {v3, v1, v2}, Lcom/google/android/gms/internal/ads/hl1;-><init>(Lcom/google/android/gms/internal/ads/gl1;Lcom/google/android/gms/internal/ads/fl1;)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/sl1;->o:Lcom/google/android/gms/internal/ads/hl1;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->h(Lcom/google/android/gms/internal/ads/rl1;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/sl1;->p:Z

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rl1;->i(Lcom/google/android/gms/internal/ads/rl1;)Lcom/google/android/gms/internal/ads/f71;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/sl1;->c:Lcom/google/android/gms/internal/ads/f71;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/t7;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sl1;->m:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sl1;->l:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->p()Lcom/google/android/gms/internal/ads/t7;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sl1;->l:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->p()Lcom/google/android/gms/internal/ads/t7;

    move-result-object v0

    return-object v0
.end method
