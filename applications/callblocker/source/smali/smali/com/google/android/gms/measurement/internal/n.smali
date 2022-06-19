.class final Lcom/google/android/gms/measurement/internal/n;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:J

.field final d:J

.field final e:J

.field final f:J

.field final g:J

.field final h:Ljava/lang/Long;

.field final i:Ljava/lang/Long;

.field final j:Ljava/lang/Long;

.field final k:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V
    .locals 5

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/s;->b(Z)V

    .line 5
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/s;->b(Z)V

    .line 6
    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-ltz v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/common/internal/s;->b(Z)V

    .line 7
    const-wide/16 v2, 0x0

    cmp-long v2, p11, v2

    if-ltz v2, :cond_3

    const/4 v2, 0x1

    :goto_3
    invoke-static {v2}, Lcom/google/android/gms/common/internal/s;->b(Z)V

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/n;->a:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/n;->b:Ljava/lang/String;

    .line 10
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/n;->c:J

    .line 11
    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/n;->d:J

    .line 12
    iput-wide p7, p0, Lcom/google/android/gms/measurement/internal/n;->e:J

    .line 13
    iput-wide p9, p0, Lcom/google/android/gms/measurement/internal/n;->f:J

    .line 14
    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/n;->g:J

    .line 15
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/n;->h:Ljava/lang/Long;

    .line 16
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/n;->i:Ljava/lang/Long;

    .line 17
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/n;->j:Ljava/lang/Long;

    .line 18
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/n;->k:Ljava/lang/Boolean;

    .line 19
    return-void

    .line 4
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 5
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 6
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 7
    :cond_3
    const/4 v2, 0x0

    goto :goto_3
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V
    .locals 19

    .prologue
    .line 20
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v10, p7

    invoke-direct/range {v1 .. v17}, Lcom/google/android/gms/measurement/internal/n;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 21
    return-void
.end method


# virtual methods
.method final a(J)Lcom/google/android/gms/measurement/internal/n;
    .locals 21

    .prologue
    .line 22
    new-instance v3, Lcom/google/android/gms/measurement/internal/n;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/n;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/n;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/n;->c:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/n;->d:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/n;->e:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/gms/measurement/internal/n;->g:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/n;->h:Ljava/lang/Long;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/n;->i:Ljava/lang/Long;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/n;->j:Ljava/lang/Long;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/n;->k:Ljava/lang/Boolean;

    move-object/from16 v19, v0

    move-wide/from16 v12, p1

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/measurement/internal/n;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-object v3
.end method

.method final a(JJ)Lcom/google/android/gms/measurement/internal/n;
    .locals 21

    .prologue
    .line 23
    new-instance v3, Lcom/google/android/gms/measurement/internal/n;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/n;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/n;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/n;->c:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/n;->d:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/n;->e:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/n;->f:J

    .line 24
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/n;->i:Ljava/lang/Long;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/n;->j:Ljava/lang/Long;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/n;->k:Ljava/lang/Boolean;

    move-object/from16 v19, v0

    move-wide/from16 v14, p1

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/measurement/internal/n;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 25
    return-object v3
.end method

.method final a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/n;
    .locals 20

    .prologue
    .line 26
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 27
    const/16 p3, 0x0

    move-object/from16 v19, p3

    .line 28
    :goto_0
    new-instance v3, Lcom/google/android/gms/measurement/internal/n;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/n;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/n;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/n;->c:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/n;->d:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/n;->e:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/n;->f:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/gms/measurement/internal/n;->g:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/n;->h:Ljava/lang/Long;

    move-object/from16 v16, v0

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/measurement/internal/n;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-object v3

    :cond_0
    move-object/from16 v19, p3

    goto :goto_0
.end method
