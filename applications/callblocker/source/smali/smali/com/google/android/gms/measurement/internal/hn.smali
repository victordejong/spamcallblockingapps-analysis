.class final Lcom/google/android/gms/measurement/internal/hn;
.super Lcom/google/android/gms/measurement/internal/jl;
.source "com.google.android.gms:play-services-measurement@@17.4.2"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/jo;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/jl;-><init>(Lcom/google/android/gms/measurement/internal/jo;)V

    .line 2
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 219
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "This implementation should not be used."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    .prologue
    .line 3
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/r;Ljava/lang/String;)[B
    .locals 23

    .prologue
    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/hn;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->E()V

    .line 6
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/t;->X:Lcom/google/android/gms/measurement/internal/dr;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/measurement/internal/b;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Generating ScionPayload disabled. packageName"

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    const/4 v2, 0x0

    new-array v2, v2, [B

    .line 218
    :goto_0
    return-object v2

    .line 11
    :cond_0
    const-string/jumbo v2, "_iap"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "_iapx"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Generating a payload for this event is not available. package_name, event_name"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    .line 15
    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    const/4 v2, 0x0

    goto :goto_0

    .line 17
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$f;->b()Lcom/google/android/gms/internal/measurement/ao$f$a;

    move-result-object v20

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->u_()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->b()V

    .line 19
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->u_()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/c;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/fg;

    move-result-object v21

    .line 20
    if-nez v21, :cond_2

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Log and bundle not available. package_name"

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    const/4 v2, 0x0

    new-array v2, v2, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->u_()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/c;->s_()V

    goto :goto_0

    .line 25
    :cond_2
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->r()Z

    move-result v2

    if-nez v2, :cond_3

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Log and bundle disabled. package_name"

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    const/4 v2, 0x0

    new-array v2, v2, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->u_()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/c;->s_()V

    goto/16 :goto_0

    .line 30
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$g;->af()Lcom/google/android/gms/internal/measurement/ao$g$a;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/ao$g$a;->a(I)Lcom/google/android/gms/internal/measurement/ao$g$a;

    move-result-object v2

    const-string/jumbo v3, "android"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/ao$g$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    move-result-object v22

    .line 31
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 32
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->c()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->f(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 33
    :cond_4
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 34
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->n()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->e(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 35
    :cond_5
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 36
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->l()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 37
    :cond_6
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->m()J

    move-result-wide v2

    const-wide/32 v4, -0x80000000

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    .line 38
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->m()J

    move-result-wide v2

    long-to-int v2, v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->h(I)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 40
    :cond_7
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->o()J

    move-result-wide v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/ao$g$a;->f(J)Lcom/google/android/gms/internal/measurement/ao$g$a;

    move-result-object v2

    .line 41
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->q()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/measurement/ao$g$a;->k(J)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 42
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->c()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/t;->ao:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/b;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 43
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 44
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->e()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 53
    :cond_8
    :goto_1
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->p()J

    move-result-wide v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/ao$g$a;->h(J)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 54
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/hn;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->B()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/measurement/ao$g$a;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/b;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 56
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/measurement/ao$g$a;->j()Ljava/lang/String;

    .line 57
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 58
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->n(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 60
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v2

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/el;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 61
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->F()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v3, :cond_a

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    .line 62
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_a

    .line 63
    :try_start_3
    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/r;->d:J

    .line 64
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 65
    invoke-static {v2, v4}, Lcom/google/android/gms/measurement/internal/hn;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->h(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    :try_start_4
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_a

    .line 74
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->a(Z)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 76
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->p()Lcom/google/android/gms/measurement/internal/l;

    move-result-object v2

    .line 77
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fy;->A()V

    .line 78
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 79
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    move-result-object v2

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->p()Lcom/google/android/gms/measurement/internal/l;

    move-result-object v3

    .line 81
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fy;->A()V

    .line 82
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 83
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/ao$g$a;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    move-result-object v2

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->p()Lcom/google/android/gms/measurement/internal/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/l;->w_()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/ao$g$a;->f(I)Lcom/google/android/gms/internal/measurement/ao$g$a;

    move-result-object v2

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->p()Lcom/google/android/gms/measurement/internal/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/l;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/ao$g$a;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 87
    :try_start_5
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->d()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/r;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/hn;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->i(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 96
    :try_start_6
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 97
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->i()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->l(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 99
    :cond_b
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->c()Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->u_()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 101
    const/4 v4, 0x0

    .line 102
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/jx;

    .line 103
    const-string/jumbo v6, "_lte"

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/jx;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 107
    :goto_2
    if-eqz v2, :cond_d

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/jx;->e:Ljava/lang/Object;

    if-nez v2, :cond_e

    .line 108
    :cond_d
    new-instance v2, Lcom/google/android/gms/measurement/internal/jx;

    const-string/jumbo v4, "auto"

    const-string/jumbo v5, "_lte"

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v6

    const-wide/16 v10, 0x0

    .line 110
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/jx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 111
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->u_()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/c;->a(Lcom/google/android/gms/measurement/internal/jx;)Z

    .line 113
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->v_()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v6

    .line 114
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Checking account type status for ad personalization signals"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/fz;->p()Lcom/google/android/gms/measurement/internal/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/l;->f()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 116
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->c()Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->F()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 118
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/jm;->t_()Lcom/google/android/gms/measurement/internal/ex;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ex;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 119
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v4, "Turning off ad personalization due to account type"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 120
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 121
    :cond_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 122
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/jx;

    .line 123
    const-string/jumbo v5, "_npa"

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/jx;->c:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 124
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 127
    :cond_10
    new-instance v2, Lcom/google/android/gms/measurement/internal/jx;

    const-string/jumbo v4, "auto"

    const-string/jumbo v5, "_npa"

    .line 128
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v6

    const-wide/16 v10, 0x1

    .line 129
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/jx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 130
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_11
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    new-array v4, v2, [Lcom/google/android/gms/internal/measurement/ao$k;

    .line 132
    const/4 v2, 0x0

    move v3, v2

    :goto_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_16

    .line 133
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$k;->j()Lcom/google/android/gms/internal/measurement/ao$k$a;

    move-result-object v5

    .line 134
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/jx;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/jx;->c:Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/measurement/ao$k$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$k$a;

    move-result-object v5

    .line 135
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/jx;

    iget-wide v6, v2, Lcom/google/android/gms/measurement/internal/jx;->d:J

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/ao$k$a;->a(J)Lcom/google/android/gms/internal/measurement/ao$k$a;

    move-result-object v5

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->v_()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v6

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/jx;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/jx;->e:Ljava/lang/Object;

    invoke-virtual {v6, v5, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ao$k$a;Ljava/lang/Object;)V

    .line 137
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$k;

    aput-object v2, v4, v3

    .line 138
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    .line 45
    :cond_12
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 46
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->g()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->p(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 210
    :catchall_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->u_()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/c;->s_()V

    .line 211
    throw v2

    .line 47
    :cond_13
    :try_start_7
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 48
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->f()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->o(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    goto/16 :goto_1

    .line 49
    :cond_14
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 50
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->e()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    goto/16 :goto_1

    .line 51
    :cond_15
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 52
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->f()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->o(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    goto/16 :goto_1

    .line 68
    :catch_0
    move-exception v2

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v4, "Resettable device id encryption failed"

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    const/4 v2, 0x0

    new-array v2, v2, [B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->u_()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/c;->s_()V

    goto/16 :goto_0

    .line 91
    :catch_1
    move-exception v2

    .line 92
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v4, "app instance id encryption failed"

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    const/4 v2, 0x0

    new-array v2, v2, [B
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->u_()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/c;->s_()V

    goto/16 :goto_0

    .line 140
    :cond_16
    :try_start_9
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->b(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 141
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/r;->b:Lcom/google/android/gms/measurement/internal/m;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/m;->b()Landroid/os/Bundle;

    move-result-object v2

    .line 142
    const-string/jumbo v3, "_c"

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v4, "Marking in-app purchase as real-time"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 144
    const-string/jumbo v3, "_r"

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 145
    const-string/jumbo v3, "_o"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/r;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/measurement/ao$g$a;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/jw;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v3

    const-string/jumbo v4, "_dbg"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/jw;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v3

    const-string/jumbo v4, "_r"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/jw;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->u_()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/n;

    move-result-object v3

    .line 150
    if-nez v3, :cond_18

    .line 151
    const-wide/16 v18, 0x0

    .line 152
    new-instance v3, Lcom/google/android/gms/measurement/internal/n;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/r;->d:J

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/measurement/internal/n;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object v13, v3

    move-wide/from16 v10, v18

    .line 156
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->u_()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/google/android/gms/measurement/internal/c;->a(Lcom/google/android/gms/measurement/internal/n;)V

    .line 157
    new-instance v3, Lcom/google/android/gms/measurement/internal/k;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/hn;->z:Lcom/google/android/gms/measurement/internal/fd;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/r;->c:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/r;->d:J

    move-object/from16 v6, p2

    move-object v12, v2

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/measurement/internal/k;-><init>(Lcom/google/android/gms/measurement/internal/fd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 158
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$c;->j()Lcom/google/android/gms/internal/measurement/ao$c$a;

    move-result-object v2

    iget-wide v4, v3, Lcom/google/android/gms/measurement/internal/k;->c:J

    .line 159
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/measurement/ao$c$a;->a(J)Lcom/google/android/gms/internal/measurement/ao$c$a;

    move-result-object v2

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/k;->b:Ljava/lang/String;

    .line 160
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/ao$c$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$c$a;

    move-result-object v2

    iget-wide v4, v3, Lcom/google/android/gms/measurement/internal/k;->d:J

    .line 161
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/measurement/ao$c$a;->b(J)Lcom/google/android/gms/internal/measurement/ao$c$a;

    move-result-object v8

    .line 162
    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/k;->e:Lcom/google/android/gms/measurement/internal/m;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/m;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 163
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$e;->k()Lcom/google/android/gms/internal/measurement/ao$e$a;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/measurement/ao$e$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$e$a;

    move-result-object v5

    .line 164
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/k;->e:Lcom/google/android/gms/measurement/internal/m;

    invoke-virtual {v6, v2}, Lcom/google/android/gms/measurement/internal/m;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->v_()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ao$e$a;Ljava/lang/Object;)V

    .line 166
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/ao$c$a;->a(Lcom/google/android/gms/internal/measurement/ao$e$a;)Lcom/google/android/gms/internal/measurement/ao$c$a;

    goto :goto_5

    .line 153
    :cond_18
    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/n;->f:J

    .line 154
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/r;->d:J

    .line 155
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/n;->a(J)Lcom/google/android/gms/measurement/internal/n;

    move-result-object v3

    move-object v13, v3

    goto :goto_4

    .line 169
    :cond_19
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/measurement/ao$g$a;->a(Lcom/google/android/gms/internal/measurement/ao$c$a;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    move-result-object v2

    .line 170
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$h;->a()Lcom/google/android/gms/internal/measurement/ao$h$b;

    move-result-object v3

    .line 171
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$d;->a()Lcom/google/android/gms/internal/measurement/ao$d$a;

    move-result-object v4

    iget-wide v6, v13, Lcom/google/android/gms/measurement/internal/n;->c:J

    .line 172
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/measurement/ao$d$a;->a(J)Lcom/google/android/gms/internal/measurement/ao$d$a;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    .line 173
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/ao$d$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$d$a;

    move-result-object v4

    .line 174
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/ao$h$b;->a(Lcom/google/android/gms/internal/measurement/ao$d$a;)Lcom/google/android/gms/internal/measurement/ao$h$b;

    move-result-object v3

    .line 175
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/ao$g$a;->a(Lcom/google/android/gms/internal/measurement/ao$h$b;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->d()Lcom/google/android/gms/measurement/internal/kf;

    move-result-object v2

    .line 178
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->c()Ljava/lang/String;

    move-result-object v3

    .line 179
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 180
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/measurement/ao$g$a;->d()Ljava/util/List;

    move-result-object v5

    .line 181
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ao$c$a;->f()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 182
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ao$c$a;->f()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 183
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/kf;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v2

    .line 184
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->c(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 185
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ao$c$a;->e()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 187
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ao$c$a;->f()J

    move-result-wide v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/ao$g$a;->b(J)Lcom/google/android/gms/internal/measurement/ao$g$a;

    move-result-object v2

    .line 188
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ao$c$a;->f()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/measurement/ao$g$a;->c(J)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 189
    :cond_1a
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->k()J

    move-result-wide v2

    .line 190
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1b

    .line 191
    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/ao$g$a;->e(J)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 192
    :cond_1b
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->j()J

    move-result-wide v4

    .line 193
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_1d

    .line 194
    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/ao$g$a;->d(J)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 197
    :cond_1c
    :goto_6
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->v()V

    .line 199
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/fg;->s()J

    move-result-wide v2

    long-to-int v2, v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->g(I)Lcom/google/android/gms/internal/measurement/ao$g$a;

    move-result-object v2

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/b;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/measurement/ao$g$a;->g(J)Lcom/google/android/gms/internal/measurement/ao$g$a;

    move-result-object v2

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/measurement/ao$g$a;->a(J)Lcom/google/android/gms/internal/measurement/ao$g$a;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 202
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/ao$g$a;->b(Z)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 203
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ao$f$a;->a(Lcom/google/android/gms/internal/measurement/ao$g$a;)Lcom/google/android/gms/internal/measurement/ao$f$a;

    .line 204
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/measurement/ao$g$a;->f()J

    move-result-wide v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->a(J)V

    .line 205
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/measurement/ao$g$a;->g()J

    move-result-wide v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->b(J)V

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->u_()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/c;->a(Lcom/google/android/gms/measurement/internal/fg;)V

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->u_()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->c()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->u_()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->s_()V

    .line 212
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->v_()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$f;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ck;->ai()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/js;->c([B)[B
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    move-result-object v2

    goto/16 :goto_0

    .line 195
    :cond_1d
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1c

    .line 196
    :try_start_b
    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/ao$g$a;->d(J)Lcom/google/android/gms/internal/measurement/ao$g$a;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_6

    .line 213
    :catch_2
    move-exception v2

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    .line 215
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v4, "Data loss. Failed to bundle and serialize. appId"

    .line 216
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 217
    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 218
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_1e
    move-object v2, v4

    goto/16 :goto_2
.end method
