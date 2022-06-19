.class final Lcom/google/android/gms/measurement/internal/kj;
.super Lcom/google/android/gms/measurement/internal/ki;
.source "com.google.android.gms:play-services-measurement@@17.4.2"


# instance fields
.field private g:Lcom/google/android/gms/internal/measurement/ag$b;

.field private final synthetic h:Lcom/google/android/gms/measurement/internal/kf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/kf;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/ag$b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/ki;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/kj;->g:Lcom/google/android/gms/internal/measurement/ag$b;

    .line 4
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kj;->g:Lcom/google/android/gms/internal/measurement/ag$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ag$b;->b()I

    move-result v0

    return v0
.end method

.method final a(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/ao$c;JLcom/google/android/gms/measurement/internal/n;Z)Z
    .locals 14

    .prologue
    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/iz;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/kj;->a:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/t;->ag:Lcom/google/android/gms/measurement/internal/dr;

    .line 10
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/b;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v2

    .line 11
    if-eqz v2, :cond_3

    const/4 v2, 0x1

    move v5, v2

    .line 13
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kj;->g:Lcom/google/android/gms/internal/measurement/ag$b;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$b;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    move-object/from16 v0, p6

    iget-wide v0, v0, Lcom/google/android/gms/measurement/internal/n;->e:J

    move-wide/from16 p4, v0

    .line 15
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/dy;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 16
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v4, "Evaluating filter. audience, filter, event"

    iget v2, p0, Lcom/google/android/gms/measurement/internal/kj;->b:I

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 19
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kj;->g:Lcom/google/android/gms/internal/measurement/ag$b;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$b;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kj;->g:Lcom/google/android/gms/internal/measurement/ag$b;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$b;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    .line 20
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/kj;->g:Lcom/google/android/gms/internal/measurement/ag$b;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ag$b;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/dw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 21
    invoke-virtual {v3, v4, v6, v2, v7}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Filter definition"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    .line 24
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/jm;->v_()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/kj;->g:Lcom/google/android/gms/internal/measurement/ag$b;

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ag$b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kj;->g:Lcom/google/android/gms/internal/measurement/ag$b;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$b;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kj;->g:Lcom/google/android/gms/internal/measurement/ag$b;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$b;->b()I

    move-result v2

    const/16 v3, 0x100

    if-le v2, v3, :cond_7

    .line 26
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v4, "Invalid event filter ID. appId, id"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kj;->a:Ljava/lang/String;

    .line 28
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 29
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kj;->g:Lcom/google/android/gms/internal/measurement/ag$b;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$b;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kj;->g:Lcom/google/android/gms/internal/measurement/ag$b;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$b;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/kj;->a:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/t;->ad:Lcom/google/android/gms/measurement/internal/dr;

    .line 32
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/b;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v2

    .line 33
    if-eqz v2, :cond_6

    .line 34
    const/4 v2, 0x0

    .line 173
    :goto_3
    return v2

    .line 11
    :cond_3
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_0

    .line 19
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 29
    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 35
    :cond_6
    const/4 v2, 0x1

    goto :goto_3

    .line 36
    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kj;->g:Lcom/google/android/gms/internal/measurement/ag$b;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$b;->h()Z

    move-result v2

    .line 37
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/kj;->g:Lcom/google/android/gms/internal/measurement/ag$b;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ag$b;->i()Z

    move-result v3

    .line 38
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/kj;->g:Lcom/google/android/gms/internal/measurement/ag$b;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ag$b;->k()Z

    move-result v4

    .line 39
    if-nez v2, :cond_8

    if-nez v3, :cond_8

    if-eqz v4, :cond_9

    :cond_8
    const/4 v2, 0x1

    move v7, v2

    .line 40
    :goto_4
    if-eqz p7, :cond_b

    if-nez v7, :cond_b

    .line 41
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v4, "Event filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    iget v2, p0, Lcom/google/android/gms/measurement/internal/kj;->b:I

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 44
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kj;->g:Lcom/google/android/gms/internal/measurement/ag$b;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$b;->a()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kj;->g:Lcom/google/android/gms/internal/measurement/ag$b;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$b;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 45
    :goto_5
    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    const/4 v2, 0x1

    goto :goto_3

    .line 39
    :cond_9
    const/4 v2, 0x0

    move v7, v2

    goto :goto_4

    .line 44
    :cond_a
    const/4 v2, 0x0

    goto :goto_5

    .line 47
    :cond_b
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/kj;->g:Lcom/google/android/gms/internal/measurement/ag$b;

    .line 48
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/ao$c;->c()Ljava/lang/String;

    move-result-object v8

    .line 49
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ag$b;->f()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 50
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ag$b;->g()Lcom/google/android/gms/internal/measurement/ag$d;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/kj;->a(JLcom/google/android/gms/internal/measurement/ag$d;)Ljava/lang/Boolean;

    move-result-object v2

    .line 51
    if-nez v2, :cond_c

    .line 52
    const/4 v2, 0x0

    .line 156
    :goto_6
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v6, "Event filter result"

    if-nez v2, :cond_27

    const-string/jumbo v3, "null"

    :goto_7
    invoke-virtual {v4, v6, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    if-nez v2, :cond_28

    .line 158
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 53
    :cond_c
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_d

    .line 54
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_6

    .line 55
    :cond_d
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 56
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ag$b;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ag$c;

    .line 57
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$c;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 58
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "null or empty param name in filter. event"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    .line 60
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/google/android/gms/measurement/internal/dw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 61
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    const/4 v2, 0x0

    goto :goto_6

    .line 63
    :cond_e
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 65
    :cond_f
    new-instance v9, Landroidx/b/a;

    invoke-direct {v9}, Landroidx/b/a;-><init>()V

    .line 66
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/ao$c;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_10
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$e;

    .line 67
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$e;->b()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 68
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$e;->e()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 69
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$e;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$e;->e()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$e;->f()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_a
    invoke-interface {v9, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_11
    const/4 v2, 0x0

    goto :goto_a

    .line 70
    :cond_12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$e;->g()Z

    move-result v10

    if-eqz v10, :cond_14

    .line 72
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$e;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$e;->g()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$e;->h()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 73
    :goto_b
    invoke-interface {v9, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 72
    :cond_13
    const/4 v2, 0x0

    goto :goto_b

    .line 74
    :cond_14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$e;->c()Z

    move-result v10

    if-eqz v10, :cond_15

    .line 75
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$e;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 76
    :cond_15
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    .line 77
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v4, "Unknown value for param. event, param"

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    .line 78
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/dw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    .line 79
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/android/gms/measurement/internal/dw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-virtual {v3, v4, v6, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 83
    :cond_16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ag$b;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_17
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ag$c;

    .line 84
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$c;->e()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$c;->f()Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v3, 0x1

    move v6, v3

    .line 85
    :goto_c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$c;->h()Ljava/lang/String;

    move-result-object v11

    .line 86
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 87
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 88
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Event has empty param name. event"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    .line 89
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/google/android/gms/measurement/internal/dw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 84
    :cond_18
    const/4 v3, 0x0

    move v6, v3

    goto :goto_c

    .line 92
    :cond_19
    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 93
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_1c

    .line 94
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$c;->c()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 95
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "No number filter for long param. event, param"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    .line 97
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/google/android/gms/measurement/internal/dw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    .line 98
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/dw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 99
    invoke-virtual {v2, v3, v4, v6}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 101
    :cond_1a
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$c;->d()Lcom/google/android/gms/internal/measurement/ag$d;

    move-result-object v2

    invoke-static {v12, v13, v2}, Lcom/google/android/gms/measurement/internal/kj;->a(JLcom/google/android/gms/internal/measurement/ag$d;)Ljava/lang/Boolean;

    move-result-object v2

    .line 102
    if-nez v2, :cond_1b

    .line 103
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 104
    :cond_1b
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v6, :cond_17

    .line 105
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_6

    .line 106
    :cond_1c
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_1f

    .line 107
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$c;->c()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 108
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "No number filter for double param. event, param"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    .line 110
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/google/android/gms/measurement/internal/dw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    .line 111
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/dw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 112
    invoke-virtual {v2, v3, v4, v6}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 114
    :cond_1d
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$c;->d()Lcom/google/android/gms/internal/measurement/ag$d;

    move-result-object v2

    invoke-static {v12, v13, v2}, Lcom/google/android/gms/measurement/internal/kj;->a(DLcom/google/android/gms/internal/measurement/ag$d;)Ljava/lang/Boolean;

    move-result-object v2

    .line 115
    if-nez v2, :cond_1e

    .line 116
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 117
    :cond_1e
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v6, :cond_17

    .line 118
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_6

    .line 119
    :cond_1f
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_24

    .line 120
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$c;->a()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 121
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$c;->b()Lcom/google/android/gms/internal/measurement/ag$f;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/google/android/gms/measurement/internal/kj;->a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ag$f;Lcom/google/android/gms/measurement/internal/dy;)Ljava/lang/Boolean;

    move-result-object v2

    .line 137
    :goto_d
    if-nez v2, :cond_23

    .line 138
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 122
    :cond_20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$c;->c()Z

    move-result v4

    if-eqz v4, :cond_22

    move-object v4, v3

    .line 123
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 124
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$c;->d()Lcom/google/android/gms/internal/measurement/ag$d;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gms/measurement/internal/kj;->a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ag$d;)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_d

    .line 125
    :cond_21
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 126
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Invalid param value for number filter. event, param"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    .line 127
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/google/android/gms/measurement/internal/dw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    .line 128
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/dw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 129
    invoke-virtual {v2, v3, v4, v6}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 131
    :cond_22
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 132
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "No filter for String param. event, param"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    .line 133
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/google/android/gms/measurement/internal/dw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    .line 134
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/dw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 135
    invoke-virtual {v2, v3, v4, v6}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 139
    :cond_23
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v6, :cond_17

    .line 140
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_6

    .line 141
    :cond_24
    if-nez v3, :cond_25

    .line 142
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 143
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Missing param for filter. event, param"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    .line 144
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/google/android/gms/measurement/internal/dw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    .line 145
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/dw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 146
    invoke-virtual {v2, v3, v4, v6}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_6

    .line 148
    :cond_25
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 149
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Unknown param type. event, param"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    .line 150
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/google/android/gms/measurement/internal/dw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/kj;->h:Lcom/google/android/gms/measurement/internal/kf;

    .line 151
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/dw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 152
    invoke-virtual {v2, v3, v4, v6}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 154
    :cond_26
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_6

    :cond_27
    move-object v3, v2

    .line 156
    goto/16 :goto_7

    .line 159
    :cond_28
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/kj;->c:Ljava/lang/Boolean;

    .line 160
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_29

    .line 161
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 162
    :cond_29
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/kj;->d:Ljava/lang/Boolean;

    .line 163
    if-eqz v7, :cond_2a

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/ao$c;->d()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 165
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/ao$c;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 166
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/kj;->g:Lcom/google/android/gms/internal/measurement/ag$b;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ag$b;->i()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 167
    if-eqz v5, :cond_2d

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/kj;->g:Lcom/google/android/gms/internal/measurement/ag$b;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ag$b;->f()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 169
    :goto_e
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/kj;->f:Ljava/lang/Long;

    .line 173
    :cond_2a
    :goto_f
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 170
    :cond_2b
    if-eqz v5, :cond_2c

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/kj;->g:Lcom/google/android/gms/internal/measurement/ag$b;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ag$b;->f()Z

    move-result v3

    if-eqz v3, :cond_2c

    move-object/from16 v2, p2

    .line 172
    :cond_2c
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/kj;->e:Ljava/lang/Long;

    goto :goto_f

    :cond_2d
    move-object p1, v2

    goto :goto_e
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x0

    return v0
.end method

.method final c()Z
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kj;->g:Lcom/google/android/gms/internal/measurement/ag$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ag$b;->f()Z

    move-result v0

    return v0
.end method
