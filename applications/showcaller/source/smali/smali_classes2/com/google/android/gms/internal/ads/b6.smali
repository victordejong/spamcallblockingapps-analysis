.class final Lcom/google/android/gms/internal/ads/b6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/mk3;


# instance fields
.field public final b:Lcom/google/android/gms/internal/ads/p7;

.field public final c:Lcom/google/android/gms/internal/ads/mk3;

.field public final d:J

.field public final e:J

.field public final f:I

.field public final g:Lcom/google/android/gms/internal/ads/zzaeg;

.field public final h:Z

.field public final i:Lcom/google/android/gms/internal/ads/dv3;

.field public final j:Lcom/google/android/gms/internal/ads/hn3;

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzaiv;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lcom/google/android/gms/internal/ads/mk3;

.field public final m:Z

.field public final n:I

.field public final o:Lcom/google/android/gms/internal/ads/d6;

.field public final p:Z

.field public final q:Z

.field public volatile r:J

.field public volatile s:J

.field public volatile t:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/mk3;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/mk3;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/b6;->a:Lcom/google/android/gms/internal/ads/mk3;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;JJILcom/google/android/gms/internal/ads/zzaeg;ZLcom/google/android/gms/internal/ads/dv3;Lcom/google/android/gms/internal/ads/hn3;Ljava/util/List;Lcom/google/android/gms/internal/ads/mk3;ZILcom/google/android/gms/internal/ads/d6;JJJZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/p7;",
            "Lcom/google/android/gms/internal/ads/mk3;",
            "JJI",
            "Lcom/google/android/gms/internal/ads/zzaeg;",
            "Z",
            "Lcom/google/android/gms/internal/ads/dv3;",
            "Lcom/google/android/gms/internal/ads/hn3;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzaiv;",
            ">;",
            "Lcom/google/android/gms/internal/ads/mk3;",
            "ZI",
            "Lcom/google/android/gms/internal/ads/d6;",
            "JJJZZ)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    move-wide v1, p3

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/b6;->d:J

    move-wide v1, p5

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/b6;->e:J

    move v1, p7

    iput v1, v0, Lcom/google/android/gms/internal/ads/b6;->f:I

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/b6;->g:Lcom/google/android/gms/internal/ads/zzaeg;

    move v1, p9

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/b6;->h:Z

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/b6;->i:Lcom/google/android/gms/internal/ads/dv3;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/b6;->j:Lcom/google/android/gms/internal/ads/hn3;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/b6;->k:Ljava/util/List;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/b6;->l:Lcom/google/android/gms/internal/ads/mk3;

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/b6;->m:Z

    move/from16 v1, p15

    iput v1, v0, Lcom/google/android/gms/internal/ads/b6;->n:I

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/b6;->o:Lcom/google/android/gms/internal/ads/d6;

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/b6;->r:J

    move-wide/from16 v1, p19

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/b6;->s:J

    move-wide/from16 v1, p21

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/b6;->t:J

    move/from16 v1, p23

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/b6;->p:Z

    move/from16 v1, p24

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/b6;->q:Z

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/hn3;)Lcom/google/android/gms/internal/ads/b6;
    .locals 26

    move-object/from16 v11, p0

    .line 1
    new-instance v25, Lcom/google/android/gms/internal/ads/b6;

    move-object/from16 v0, v25

    sget-object v1, Lcom/google/android/gms/internal/ads/p7;->a:Lcom/google/android/gms/internal/ads/p7;

    sget-object v13, Lcom/google/android/gms/internal/ads/b6;->a:Lcom/google/android/gms/internal/ads/mk3;

    move-object v2, v13

    sget-object v10, Lcom/google/android/gms/internal/ads/dv3;->a:Lcom/google/android/gms/internal/ads/dv3;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzi()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v12

    sget-object v16, Lcom/google/android/gms/internal/ads/d6;->a:Lcom/google/android/gms/internal/ads/d6;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v0 .. v24}, Lcom/google/android/gms/internal/ads/b6;-><init>(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;JJILcom/google/android/gms/internal/ads/zzaeg;ZLcom/google/android/gms/internal/ads/dv3;Lcom/google/android/gms/internal/ads/hn3;Ljava/util/List;Lcom/google/android/gms/internal/ads/mk3;ZILcom/google/android/gms/internal/ads/d6;JJJZZ)V

    return-object v25
.end method

.method public static b()Lcom/google/android/gms/internal/ads/mk3;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/b6;->a:Lcom/google/android/gms/internal/ads/mk3;

    return-object v0
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/internal/ads/mk3;JJJJLcom/google/android/gms/internal/ads/dv3;Lcom/google/android/gms/internal/ads/hn3;Ljava/util/List;)Lcom/google/android/gms/internal/ads/b6;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/mk3;",
            "JJJJ",
            "Lcom/google/android/gms/internal/ads/dv3;",
            "Lcom/google/android/gms/internal/ads/hn3;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzaiv;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/b6;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-wide/from16 v22, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v20, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    .line 1
    new-instance v26, Lcom/google/android/gms/internal/ads/b6;

    move-object/from16 v1, v26

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget v8, v0, Lcom/google/android/gms/internal/ads/b6;->f:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/b6;->g:Lcom/google/android/gms/internal/ads/zzaeg;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/b6;->h:Z

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/b6;->l:Lcom/google/android/gms/internal/ads/mk3;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/b6;->m:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/b6;->n:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/b6;->o:Lcom/google/android/gms/internal/ads/d6;

    move-object/from16 v17, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/b6;->r:J

    move-wide/from16 v18, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/b6;->p:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/b6;->q:Z

    move/from16 v25, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v25}, Lcom/google/android/gms/internal/ads/b6;-><init>(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;JJILcom/google/android/gms/internal/ads/zzaeg;ZLcom/google/android/gms/internal/ads/dv3;Lcom/google/android/gms/internal/ads/hn3;Ljava/util/List;Lcom/google/android/gms/internal/ads/mk3;ZILcom/google/android/gms/internal/ads/d6;JJJZZ)V

    return-object v26
.end method

.method public final d(Lcom/google/android/gms/internal/ads/p7;)Lcom/google/android/gms/internal/ads/b6;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 1
    new-instance v26, Lcom/google/android/gms/internal/ads/b6;

    move-object/from16 v1, v26

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/b6;->d:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/b6;->e:J

    iget v8, v0, Lcom/google/android/gms/internal/ads/b6;->f:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/b6;->g:Lcom/google/android/gms/internal/ads/zzaeg;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/b6;->h:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/b6;->i:Lcom/google/android/gms/internal/ads/dv3;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/b6;->j:Lcom/google/android/gms/internal/ads/hn3;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/b6;->k:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/b6;->l:Lcom/google/android/gms/internal/ads/mk3;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/b6;->m:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/b6;->n:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/b6;->o:Lcom/google/android/gms/internal/ads/d6;

    move-object/from16 v17, v1

    move-object/from16 v27, v2

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/b6;->r:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/b6;->s:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/b6;->t:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/b6;->p:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/b6;->q:Z

    move/from16 v25, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct/range {v1 .. v25}, Lcom/google/android/gms/internal/ads/b6;-><init>(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;JJILcom/google/android/gms/internal/ads/zzaeg;ZLcom/google/android/gms/internal/ads/dv3;Lcom/google/android/gms/internal/ads/hn3;Ljava/util/List;Lcom/google/android/gms/internal/ads/mk3;ZILcom/google/android/gms/internal/ads/d6;JJJZZ)V

    return-object v26
.end method

.method public final e(I)Lcom/google/android/gms/internal/ads/b6;
    .locals 28

    move-object/from16 v0, p0

    move/from16 v8, p1

    .line 1
    new-instance v26, Lcom/google/android/gms/internal/ads/b6;

    move-object/from16 v1, v26

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/b6;->d:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/b6;->e:J

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/b6;->g:Lcom/google/android/gms/internal/ads/zzaeg;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/b6;->h:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/b6;->i:Lcom/google/android/gms/internal/ads/dv3;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/b6;->j:Lcom/google/android/gms/internal/ads/hn3;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/b6;->k:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/b6;->l:Lcom/google/android/gms/internal/ads/mk3;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/b6;->m:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/b6;->n:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/b6;->o:Lcom/google/android/gms/internal/ads/d6;

    move-object/from16 v17, v1

    move-object/from16 v27, v2

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/b6;->r:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/b6;->s:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/b6;->t:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/b6;->p:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/b6;->q:Z

    move/from16 v25, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct/range {v1 .. v25}, Lcom/google/android/gms/internal/ads/b6;-><init>(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;JJILcom/google/android/gms/internal/ads/zzaeg;ZLcom/google/android/gms/internal/ads/dv3;Lcom/google/android/gms/internal/ads/hn3;Ljava/util/List;Lcom/google/android/gms/internal/ads/mk3;ZILcom/google/android/gms/internal/ads/d6;JJJZZ)V

    return-object v26
.end method

.method public final f(Lcom/google/android/gms/internal/ads/zzaeg;)Lcom/google/android/gms/internal/ads/b6;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 1
    new-instance v26, Lcom/google/android/gms/internal/ads/b6;

    move-object/from16 v1, v26

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/b6;->d:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/b6;->e:J

    iget v8, v0, Lcom/google/android/gms/internal/ads/b6;->f:I

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/b6;->h:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/b6;->i:Lcom/google/android/gms/internal/ads/dv3;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/b6;->j:Lcom/google/android/gms/internal/ads/hn3;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/b6;->k:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/b6;->l:Lcom/google/android/gms/internal/ads/mk3;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/b6;->m:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/b6;->n:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/b6;->o:Lcom/google/android/gms/internal/ads/d6;

    move-object/from16 v17, v1

    move-object/from16 v27, v2

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/b6;->r:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/b6;->s:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/b6;->t:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/b6;->p:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/b6;->q:Z

    move/from16 v25, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct/range {v1 .. v25}, Lcom/google/android/gms/internal/ads/b6;-><init>(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;JJILcom/google/android/gms/internal/ads/zzaeg;ZLcom/google/android/gms/internal/ads/dv3;Lcom/google/android/gms/internal/ads/hn3;Ljava/util/List;Lcom/google/android/gms/internal/ads/mk3;ZILcom/google/android/gms/internal/ads/d6;JJJZZ)V

    return-object v26
.end method

.method public final g(Lcom/google/android/gms/internal/ads/mk3;)Lcom/google/android/gms/internal/ads/b6;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    .line 1
    new-instance v26, Lcom/google/android/gms/internal/ads/b6;

    move-object/from16 v1, v26

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/b6;->d:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/b6;->e:J

    iget v8, v0, Lcom/google/android/gms/internal/ads/b6;->f:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/b6;->g:Lcom/google/android/gms/internal/ads/zzaeg;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/b6;->h:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/b6;->i:Lcom/google/android/gms/internal/ads/dv3;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/b6;->j:Lcom/google/android/gms/internal/ads/hn3;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/b6;->k:Ljava/util/List;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/b6;->m:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/b6;->n:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/b6;->o:Lcom/google/android/gms/internal/ads/d6;

    move-object/from16 v17, v1

    move-object/from16 v27, v2

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/b6;->r:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/b6;->s:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/b6;->t:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/b6;->p:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/b6;->q:Z

    move/from16 v25, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct/range {v1 .. v25}, Lcom/google/android/gms/internal/ads/b6;-><init>(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;JJILcom/google/android/gms/internal/ads/zzaeg;ZLcom/google/android/gms/internal/ads/dv3;Lcom/google/android/gms/internal/ads/hn3;Ljava/util/List;Lcom/google/android/gms/internal/ads/mk3;ZILcom/google/android/gms/internal/ads/d6;JJJZZ)V

    return-object v26
.end method

.method public final h(ZI)Lcom/google/android/gms/internal/ads/b6;
    .locals 27

    move-object/from16 v0, p0

    move/from16 v15, p1

    move/from16 v16, p2

    .line 1
    new-instance v26, Lcom/google/android/gms/internal/ads/b6;

    move-object/from16 v1, v26

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/b6;->d:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/b6;->e:J

    iget v8, v0, Lcom/google/android/gms/internal/ads/b6;->f:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/b6;->g:Lcom/google/android/gms/internal/ads/zzaeg;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/b6;->h:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/b6;->i:Lcom/google/android/gms/internal/ads/dv3;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/b6;->j:Lcom/google/android/gms/internal/ads/hn3;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/b6;->k:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/b6;->l:Lcom/google/android/gms/internal/ads/mk3;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/b6;->o:Lcom/google/android/gms/internal/ads/d6;

    move-object/from16 v17, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/b6;->r:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/b6;->s:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/b6;->t:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/b6;->p:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/b6;->q:Z

    move/from16 v25, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v25}, Lcom/google/android/gms/internal/ads/b6;-><init>(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;JJILcom/google/android/gms/internal/ads/zzaeg;ZLcom/google/android/gms/internal/ads/dv3;Lcom/google/android/gms/internal/ads/hn3;Ljava/util/List;Lcom/google/android/gms/internal/ads/mk3;ZILcom/google/android/gms/internal/ads/d6;JJJZZ)V

    return-object v26
.end method

.method public final i(Z)Lcom/google/android/gms/internal/ads/b6;
    .locals 28

    move-object/from16 v0, p0

    move/from16 v24, p1

    .line 1
    new-instance v26, Lcom/google/android/gms/internal/ads/b6;

    move-object/from16 v1, v26

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/b6;->d:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/b6;->e:J

    iget v8, v0, Lcom/google/android/gms/internal/ads/b6;->f:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/b6;->g:Lcom/google/android/gms/internal/ads/zzaeg;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/b6;->h:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/b6;->i:Lcom/google/android/gms/internal/ads/dv3;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/b6;->j:Lcom/google/android/gms/internal/ads/hn3;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/b6;->k:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/b6;->l:Lcom/google/android/gms/internal/ads/mk3;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/b6;->m:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/b6;->n:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/b6;->o:Lcom/google/android/gms/internal/ads/d6;

    move-object/from16 v17, v1

    move-object/from16 v27, v2

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/b6;->r:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/b6;->s:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/b6;->t:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/b6;->q:Z

    move/from16 v25, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct/range {v1 .. v25}, Lcom/google/android/gms/internal/ads/b6;-><init>(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;JJILcom/google/android/gms/internal/ads/zzaeg;ZLcom/google/android/gms/internal/ads/dv3;Lcom/google/android/gms/internal/ads/hn3;Ljava/util/List;Lcom/google/android/gms/internal/ads/mk3;ZILcom/google/android/gms/internal/ads/d6;JJJZZ)V

    return-object v26
.end method
