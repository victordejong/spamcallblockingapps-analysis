.class final Lcom/google/android/exoplayer2/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final s:Lcom/google/android/exoplayer2/source/r$a;


# instance fields
.field public final a:Lcom/google/android/exoplayer2/al;

.field public final b:Lcom/google/android/exoplayer2/source/r$a;

.field public final c:J

.field public final d:I

.field public final e:Lcom/google/android/exoplayer2/ExoPlaybackException;

.field public final f:Z

.field public final g:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field public final h:Lcom/google/android/exoplayer2/trackselection/i;

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lcom/google/android/exoplayer2/source/r$a;

.field public final k:Z

.field public final l:I

.field public final m:Lcom/google/android/exoplayer2/aa;

.field public final n:Z

.field public final o:Z

.field public volatile p:J

.field public volatile q:J

.field public volatile r:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/google/android/exoplayer2/source/r$a;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/r$a;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/exoplayer2/z;->s:Lcom/google/android/exoplayer2/source/r$a;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;JILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/i;Ljava/util/List;Lcom/google/android/exoplayer2/source/r$a;ZILcom/google/android/exoplayer2/aa;JJJZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/al;",
            "Lcom/google/android/exoplayer2/source/r$a;",
            "JI",
            "Lcom/google/android/exoplayer2/ExoPlaybackException;",
            "Z",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "Lcom/google/android/exoplayer2/trackselection/i;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;",
            "Lcom/google/android/exoplayer2/source/r$a;",
            "ZI",
            "Lcom/google/android/exoplayer2/aa;",
            "JJJZZ)V"
        }
    .end annotation

    move-object v0, p0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 165
    iput-object v1, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    move-object v1, p2

    .line 166
    iput-object v1, v0, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    move-wide v1, p3

    .line 167
    iput-wide v1, v0, Lcom/google/android/exoplayer2/z;->c:J

    move v1, p5

    .line 168
    iput v1, v0, Lcom/google/android/exoplayer2/z;->d:I

    move-object v1, p6

    .line 169
    iput-object v1, v0, Lcom/google/android/exoplayer2/z;->e:Lcom/google/android/exoplayer2/ExoPlaybackException;

    move v1, p7

    .line 170
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/z;->f:Z

    move-object v1, p8

    .line 171
    iput-object v1, v0, Lcom/google/android/exoplayer2/z;->g:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-object v1, p9

    .line 172
    iput-object v1, v0, Lcom/google/android/exoplayer2/z;->h:Lcom/google/android/exoplayer2/trackselection/i;

    move-object v1, p10

    .line 173
    iput-object v1, v0, Lcom/google/android/exoplayer2/z;->i:Ljava/util/List;

    move-object v1, p11

    .line 174
    iput-object v1, v0, Lcom/google/android/exoplayer2/z;->j:Lcom/google/android/exoplayer2/source/r$a;

    move v1, p12

    .line 175
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/z;->k:Z

    move/from16 v1, p13

    .line 176
    iput v1, v0, Lcom/google/android/exoplayer2/z;->l:I

    move-object/from16 v1, p14

    .line 177
    iput-object v1, v0, Lcom/google/android/exoplayer2/z;->m:Lcom/google/android/exoplayer2/aa;

    move-wide/from16 v1, p15

    .line 178
    iput-wide v1, v0, Lcom/google/android/exoplayer2/z;->p:J

    move-wide/from16 v1, p17

    .line 179
    iput-wide v1, v0, Lcom/google/android/exoplayer2/z;->q:J

    move-wide/from16 v1, p19

    .line 180
    iput-wide v1, v0, Lcom/google/android/exoplayer2/z;->r:J

    move/from16 v1, p21

    .line 181
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/z;->n:Z

    move/from16 v1, p22

    .line 182
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/z;->o:Z

    return-void
.end method

.method public static a()Lcom/google/android/exoplayer2/source/r$a;
    .locals 1

    .line 187
    sget-object v0, Lcom/google/android/exoplayer2/z;->s:Lcom/google/android/exoplayer2/source/r$a;

    return-object v0
.end method

.method public static a(Lcom/google/android/exoplayer2/trackselection/i;)Lcom/google/android/exoplayer2/z;
    .locals 24

    move-object/from16 v9, p0

    .line 103
    new-instance v23, Lcom/google/android/exoplayer2/z;

    move-object/from16 v0, v23

    sget-object v1, Lcom/google/android/exoplayer2/al;->b:Lcom/google/android/exoplayer2/al;

    sget-object v2, Lcom/google/android/exoplayer2/z;->s:Lcom/google/android/exoplayer2/source/r$a;

    move-object v11, v2

    sget-object v8, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 112
    invoke-static {}, Lcom/google/common/collect/v;->g()Lcom/google/common/collect/v;

    move-result-object v10

    sget-object v14, Lcom/google/android/exoplayer2/aa;->a:Lcom/google/android/exoplayer2/aa;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v0 .. v22}, Lcom/google/android/exoplayer2/z;-><init>(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;JILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/i;Ljava/util/List;Lcom/google/android/exoplayer2/source/r$a;ZILcom/google/android/exoplayer2/aa;JJJZZ)V

    return-object v23
.end method


# virtual methods
.method public final a(I)Lcom/google/android/exoplayer2/z;
    .locals 26

    move-object/from16 v0, p0

    move/from16 v6, p1

    .line 272
    new-instance v24, Lcom/google/android/exoplayer2/z;

    move-object/from16 v1, v24

    iget-object v2, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object v3, v0, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/z;->c:J

    iget-object v7, v0, Lcom/google/android/exoplayer2/z;->e:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/z;->f:Z

    iget-object v9, v0, Lcom/google/android/exoplayer2/z;->g:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v10, v0, Lcom/google/android/exoplayer2/z;->h:Lcom/google/android/exoplayer2/trackselection/i;

    iget-object v11, v0, Lcom/google/android/exoplayer2/z;->i:Ljava/util/List;

    iget-object v12, v0, Lcom/google/android/exoplayer2/z;->j:Lcom/google/android/exoplayer2/source/r$a;

    iget-boolean v13, v0, Lcom/google/android/exoplayer2/z;->k:Z

    iget v14, v0, Lcom/google/android/exoplayer2/z;->l:I

    iget-object v15, v0, Lcom/google/android/exoplayer2/z;->m:Lcom/google/android/exoplayer2/aa;

    move-object/from16 p1, v1

    move-object/from16 v25, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/z;->p:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/z;->q:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/z;->r:J

    move-wide/from16 v20, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/z;->n:Z

    move/from16 v22, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/z;->o:Z

    move/from16 v23, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct/range {v1 .. v23}, Lcom/google/android/exoplayer2/z;-><init>(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;JILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/i;Ljava/util/List;Lcom/google/android/exoplayer2/source/r$a;ZILcom/google/android/exoplayer2/aa;JJJZZ)V

    return-object v24
.end method

.method public final a(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/z;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 301
    new-instance v24, Lcom/google/android/exoplayer2/z;

    move-object/from16 v1, v24

    iget-object v2, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object v3, v0, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/z;->c:J

    iget v6, v0, Lcom/google/android/exoplayer2/z;->d:I

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/z;->f:Z

    iget-object v9, v0, Lcom/google/android/exoplayer2/z;->g:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v10, v0, Lcom/google/android/exoplayer2/z;->h:Lcom/google/android/exoplayer2/trackselection/i;

    iget-object v11, v0, Lcom/google/android/exoplayer2/z;->i:Ljava/util/List;

    iget-object v12, v0, Lcom/google/android/exoplayer2/z;->j:Lcom/google/android/exoplayer2/source/r$a;

    iget-boolean v13, v0, Lcom/google/android/exoplayer2/z;->k:Z

    iget v14, v0, Lcom/google/android/exoplayer2/z;->l:I

    iget-object v15, v0, Lcom/google/android/exoplayer2/z;->m:Lcom/google/android/exoplayer2/aa;

    move-object/from16 p1, v1

    move-object/from16 v25, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/z;->p:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/z;->q:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/z;->r:J

    move-wide/from16 v20, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/z;->n:Z

    move/from16 v22, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/z;->o:Z

    move/from16 v23, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct/range {v1 .. v23}, Lcom/google/android/exoplayer2/z;-><init>(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;JILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/i;Ljava/util/List;Lcom/google/android/exoplayer2/source/r$a;ZILcom/google/android/exoplayer2/aa;JJJZZ)V

    return-object v24
.end method

.method public final a(Lcom/google/android/exoplayer2/aa;)Lcom/google/android/exoplayer2/z;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    .line 421
    new-instance v24, Lcom/google/android/exoplayer2/z;

    move-object/from16 v1, v24

    iget-object v2, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object v3, v0, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/z;->c:J

    iget v6, v0, Lcom/google/android/exoplayer2/z;->d:I

    iget-object v7, v0, Lcom/google/android/exoplayer2/z;->e:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/z;->f:Z

    iget-object v9, v0, Lcom/google/android/exoplayer2/z;->g:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v10, v0, Lcom/google/android/exoplayer2/z;->h:Lcom/google/android/exoplayer2/trackselection/i;

    iget-object v11, v0, Lcom/google/android/exoplayer2/z;->i:Ljava/util/List;

    iget-object v12, v0, Lcom/google/android/exoplayer2/z;->j:Lcom/google/android/exoplayer2/source/r$a;

    iget-boolean v13, v0, Lcom/google/android/exoplayer2/z;->k:Z

    iget v14, v0, Lcom/google/android/exoplayer2/z;->l:I

    move-object/from16 p1, v1

    move-object/from16 v25, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/z;->p:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/z;->q:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/z;->r:J

    move-wide/from16 v20, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/z;->n:Z

    move/from16 v22, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/z;->o:Z

    move/from16 v23, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct/range {v1 .. v23}, Lcom/google/android/exoplayer2/z;-><init>(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;JILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/i;Ljava/util/List;Lcom/google/android/exoplayer2/source/r$a;ZILcom/google/android/exoplayer2/aa;JJJZZ)V

    return-object v24
.end method

.method public final a(Lcom/google/android/exoplayer2/al;)Lcom/google/android/exoplayer2/z;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 243
    new-instance v24, Lcom/google/android/exoplayer2/z;

    move-object/from16 v1, v24

    iget-object v3, v0, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/z;->c:J

    iget v6, v0, Lcom/google/android/exoplayer2/z;->d:I

    iget-object v7, v0, Lcom/google/android/exoplayer2/z;->e:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/z;->f:Z

    iget-object v9, v0, Lcom/google/android/exoplayer2/z;->g:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v10, v0, Lcom/google/android/exoplayer2/z;->h:Lcom/google/android/exoplayer2/trackselection/i;

    iget-object v11, v0, Lcom/google/android/exoplayer2/z;->i:Ljava/util/List;

    iget-object v12, v0, Lcom/google/android/exoplayer2/z;->j:Lcom/google/android/exoplayer2/source/r$a;

    iget-boolean v13, v0, Lcom/google/android/exoplayer2/z;->k:Z

    iget v14, v0, Lcom/google/android/exoplayer2/z;->l:I

    iget-object v15, v0, Lcom/google/android/exoplayer2/z;->m:Lcom/google/android/exoplayer2/aa;

    move-object/from16 v25, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/z;->p:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/z;->q:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/z;->r:J

    move-wide/from16 v20, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/z;->n:Z

    move/from16 v22, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/z;->o:Z

    move/from16 v23, v1

    move-object/from16 v2, p1

    move-object/from16 v1, v25

    invoke-direct/range {v1 .. v23}, Lcom/google/android/exoplayer2/z;-><init>(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;JILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/i;Ljava/util/List;Lcom/google/android/exoplayer2/source/r$a;ZILcom/google/android/exoplayer2/aa;JJJZZ)V

    return-object v24
.end method

.method public final a(Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/z;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    .line 359
    new-instance v24, Lcom/google/android/exoplayer2/z;

    move-object/from16 v1, v24

    iget-object v2, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object v3, v0, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/z;->c:J

    iget v6, v0, Lcom/google/android/exoplayer2/z;->d:I

    iget-object v7, v0, Lcom/google/android/exoplayer2/z;->e:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/z;->f:Z

    iget-object v9, v0, Lcom/google/android/exoplayer2/z;->g:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v10, v0, Lcom/google/android/exoplayer2/z;->h:Lcom/google/android/exoplayer2/trackselection/i;

    iget-object v11, v0, Lcom/google/android/exoplayer2/z;->i:Ljava/util/List;

    iget-boolean v13, v0, Lcom/google/android/exoplayer2/z;->k:Z

    iget v14, v0, Lcom/google/android/exoplayer2/z;->l:I

    iget-object v15, v0, Lcom/google/android/exoplayer2/z;->m:Lcom/google/android/exoplayer2/aa;

    move-object/from16 p1, v1

    move-object/from16 v25, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/z;->p:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/z;->q:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/z;->r:J

    move-wide/from16 v20, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/z;->n:Z

    move/from16 v22, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/z;->o:Z

    move/from16 v23, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct/range {v1 .. v23}, Lcom/google/android/exoplayer2/z;-><init>(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;JILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/i;Ljava/util/List;Lcom/google/android/exoplayer2/source/r$a;ZILcom/google/android/exoplayer2/aa;JJJZZ)V

    return-object v24
.end method

.method public final a(Lcom/google/android/exoplayer2/source/r$a;JJJLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/i;Ljava/util/List;)Lcom/google/android/exoplayer2/z;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/r$a;",
            "JJJ",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "Lcom/google/android/exoplayer2/trackselection/i;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;)",
            "Lcom/google/android/exoplayer2/z;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-wide/from16 v20, p2

    move-wide/from16 v4, p4

    move-wide/from16 v18, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 214
    new-instance v24, Lcom/google/android/exoplayer2/z;

    move-object/from16 v1, v24

    iget-object v2, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget v6, v0, Lcom/google/android/exoplayer2/z;->d:I

    iget-object v7, v0, Lcom/google/android/exoplayer2/z;->e:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/z;->f:Z

    iget-object v12, v0, Lcom/google/android/exoplayer2/z;->j:Lcom/google/android/exoplayer2/source/r$a;

    iget-boolean v13, v0, Lcom/google/android/exoplayer2/z;->k:Z

    iget v14, v0, Lcom/google/android/exoplayer2/z;->l:I

    iget-object v15, v0, Lcom/google/android/exoplayer2/z;->m:Lcom/google/android/exoplayer2/aa;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/z;->p:J

    move-wide/from16 v16, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/z;->n:Z

    move/from16 v22, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/z;->o:Z

    move/from16 v23, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v23}, Lcom/google/android/exoplayer2/z;-><init>(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;JILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/i;Ljava/util/List;Lcom/google/android/exoplayer2/source/r$a;ZILcom/google/android/exoplayer2/aa;JJJZZ)V

    return-object v24
.end method

.method public final a(Z)Lcom/google/android/exoplayer2/z;
    .locals 26

    move-object/from16 v0, p0

    move/from16 v8, p1

    .line 330
    new-instance v24, Lcom/google/android/exoplayer2/z;

    move-object/from16 v1, v24

    iget-object v2, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object v3, v0, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/z;->c:J

    iget v6, v0, Lcom/google/android/exoplayer2/z;->d:I

    iget-object v7, v0, Lcom/google/android/exoplayer2/z;->e:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-object v9, v0, Lcom/google/android/exoplayer2/z;->g:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v10, v0, Lcom/google/android/exoplayer2/z;->h:Lcom/google/android/exoplayer2/trackselection/i;

    iget-object v11, v0, Lcom/google/android/exoplayer2/z;->i:Ljava/util/List;

    iget-object v12, v0, Lcom/google/android/exoplayer2/z;->j:Lcom/google/android/exoplayer2/source/r$a;

    iget-boolean v13, v0, Lcom/google/android/exoplayer2/z;->k:Z

    iget v14, v0, Lcom/google/android/exoplayer2/z;->l:I

    iget-object v15, v0, Lcom/google/android/exoplayer2/z;->m:Lcom/google/android/exoplayer2/aa;

    move-object/from16 p1, v1

    move-object/from16 v25, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/z;->p:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/z;->q:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/z;->r:J

    move-wide/from16 v20, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/z;->n:Z

    move/from16 v22, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/z;->o:Z

    move/from16 v23, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct/range {v1 .. v23}, Lcom/google/android/exoplayer2/z;-><init>(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;JILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/i;Ljava/util/List;Lcom/google/android/exoplayer2/source/r$a;ZILcom/google/android/exoplayer2/aa;JJJZZ)V

    return-object v24
.end method

.method public final a(ZI)Lcom/google/android/exoplayer2/z;
    .locals 25

    move-object/from16 v0, p0

    move/from16 v13, p1

    move/from16 v14, p2

    .line 392
    new-instance v24, Lcom/google/android/exoplayer2/z;

    move-object/from16 v1, v24

    iget-object v2, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object v3, v0, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/z;->c:J

    iget v6, v0, Lcom/google/android/exoplayer2/z;->d:I

    iget-object v7, v0, Lcom/google/android/exoplayer2/z;->e:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/z;->f:Z

    iget-object v9, v0, Lcom/google/android/exoplayer2/z;->g:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v10, v0, Lcom/google/android/exoplayer2/z;->h:Lcom/google/android/exoplayer2/trackselection/i;

    iget-object v11, v0, Lcom/google/android/exoplayer2/z;->i:Ljava/util/List;

    iget-object v12, v0, Lcom/google/android/exoplayer2/z;->j:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v15, v0, Lcom/google/android/exoplayer2/z;->m:Lcom/google/android/exoplayer2/aa;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/z;->p:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/z;->q:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/z;->r:J

    move-wide/from16 v20, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/z;->n:Z

    move/from16 v22, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/z;->o:Z

    move/from16 v23, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v23}, Lcom/google/android/exoplayer2/z;-><init>(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;JILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/i;Ljava/util/List;Lcom/google/android/exoplayer2/source/r$a;ZILcom/google/android/exoplayer2/aa;JJJZZ)V

    return-object v24
.end method

.method public final b(Z)Lcom/google/android/exoplayer2/z;
    .locals 26

    move-object/from16 v0, p0

    move/from16 v22, p1

    .line 451
    new-instance v24, Lcom/google/android/exoplayer2/z;

    move-object/from16 v1, v24

    iget-object v2, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object v3, v0, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/z;->c:J

    iget v6, v0, Lcom/google/android/exoplayer2/z;->d:I

    iget-object v7, v0, Lcom/google/android/exoplayer2/z;->e:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/z;->f:Z

    iget-object v9, v0, Lcom/google/android/exoplayer2/z;->g:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v10, v0, Lcom/google/android/exoplayer2/z;->h:Lcom/google/android/exoplayer2/trackselection/i;

    iget-object v11, v0, Lcom/google/android/exoplayer2/z;->i:Ljava/util/List;

    iget-object v12, v0, Lcom/google/android/exoplayer2/z;->j:Lcom/google/android/exoplayer2/source/r$a;

    iget-boolean v13, v0, Lcom/google/android/exoplayer2/z;->k:Z

    iget v14, v0, Lcom/google/android/exoplayer2/z;->l:I

    iget-object v15, v0, Lcom/google/android/exoplayer2/z;->m:Lcom/google/android/exoplayer2/aa;

    move-object/from16 p1, v1

    move-object/from16 v25, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/z;->p:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/z;->q:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/z;->r:J

    move-wide/from16 v20, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/z;->o:Z

    move/from16 v23, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct/range {v1 .. v23}, Lcom/google/android/exoplayer2/z;-><init>(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;JILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/i;Ljava/util/List;Lcom/google/android/exoplayer2/source/r$a;ZILcom/google/android/exoplayer2/aa;JJJZZ)V

    return-object v24
.end method
