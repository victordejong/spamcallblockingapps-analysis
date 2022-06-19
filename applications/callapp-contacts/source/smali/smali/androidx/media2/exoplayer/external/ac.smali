.class final Landroidx/media2/exoplayer/external/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final n:Landroidx/media2/exoplayer/external/source/t$a;


# instance fields
.field public final a:Landroidx/media2/exoplayer/external/al;

.field public final b:Landroidx/media2/exoplayer/external/source/t$a;

.field public final c:J

.field public final d:J

.field public final e:I

.field public final f:Landroidx/media2/exoplayer/external/ExoPlaybackException;

.field public final g:Z

.field public final h:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

.field public final i:Landroidx/media2/exoplayer/external/trackselection/h;

.field public final j:Landroidx/media2/exoplayer/external/source/t$a;

.field public volatile k:J

.field public volatile l:J

.field public volatile m:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Landroidx/media2/exoplayer/external/source/t$a;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/source/t$a;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroidx/media2/exoplayer/external/ac;->n:Landroidx/media2/exoplayer/external/source/t$a;

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/al;Landroidx/media2/exoplayer/external/source/t$a;JJILandroidx/media2/exoplayer/external/ExoPlaybackException;ZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/h;Landroidx/media2/exoplayer/external/source/t$a;JJJ)V
    .locals 3

    move-object v0, p0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 145
    iput-object v1, v0, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    move-object v1, p2

    .line 146
    iput-object v1, v0, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    move-wide v1, p3

    .line 147
    iput-wide v1, v0, Landroidx/media2/exoplayer/external/ac;->c:J

    move-wide v1, p5

    .line 148
    iput-wide v1, v0, Landroidx/media2/exoplayer/external/ac;->d:J

    move v1, p7

    .line 149
    iput v1, v0, Landroidx/media2/exoplayer/external/ac;->e:I

    move-object v1, p8

    .line 150
    iput-object v1, v0, Landroidx/media2/exoplayer/external/ac;->f:Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move v1, p9

    .line 151
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/ac;->g:Z

    move-object v1, p10

    .line 152
    iput-object v1, v0, Landroidx/media2/exoplayer/external/ac;->h:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-object v1, p11

    .line 153
    iput-object v1, v0, Landroidx/media2/exoplayer/external/ac;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    move-object v1, p12

    .line 154
    iput-object v1, v0, Landroidx/media2/exoplayer/external/ac;->j:Landroidx/media2/exoplayer/external/source/t$a;

    move-wide/from16 v1, p13

    .line 155
    iput-wide v1, v0, Landroidx/media2/exoplayer/external/ac;->k:J

    move-wide/from16 v1, p15

    .line 156
    iput-wide v1, v0, Landroidx/media2/exoplayer/external/ac;->l:J

    move-wide/from16 v1, p17

    .line 157
    iput-wide v1, v0, Landroidx/media2/exoplayer/external/ac;->m:J

    return-void
.end method

.method public static a(JLandroidx/media2/exoplayer/external/trackselection/h;)Landroidx/media2/exoplayer/external/ac;
    .locals 20

    move-wide/from16 v3, p0

    move-wide/from16 v13, p0

    move-wide/from16 v17, p0

    move-object/from16 v11, p2

    .line 99
    new-instance v19, Landroidx/media2/exoplayer/external/ac;

    move-object/from16 v0, v19

    sget-object v1, Landroidx/media2/exoplayer/external/al;->a:Landroidx/media2/exoplayer/external/al;

    sget-object v2, Landroidx/media2/exoplayer/external/ac;->n:Landroidx/media2/exoplayer/external/source/t$a;

    move-object v12, v2

    sget-object v10, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->EMPTY:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v15, 0x0

    invoke-direct/range {v0 .. v18}, Landroidx/media2/exoplayer/external/ac;-><init>(Landroidx/media2/exoplayer/external/al;Landroidx/media2/exoplayer/external/source/t$a;JJILandroidx/media2/exoplayer/external/ExoPlaybackException;ZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/h;Landroidx/media2/exoplayer/external/source/t$a;JJJ)V

    return-object v19
.end method


# virtual methods
.method public final a(I)Landroidx/media2/exoplayer/external/ac;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v8, p1

    .line 251
    new-instance v20, Landroidx/media2/exoplayer/external/ac;

    move-object/from16 v1, v20

    iget-object v2, v0, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    iget-wide v4, v0, Landroidx/media2/exoplayer/external/ac;->c:J

    iget-wide v6, v0, Landroidx/media2/exoplayer/external/ac;->d:J

    iget-object v9, v0, Landroidx/media2/exoplayer/external/ac;->f:Landroidx/media2/exoplayer/external/ExoPlaybackException;

    iget-boolean v10, v0, Landroidx/media2/exoplayer/external/ac;->g:Z

    iget-object v11, v0, Landroidx/media2/exoplayer/external/ac;->h:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget-object v12, v0, Landroidx/media2/exoplayer/external/ac;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/ac;->j:Landroidx/media2/exoplayer/external/source/t$a;

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/ac;->k:J

    move-object/from16 p1, v1

    move-object/from16 v21, v2

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/ac;->l:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/ac;->m:J

    move-wide/from16 v18, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct/range {v1 .. v19}, Landroidx/media2/exoplayer/external/ac;-><init>(Landroidx/media2/exoplayer/external/al;Landroidx/media2/exoplayer/external/source/t$a;JJILandroidx/media2/exoplayer/external/ExoPlaybackException;ZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/h;Landroidx/media2/exoplayer/external/source/t$a;JJJ)V

    return-object v20
.end method

.method public final a(Landroidx/media2/exoplayer/external/ExoPlaybackException;)Landroidx/media2/exoplayer/external/ac;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 275
    new-instance v20, Landroidx/media2/exoplayer/external/ac;

    move-object/from16 v1, v20

    iget-object v2, v0, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    iget-wide v4, v0, Landroidx/media2/exoplayer/external/ac;->c:J

    iget-wide v6, v0, Landroidx/media2/exoplayer/external/ac;->d:J

    iget v8, v0, Landroidx/media2/exoplayer/external/ac;->e:I

    iget-boolean v10, v0, Landroidx/media2/exoplayer/external/ac;->g:Z

    iget-object v11, v0, Landroidx/media2/exoplayer/external/ac;->h:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget-object v12, v0, Landroidx/media2/exoplayer/external/ac;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/ac;->j:Landroidx/media2/exoplayer/external/source/t$a;

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/ac;->k:J

    move-object/from16 p1, v1

    move-object/from16 v21, v2

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/ac;->l:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/ac;->m:J

    move-wide/from16 v18, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct/range {v1 .. v19}, Landroidx/media2/exoplayer/external/ac;-><init>(Landroidx/media2/exoplayer/external/al;Landroidx/media2/exoplayer/external/source/t$a;JJILandroidx/media2/exoplayer/external/ExoPlaybackException;ZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/h;Landroidx/media2/exoplayer/external/source/t$a;JJJ)V

    return-object v20
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/h;)Landroidx/media2/exoplayer/external/ac;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    .line 325
    new-instance v20, Landroidx/media2/exoplayer/external/ac;

    move-object/from16 v1, v20

    iget-object v2, v0, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    iget-wide v4, v0, Landroidx/media2/exoplayer/external/ac;->c:J

    iget-wide v6, v0, Landroidx/media2/exoplayer/external/ac;->d:J

    iget v8, v0, Landroidx/media2/exoplayer/external/ac;->e:I

    iget-object v9, v0, Landroidx/media2/exoplayer/external/ac;->f:Landroidx/media2/exoplayer/external/ExoPlaybackException;

    iget-boolean v10, v0, Landroidx/media2/exoplayer/external/ac;->g:Z

    iget-object v13, v0, Landroidx/media2/exoplayer/external/ac;->j:Landroidx/media2/exoplayer/external/source/t$a;

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/ac;->k:J

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/ac;->l:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/ac;->m:J

    move-wide/from16 v18, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v19}, Landroidx/media2/exoplayer/external/ac;-><init>(Landroidx/media2/exoplayer/external/al;Landroidx/media2/exoplayer/external/source/t$a;JJILandroidx/media2/exoplayer/external/ExoPlaybackException;ZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/h;Landroidx/media2/exoplayer/external/source/t$a;JJJ)V

    return-object v20
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/ac;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    .line 349
    new-instance v20, Landroidx/media2/exoplayer/external/ac;

    move-object/from16 v1, v20

    iget-object v2, v0, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    iget-wide v4, v0, Landroidx/media2/exoplayer/external/ac;->c:J

    iget-wide v6, v0, Landroidx/media2/exoplayer/external/ac;->d:J

    iget v8, v0, Landroidx/media2/exoplayer/external/ac;->e:I

    iget-object v9, v0, Landroidx/media2/exoplayer/external/ac;->f:Landroidx/media2/exoplayer/external/ExoPlaybackException;

    iget-boolean v10, v0, Landroidx/media2/exoplayer/external/ac;->g:Z

    iget-object v11, v0, Landroidx/media2/exoplayer/external/ac;->h:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget-object v12, v0, Landroidx/media2/exoplayer/external/ac;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/ac;->k:J

    move-object/from16 p1, v1

    move-object/from16 v21, v2

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/ac;->l:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/ac;->m:J

    move-wide/from16 v18, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct/range {v1 .. v19}, Landroidx/media2/exoplayer/external/ac;-><init>(Landroidx/media2/exoplayer/external/al;Landroidx/media2/exoplayer/external/source/t$a;JJILandroidx/media2/exoplayer/external/ExoPlaybackException;ZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/h;Landroidx/media2/exoplayer/external/source/t$a;JJJ)V

    return-object v20
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/t$a;JJJ)Landroidx/media2/exoplayer/external/ac;
    .locals 21

    move-object/from16 v0, p0

    .line 203
    new-instance v20, Landroidx/media2/exoplayer/external/ac;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    .line 207
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/t$a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    move-wide/from16 v6, p4

    goto :goto_0

    :cond_0
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v6, v3

    :goto_0
    iget v8, v0, Landroidx/media2/exoplayer/external/ac;->e:I

    iget-object v9, v0, Landroidx/media2/exoplayer/external/ac;->f:Landroidx/media2/exoplayer/external/ExoPlaybackException;

    iget-boolean v10, v0, Landroidx/media2/exoplayer/external/ac;->g:Z

    iget-object v11, v0, Landroidx/media2/exoplayer/external/ac;->h:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget-object v12, v0, Landroidx/media2/exoplayer/external/ac;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/ac;->j:Landroidx/media2/exoplayer/external/source/t$a;

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/ac;->k:J

    move-object/from16 v1, v20

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v16, p6

    move-wide/from16 v18, p2

    invoke-direct/range {v1 .. v19}, Landroidx/media2/exoplayer/external/ac;-><init>(Landroidx/media2/exoplayer/external/al;Landroidx/media2/exoplayer/external/source/t$a;JJILandroidx/media2/exoplayer/external/ExoPlaybackException;ZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/h;Landroidx/media2/exoplayer/external/source/t$a;JJJ)V

    return-object v20
.end method

.method public final a(Z)Landroidx/media2/exoplayer/external/ac;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v10, p1

    .line 299
    new-instance v20, Landroidx/media2/exoplayer/external/ac;

    move-object/from16 v1, v20

    iget-object v2, v0, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    iget-wide v4, v0, Landroidx/media2/exoplayer/external/ac;->c:J

    iget-wide v6, v0, Landroidx/media2/exoplayer/external/ac;->d:J

    iget v8, v0, Landroidx/media2/exoplayer/external/ac;->e:I

    iget-object v9, v0, Landroidx/media2/exoplayer/external/ac;->f:Landroidx/media2/exoplayer/external/ExoPlaybackException;

    iget-object v11, v0, Landroidx/media2/exoplayer/external/ac;->h:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget-object v12, v0, Landroidx/media2/exoplayer/external/ac;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/ac;->j:Landroidx/media2/exoplayer/external/source/t$a;

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/ac;->k:J

    move-object/from16 p1, v1

    move-object/from16 v21, v2

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/ac;->l:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/ac;->m:J

    move-wide/from16 v18, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct/range {v1 .. v19}, Landroidx/media2/exoplayer/external/ac;-><init>(Landroidx/media2/exoplayer/external/al;Landroidx/media2/exoplayer/external/source/t$a;JJILandroidx/media2/exoplayer/external/ExoPlaybackException;ZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/h;Landroidx/media2/exoplayer/external/source/t$a;JJJ)V

    return-object v20
.end method

.method public final a(ZLandroidx/media2/exoplayer/external/al$b;Landroidx/media2/exoplayer/external/al$a;)Landroidx/media2/exoplayer/external/source/t$a;
    .locals 5

    .line 170
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/al;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    sget-object p1, Landroidx/media2/exoplayer/external/ac;->n:Landroidx/media2/exoplayer/external/source/t$a;

    return-object p1

    .line 173
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/al;->b(Z)I

    move-result p1

    .line 174
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    const-wide/16 v1, 0x0

    .line 1648
    invoke-virtual {v0, p1, p2, v1, v2}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$b;J)Landroidx/media2/exoplayer/external/al$b;

    move-result-object p2

    .line 174
    iget p2, p2, Landroidx/media2/exoplayer/external/al$b;->g:I

    .line 175
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;)I

    move-result v0

    const-wide/16 v1, -0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 178
    iget-object v3, p0, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    const/4 v4, 0x0

    .line 1795
    invoke-virtual {v3, v0, p3, v4}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$a;Z)Landroidx/media2/exoplayer/external/al$a;

    move-result-object p3

    .line 178
    iget p3, p3, Landroidx/media2/exoplayer/external/al$a;->c:I

    if-ne p1, p3, :cond_1

    .line 181
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    iget-wide v1, p1, Landroidx/media2/exoplayer/external/source/t$a;->d:J

    .line 184
    :cond_1
    new-instance p1, Landroidx/media2/exoplayer/external/source/t$a;

    iget-object p3, p0, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    invoke-virtual {p3, p2}, Landroidx/media2/exoplayer/external/al;->a(I)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p2, v1, v2}, Landroidx/media2/exoplayer/external/source/t$a;-><init>(Ljava/lang/Object;J)V

    return-object p1
.end method
