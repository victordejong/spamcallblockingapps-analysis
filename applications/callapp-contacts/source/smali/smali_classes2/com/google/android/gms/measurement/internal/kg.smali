.class final Lcom/google/android/gms/measurement/internal/kg;
.super Lcom/google/android/gms/measurement/internal/kh;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/kj;

.field private final h:Lcom/google/android/gms/internal/measurement/ap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/kj;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/kh;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/kg;->h:Lcom/google/android/gms/internal/measurement/ap;

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kg;->h:Lcom/google/android/gms/internal/measurement/ap;

    .line 1000
    iget v0, v0, Lcom/google/android/gms/internal/measurement/ap;->zze:I

    return v0
.end method

.method final a(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/bw;JLcom/google/android/gms/measurement/internal/o;Z)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/kk;->b()Z

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 2000
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 2
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kg;->b:Ljava/lang/String;

    .line 3
    sget-object v4, Lcom/google/android/gms/measurement/internal/dc;->Z:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kg;->h:Lcom/google/android/gms/internal/measurement/ap;

    .line 3000
    iget-boolean v3, v3, Lcom/google/android/gms/internal/measurement/ap;->zzl:Z

    if-eqz v3, :cond_0

    move-object/from16 v3, p6

    .line 4
    iget-wide v3, v3, Lcom/google/android/gms/measurement/internal/o;->e:J

    goto :goto_0

    :cond_0
    move-wide/from16 v3, p4

    :goto_0
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 5
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v5

    .line 6
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/do;->ag_()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    .line 7
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 8
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v5

    .line 4000
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    .line 9
    iget v7, v0, Lcom/google/android/gms/measurement/internal/kg;->c:I

    .line 10
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/kg;->h:Lcom/google/android/gms/internal/measurement/ap;

    .line 11
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ap;->a()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/kg;->h:Lcom/google/android/gms/internal/measurement/ap;

    .line 5000
    iget v8, v8, Lcom/google/android/gms/internal/measurement/ap;->zze:I

    .line 11
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object v8, v6

    :goto_1
    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 12
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v9

    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/kg;->h:Lcom/google/android/gms/internal/measurement/ap;

    .line 6000
    iget-object v10, v10, Lcom/google/android/gms/internal/measurement/ap;->zzf:Ljava/lang/String;

    .line 13
    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/dj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Evaluating filter. audience, filter, event"

    .line 14
    invoke-virtual {v5, v10, v7, v8, v9}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 15
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v5

    .line 7000
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    .line 16
    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/jd;->f:Lcom/google/android/gms/measurement/internal/jo;

    .line 17
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/jo;->g()Lcom/google/android/gms/measurement/internal/jq;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/kg;->h:Lcom/google/android/gms/internal/measurement/ap;

    .line 18
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/internal/measurement/ap;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Filter definition"

    invoke-virtual {v5, v8, v7}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/kg;->h:Lcom/google/android/gms/internal/measurement/ap;

    .line 19
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ap;->a()Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_2b

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/kg;->h:Lcom/google/android/gms/internal/measurement/ap;

    .line 8000
    iget v5, v5, Lcom/google/android/gms/internal/measurement/ap;->zze:I

    const/16 v8, 0x100

    if-le v5, v8, :cond_3

    goto/16 :goto_e

    .line 23
    :cond_3
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/kg;->h:Lcom/google/android/gms/internal/measurement/ap;

    .line 11000
    iget-boolean v5, v5, Lcom/google/android/gms/internal/measurement/ap;->zzj:Z

    .line 24
    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/kg;->h:Lcom/google/android/gms/internal/measurement/ap;

    .line 12000
    iget-boolean v8, v8, Lcom/google/android/gms/internal/measurement/ap;->zzk:Z

    .line 25
    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/kg;->h:Lcom/google/android/gms/internal/measurement/ap;

    .line 13000
    iget-boolean v9, v9, Lcom/google/android/gms/internal/measurement/ap;->zzl:Z

    const/4 v10, 0x1

    if-nez v5, :cond_5

    if-nez v8, :cond_5

    if-eqz v9, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v5, 0x1

    :goto_3
    if-eqz p7, :cond_7

    if-nez v5, :cond_7

    .line 26
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 138
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 14000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    .line 139
    iget v2, v0, Lcom/google/android/gms/measurement/internal/kg;->c:I

    .line 140
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kg;->h:Lcom/google/android/gms/internal/measurement/ap;

    .line 141
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ap;->a()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kg;->h:Lcom/google/android/gms/internal/measurement/ap;

    .line 15000
    iget v3, v3, Lcom/google/android/gms/internal/measurement/ap;->zze:I

    .line 141
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :cond_6
    const-string v3, "Event filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    .line 142
    invoke-virtual {v1, v3, v2, v6}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v10

    :cond_7
    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/kg;->h:Lcom/google/android/gms/internal/measurement/ap;

    .line 16000
    iget-object v9, v1, Lcom/google/android/gms/internal/measurement/bw;->zzf:Ljava/lang/String;

    .line 27
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ap;->c()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 28
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ap;->d()Lcom/google/android/gms/internal/measurement/ax;

    move-result-object v11

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/measurement/internal/kg;->a(JLcom/google/android/gms/internal/measurement/ax;)Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_8

    goto/16 :goto_a

    .line 29
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_a

    .line 129
    :cond_9
    new-instance v3, Ljava/util/HashSet;

    .line 30
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 20000
    iget-object v4, v8, Lcom/google/android/gms/internal/measurement/ap;->zzg:Lcom/google/android/gms/internal/measurement/gs;

    .line 31
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/ar;

    .line 21000
    iget-object v12, v11, Lcom/google/android/gms/internal/measurement/ar;->zzh:Ljava/lang/String;

    .line 32
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_a

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 34
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v3

    .line 22000
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    .line 35
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 36
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v4

    .line 37
    invoke-virtual {v4, v9}, Lcom/google/android/gms/measurement/internal/dj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "null or empty param name in filter. event"

    .line 38
    invoke-virtual {v3, v8, v4}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 23000
    :cond_a
    iget-object v11, v11, Lcom/google/android/gms/internal/measurement/ar;->zzh:Ljava/lang/String;

    .line 33
    invoke-interface {v3, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 39
    :cond_b
    new-instance v4, Landroidx/b/a;

    invoke-direct {v4}, Landroidx/b/a;-><init>()V

    .line 24000
    iget-object v11, v1, Lcom/google/android/gms/internal/measurement/bw;->zze:Lcom/google/android/gms/internal/measurement/gs;

    .line 40
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_c
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/ca;

    .line 25000
    iget-object v13, v12, Lcom/google/android/gms/internal/measurement/ca;->zze:Ljava/lang/String;

    .line 41
    invoke-interface {v3, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 42
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ca;->b()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 26000
    iget-object v13, v12, Lcom/google/android/gms/internal/measurement/ca;->zze:Ljava/lang/String;

    .line 43
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ca;->b()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 27000
    iget-wide v14, v12, Lcom/google/android/gms/internal/measurement/ca;->zzg:J

    .line 43
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    goto :goto_6

    :cond_d
    move-object v12, v6

    :goto_6
    invoke-interface {v4, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 44
    :cond_e
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ca;->c()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 28000
    iget-object v13, v12, Lcom/google/android/gms/internal/measurement/ca;->zze:Ljava/lang/String;

    .line 45
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ca;->c()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 29000
    iget-wide v14, v12, Lcom/google/android/gms/internal/measurement/ca;->zzi:D

    .line 45
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    goto :goto_7

    :cond_f
    move-object v12, v6

    .line 46
    :goto_7
    invoke-interface {v4, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 47
    :cond_10
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ca;->a()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 30000
    iget-object v13, v12, Lcom/google/android/gms/internal/measurement/ca;->zze:Ljava/lang/String;

    .line 31000
    iget-object v12, v12, Lcom/google/android/gms/internal/measurement/ca;->zzf:Ljava/lang/String;

    .line 48
    invoke-interface {v4, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_11
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 49
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v3

    .line 32000
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    .line 50
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 51
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v4

    .line 52
    invoke-virtual {v4, v9}, Lcom/google/android/gms/measurement/internal/dj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 53
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v8

    .line 33000
    iget-object v9, v12, Lcom/google/android/gms/internal/measurement/ca;->zze:Ljava/lang/String;

    .line 54
    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/dj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Unknown value for param. event, param"

    .line 55
    invoke-virtual {v3, v9, v4, v8}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 34000
    :cond_12
    iget-object v3, v8, Lcom/google/android/gms/internal/measurement/ap;->zzg:Lcom/google/android/gms/internal/measurement/gs;

    .line 56
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/ar;

    .line 57
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ar;->e()Z

    move-result v11

    if-eqz v11, :cond_14

    .line 35000
    iget-boolean v11, v8, Lcom/google/android/gms/internal/measurement/ar;->zzg:Z

    if-eqz v11, :cond_14

    const/4 v11, 0x1

    goto :goto_8

    :cond_14
    const/4 v11, 0x0

    .line 36000
    :goto_8
    iget-object v12, v8, Lcom/google/android/gms/internal/measurement/ar;->zzh:Ljava/lang/String;

    .line 59
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_15

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 77
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v3

    .line 37000
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    .line 78
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 79
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v4

    .line 80
    invoke-virtual {v4, v9}, Lcom/google/android/gms/measurement/internal/dj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "Event has empty param name. event"

    .line 81
    invoke-virtual {v3, v8, v4}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 60
    :cond_15
    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 61
    instance-of v14, v13, Ljava/lang/Long;

    if-eqz v14, :cond_18

    .line 62
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ar;->c()Z

    move-result v14

    if-nez v14, :cond_16

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 82
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v3

    .line 38000
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    .line 83
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 84
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v4

    .line 85
    invoke-virtual {v4, v9}, Lcom/google/android/gms/measurement/internal/dj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 86
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v8

    .line 87
    invoke-virtual {v8, v12}, Lcom/google/android/gms/measurement/internal/dj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "No number filter for long param. event, param"

    .line 88
    invoke-virtual {v3, v9, v4, v8}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 63
    :cond_16
    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ar;->d()Lcom/google/android/gms/internal/measurement/ax;

    move-result-object v8

    invoke-static {v12, v13, v8}, Lcom/google/android/gms/measurement/internal/kg;->a(JLcom/google/android/gms/internal/measurement/ax;)Ljava/lang/Boolean;

    move-result-object v8

    if-nez v8, :cond_17

    goto/16 :goto_a

    .line 64
    :cond_17
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-ne v8, v11, :cond_13

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_a

    .line 65
    :cond_18
    instance-of v14, v13, Ljava/lang/Double;

    if-eqz v14, :cond_1b

    .line 66
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ar;->c()Z

    move-result v14

    if-nez v14, :cond_19

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 90
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v3

    .line 39000
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    .line 91
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 92
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v4

    .line 93
    invoke-virtual {v4, v9}, Lcom/google/android/gms/measurement/internal/dj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 94
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v8

    .line 95
    invoke-virtual {v8, v12}, Lcom/google/android/gms/measurement/internal/dj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "No number filter for double param. event, param"

    .line 96
    invoke-virtual {v3, v9, v4, v8}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 67
    :cond_19
    check-cast v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ar;->d()Lcom/google/android/gms/internal/measurement/ax;

    move-result-object v8

    invoke-static {v12, v13, v8}, Lcom/google/android/gms/measurement/internal/kg;->a(DLcom/google/android/gms/internal/measurement/ax;)Ljava/lang/Boolean;

    move-result-object v8

    if-nez v8, :cond_1a

    goto/16 :goto_a

    .line 68
    :cond_1a
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-ne v8, v11, :cond_13

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_a

    .line 69
    :cond_1b
    instance-of v14, v13, Ljava/lang/String;

    if-eqz v14, :cond_20

    .line 70
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ar;->a()Z

    move-result v14

    if-eqz v14, :cond_1c

    .line 71
    check-cast v13, Ljava/lang/String;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ar;->b()Lcom/google/android/gms/internal/measurement/be;

    move-result-object v8

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 72
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v12

    .line 71
    invoke-static {v13, v8, v12}, Lcom/google/android/gms/measurement/internal/kg;->a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/be;Lcom/google/android/gms/measurement/internal/do;)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_9

    .line 73
    :cond_1c
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ar;->c()Z

    move-result v14

    if-eqz v14, :cond_1f

    .line 74
    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1e

    .line 75
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ar;->d()Lcom/google/android/gms/internal/measurement/ax;

    move-result-object v8

    invoke-static {v13, v8}, Lcom/google/android/gms/measurement/internal/kg;->a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ax;)Ljava/lang/Boolean;

    move-result-object v8

    :goto_9
    if-nez v8, :cond_1d

    goto/16 :goto_a

    .line 76
    :cond_1d
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-ne v8, v11, :cond_13

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_a

    .line 75
    :cond_1e
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 99
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v3

    .line 40000
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    .line 100
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 101
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v4

    .line 102
    invoke-virtual {v4, v9}, Lcom/google/android/gms/measurement/internal/dj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 103
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v8

    .line 104
    invoke-virtual {v8, v12}, Lcom/google/android/gms/measurement/internal/dj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Invalid param value for number filter. event, param"

    .line 105
    invoke-virtual {v3, v9, v4, v8}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_1f
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 106
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v3

    .line 41000
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    .line 107
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 108
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v4

    .line 109
    invoke-virtual {v4, v9}, Lcom/google/android/gms/measurement/internal/dj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 110
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v8

    .line 111
    invoke-virtual {v8, v12}, Lcom/google/android/gms/measurement/internal/dj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "No filter for String param. event, param"

    .line 112
    invoke-virtual {v3, v9, v4, v8}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    :cond_20
    if-nez v13, :cond_21

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 113
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v3

    .line 42000
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    .line 114
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 115
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v4

    .line 116
    invoke-virtual {v4, v9}, Lcom/google/android/gms/measurement/internal/dj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 117
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v6

    .line 118
    invoke-virtual {v6, v12}, Lcom/google/android/gms/measurement/internal/dj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "Missing param for filter. event, param"

    .line 119
    invoke-virtual {v3, v8, v4, v6}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a

    .line 120
    :cond_21
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 121
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v3

    .line 43000
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    .line 122
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 123
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v4

    .line 124
    invoke-virtual {v4, v9}, Lcom/google/android/gms/measurement/internal/dj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 125
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v8

    .line 126
    invoke-virtual {v8, v12}, Lcom/google/android/gms/measurement/internal/dj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Unknown param type. event, param"

    .line 127
    invoke-virtual {v3, v9, v4, v8}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    :cond_22
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 28
    :goto_a
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 130
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v3

    .line 17000
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    if-nez v6, :cond_23

    const-string v4, "null"

    goto :goto_b

    :cond_23
    move-object v4, v6

    :goto_b
    const-string v8, "Event filter result"

    .line 131
    invoke-virtual {v3, v8, v4}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v6, :cond_24

    return v7

    :cond_24
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 132
    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/kg;->d:Ljava/lang/Boolean;

    .line 133
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_25

    return v10

    :cond_25
    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/kg;->e:Ljava/lang/Boolean;

    if-eqz v5, :cond_2a

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/bw;->b()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 18000
    iget-wide v3, v1, Lcom/google/android/gms/internal/measurement/bw;->zzg:J

    .line 134
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kg;->h:Lcom/google/android/gms/internal/measurement/ap;

    .line 19000
    iget-boolean v3, v3, Lcom/google/android/gms/internal/measurement/ap;->zzk:Z

    if-eqz v3, :cond_28

    if-eqz v2, :cond_27

    .line 135
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/kg;->h:Lcom/google/android/gms/internal/measurement/ap;

    .line 136
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ap;->c()Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_c

    :cond_26
    move-object/from16 v1, p1

    :cond_27
    :goto_c
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/kg;->g:Ljava/lang/Long;

    goto :goto_d

    :cond_28
    if-eqz v2, :cond_29

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/kg;->h:Lcom/google/android/gms/internal/measurement/ap;

    .line 137
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ap;->c()Z

    move-result v2

    if-eqz v2, :cond_29

    move-object/from16 v1, p2

    :cond_29
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/kg;->f:Ljava/lang/Long;

    :cond_2a
    :goto_d
    return v10

    .line 19
    :cond_2b
    :goto_e
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 9000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    .line 21
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/kg;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kg;->h:Lcom/google/android/gms/internal/measurement/ap;

    .line 22
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ap;->a()Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kg;->h:Lcom/google/android/gms/internal/measurement/ap;

    .line 10000
    iget v3, v3, Lcom/google/android/gms/internal/measurement/ap;->zze:I

    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :cond_2c
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invalid event filter ID. appId, id"

    .line 23
    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v7
.end method

.method final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kg;->h:Lcom/google/android/gms/internal/measurement/ap;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ap;->c()Z

    move-result v0

    return v0
.end method
