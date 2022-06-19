.class final Lcom/google/android/gms/measurement/internal/kf;
.super Lcom/google/android/gms/measurement/internal/jl;
.source "com.google.android.gms:play-services-measurement@@17.4.2"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/measurement/internal/kh;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Long;

.field private f:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/jo;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/jl;-><init>(Lcom/google/android/gms/measurement/internal/jo;)V

    .line 2
    return-void
.end method

.method private final a(I)Lcom/google/android/gms/measurement/internal/kh;
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kf;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kf;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/kh;

    .line 318
    :goto_0
    return-object v0

    .line 316
    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/kh;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/kf;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/kh;-><init>(Lcom/google/android/gms/measurement/internal/kf;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/ke;)V

    .line 317
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/kf;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private final a(II)Z
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kf;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 320
    const/4 v0, 0x0

    .line 321
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kf;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/kh;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/kh;->a(Lcom/google/android/gms/measurement/internal/kh;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/measurement/ao$c;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/measurement/ao$k;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/measurement/ao$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/measurement/internal/kf;->b:Ljava/lang/String;

    .line 8
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/kf;->c:Ljava/util/Set;

    .line 9
    new-instance v2, Landroidx/b/a;

    invoke-direct {v2}, Landroidx/b/a;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/kf;->d:Ljava/util/Map;

    .line 10
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/measurement/internal/kf;->e:Ljava/lang/Long;

    .line 11
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/measurement/internal/kf;->f:Ljava/lang/Long;

    .line 13
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$c;

    .line 14
    const-string/jumbo v4, "_s"

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    const/4 v2, 0x1

    .line 20
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/iz;->b()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/kf;->b:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/t;->ag:Lcom/google/android/gms/measurement/internal/dr;

    .line 22
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/b;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v3

    .line 23
    if-eqz v3, :cond_7

    const/4 v3, 0x1

    move v11, v3

    .line 24
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/iz;->b()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/kf;->b:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/t;->af:Lcom/google/android/gms/measurement/internal/dr;

    .line 26
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/b;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v3

    .line 27
    if-eqz v3, :cond_8

    const/4 v3, 0x1

    move v15, v3

    .line 28
    :goto_2
    if-eqz v2, :cond_1

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->u_()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/kf;->b:Ljava/lang/String;

    .line 30
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 31
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 32
    invoke-static {v5}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 34
    const-string/jumbo v6, "current_session_count"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 35
    :try_start_0
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 36
    const-string/jumbo v7, "events"

    const-string/jumbo v8, "app_id = ?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-virtual {v6, v7, v3, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :cond_1
    :goto_3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 44
    if-eqz v15, :cond_37

    if-eqz v11, :cond_37

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->u_()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/kf;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/c;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    move-object v12, v3

    .line 46
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->u_()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/kf;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/c;->g(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v14

    .line 47
    if-eqz v14, :cond_2

    invoke-interface {v14}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 160
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    .line 161
    new-instance v20, Lcom/google/android/gms/measurement/internal/kg;

    const/4 v2, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/kg;-><init>(Lcom/google/android/gms/measurement/internal/kf;Lcom/google/android/gms/measurement/internal/ke;)V

    .line 162
    new-instance v21, Landroidx/b/a;

    invoke-direct/range {v21 .. v21}, Landroidx/b/a;-><init>()V

    .line 163
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$c;

    .line 164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kf;->b:Ljava/lang/String;

    .line 165
    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/kg;->a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ao$c;)Lcom/google/android/gms/internal/measurement/ao$c;

    move-result-object v23

    .line 166
    if-eqz v23, :cond_3

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->u_()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/kf;->b:Ljava/lang/String;

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/internal/measurement/ao$c;->c()Ljava/lang/String;

    move-result-object v5

    .line 169
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$c;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/n;

    move-result-object v19

    .line 170
    if-nez v19, :cond_20

    .line 171
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v6

    .line 172
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v6

    const-string/jumbo v7, "Event aggregate wasn\'t created during raw event logging. appId, event"

    .line 173
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 174
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/dw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-virtual {v6, v7, v8, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 176
    new-instance v3, Lcom/google/android/gms/measurement/internal/n;

    .line 177
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$c;->c()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x1

    const-wide/16 v10, 0x1

    .line 178
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$c;->e()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/measurement/internal/n;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object v8, v3

    .line 184
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->u_()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/google/android/gms/measurement/internal/c;->a(Lcom/google/android/gms/measurement/internal/n;)V

    .line 185
    iget-wide v6, v8, Lcom/google/android/gms/measurement/internal/n;->c:J

    .line 187
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/internal/measurement/ao$c;->c()Ljava/lang/String;

    move-result-object v3

    .line 188
    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 189
    if-nez v2, :cond_34

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->u_()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/kf;->b:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/c;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 191
    if-nez v2, :cond_4

    .line 192
    new-instance v2, Landroidx/b/a;

    invoke-direct {v2}, Landroidx/b/a;-><init>()V

    .line 193
    :cond_4
    move-object/from16 v0, v21

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v2

    .line 196
    :goto_6
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/kf;->c:Ljava/util/Set;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Skipping failed audience ID"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    .line 17
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 23
    :cond_7
    const/4 v3, 0x0

    move v11, v3

    goto/16 :goto_1

    .line 27
    :cond_8
    const/4 v3, 0x0

    move v15, v3

    goto/16 :goto_2

    .line 38
    :catch_0
    move-exception v3

    .line 39
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    .line 40
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v6, "Error resetting session-scoped event counts. appId"

    .line 41
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 42
    invoke-virtual {v4, v6, v5, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 49
    :cond_9
    new-instance v6, Ljava/util/HashSet;

    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 51
    if-eqz v2, :cond_36

    .line 52
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/kf;->b:Ljava/lang/String;

    .line 54
    invoke-static {v2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    invoke-static {v14}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v5, Landroidx/b/a;

    invoke-direct {v5}, Landroidx/b/a;-><init>()V

    .line 57
    invoke-interface {v14}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->u_()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/c;->f(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 60
    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 61
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$i;

    .line 62
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 63
    if-eqz v3, :cond_b

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 64
    :cond_b
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 67
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->v_()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$i;->c()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v4, v10, v3}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 68
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    .line 70
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ed;->am()Lcom/google/android/gms/internal/measurement/ed$b;

    move-result-object v4

    .line 71
    check-cast v4, Lcom/google/android/gms/internal/measurement/ed$b;

    check-cast v4, Lcom/google/android/gms/internal/measurement/ao$i$a;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ao$i$a;->b()Lcom/google/android/gms/internal/measurement/ao$i$a;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/measurement/ao$i$a;->b(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/ao$i$a;

    move-result-object v10

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->v_()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$i;->a()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v4, v13, v3}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 74
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ao$i$a;->a()Lcom/google/android/gms/internal/measurement/ao$i$a;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/measurement/ao$i$a;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/ao$i$a;

    .line 75
    const/4 v4, 0x0

    :goto_9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$i;->f()I

    move-result v13

    if-ge v4, v13, :cond_e

    .line 77
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/ao$i;->a(I)Lcom/google/android/gms/internal/measurement/ao$b;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/ao$b;->b()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 78
    invoke-interface {v3, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 79
    invoke-virtual {v10, v4}, Lcom/google/android/gms/internal/measurement/ao$i$a;->a(I)Lcom/google/android/gms/internal/measurement/ao$i$a;

    .line 80
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 81
    :cond_e
    const/4 v4, 0x0

    :goto_a
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$i;->h()I

    move-result v13

    if-ge v4, v13, :cond_10

    .line 83
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/ao$i;->b(I)Lcom/google/android/gms/internal/measurement/ao$j;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/ao$j;->b()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 84
    invoke-interface {v3, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 85
    invoke-virtual {v10, v4}, Lcom/google/android/gms/internal/measurement/ao$i$a;->b(I)Lcom/google/android/gms/internal/measurement/ao$i$a;

    .line 86
    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 87
    :cond_10
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$i;

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    :cond_11
    move-object v13, v5

    .line 91
    :goto_b
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_c
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 92
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$i;

    .line 93
    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    .line 94
    new-instance v7, Ljava/util/BitSet;

    invoke-direct {v7}, Ljava/util/BitSet;-><init>()V

    .line 97
    new-instance v8, Landroidx/b/a;

    invoke-direct {v8}, Landroidx/b/a;-><init>()V

    .line 98
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$i;->f()I

    move-result v3

    if-nez v3, :cond_16

    .line 113
    :cond_12
    new-instance v9, Landroidx/b/a;

    invoke-direct {v9}, Landroidx/b/a;-><init>()V

    .line 114
    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$i;->h()I

    move-result v3

    if-nez v3, :cond_19

    .line 125
    :cond_13
    if-eqz v2, :cond_1b

    .line 126
    const/4 v3, 0x0

    :goto_d
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$i;->b()I

    move-result v4

    shl-int/lit8 v4, v4, 0x6

    if-ge v3, v4, :cond_1b

    .line 127
    const/4 v4, 0x0

    .line 128
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$i;->a()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/util/List;I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v5

    .line 130
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v5

    const-string/jumbo v10, "Filter already evaluated. audience ID, filter ID"

    .line 131
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v10, v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    invoke-virtual {v7, v3}, Ljava/util/BitSet;->set(I)V

    .line 133
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$i;->c()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/util/List;I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 134
    invoke-virtual {v6, v3}, Ljava/util/BitSet;->set(I)V

    .line 135
    const/4 v4, 0x1

    .line 136
    :cond_14
    if-nez v4, :cond_15

    .line 137
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 100
    :cond_16
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$i;->e()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_17
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ao$b;

    .line 101
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ao$b;->a()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 103
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ao$b;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 104
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ao$b;->c()Z

    move-result v9

    if-eqz v9, :cond_18

    .line 105
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ao$b;->d()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 107
    :goto_f
    invoke-interface {v8, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 106
    :cond_18
    const/4 v3, 0x0

    goto :goto_f

    .line 116
    :cond_19
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$i;->g()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1a
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ao$j;

    .line 117
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ao$j;->a()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ao$j;->d()I

    move-result v5

    if-lez v5, :cond_1a

    .line 119
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ao$j;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 120
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ao$j;->d()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/measurement/ao$j;->a(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 121
    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 139
    :cond_1b
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/ao$i;

    .line 140
    if-eqz v15, :cond_1c

    if-eqz v11, :cond_1c

    .line 142
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 144
    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kf;->f:Ljava/lang/Long;

    if-eqz v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kf;->e:Ljava/lang/Long;

    if-nez v3, :cond_1d

    .line 156
    :cond_1c
    new-instance v2, Lcom/google/android/gms/measurement/internal/kh;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/kf;->b:Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/measurement/internal/kh;-><init>(Lcom/google/android/gms/measurement/internal/kf;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ao$i;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/ke;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kf;->d:Ljava/util/Map;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    .line 146
    :cond_1d
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1e
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ag$b;

    .line 147
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$b;->b()I

    move-result v10

    .line 148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kf;->f:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v20, 0x3e8

    div-long v16, v16, v20

    .line 149
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$b;->i()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/kf;->e:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v16, 0x3e8

    div-long v2, v2, v16

    .line 151
    :goto_12
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1f

    .line 152
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_1f
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1e

    .line 154
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v9, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 180
    :cond_20
    new-instance v3, Lcom/google/android/gms/measurement/internal/n;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/n;->a:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/n;->b:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/n;->c:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    move-object/from16 v0, v19

    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/n;->d:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    move-object/from16 v0, v19

    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/n;->e:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    move-object/from16 v0, v19

    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/n;->f:J

    move-object/from16 v0, v19

    iget-wide v14, v0, Lcom/google/android/gms/measurement/internal/n;->g:J

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/n;->h:Ljava/lang/Long;

    move-object/from16 v16, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/n;->i:Ljava/lang/Long;

    move-object/from16 v17, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/n;->j:Ljava/lang/Long;

    move-object/from16 v18, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/n;->k:Ljava/lang/Boolean;

    move-object/from16 v19, v0

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/measurement/internal/n;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object v8, v3

    .line 181
    goto/16 :goto_5

    .line 200
    :cond_21
    const/4 v3, 0x1

    .line 201
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 202
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v2, v3

    :goto_13
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/android/gms/internal/measurement/ag$b;

    .line 203
    new-instance v2, Lcom/google/android/gms/measurement/internal/kj;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kf;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v12, v5}, Lcom/google/android/gms/measurement/internal/kj;-><init>(Lcom/google/android/gms/measurement/internal/kf;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/ag$b;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kf;->e:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/kf;->f:Ljava/lang/Long;

    .line 205
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ag$b;->b()I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5}, Lcom/google/android/gms/measurement/internal/kf;->a(II)Z

    move-result v9

    move-object/from16 v5, v23

    .line 206
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/measurement/internal/kj;->a(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/ao$c;JLcom/google/android/gms/measurement/internal/n;Z)Z

    move-result v3

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/kf;->b:Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/measurement/internal/t;->ad:Lcom/google/android/gms/measurement/internal/dr;

    .line 208
    invoke-virtual {v4, v5, v9}, Lcom/google/android/gms/measurement/internal/b;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v4

    .line 209
    if-eqz v4, :cond_22

    .line 210
    if-nez v3, :cond_22

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/kf;->c:Ljava/util/Set;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 216
    :goto_14
    if-nez v3, :cond_5

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/kf;->c:Ljava/util/Set;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 213
    :cond_22
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/gms/measurement/internal/kf;->a(I)Lcom/google/android/gms/measurement/internal/kh;

    move-result-object v4

    .line 214
    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/kh;->a(Lcom/google/android/gms/measurement/internal/ki;)V

    move v2, v3

    .line 215
    goto :goto_13

    .line 221
    :cond_23
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 222
    new-instance v6, Landroidx/b/a;

    invoke-direct {v6}, Landroidx/b/a;-><init>()V

    .line 223
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_24
    :goto_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$k;

    .line 225
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$k;->c()Ljava/lang/String;

    move-result-object v4

    .line 227
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 228
    if-nez v3, :cond_32

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->u_()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/kf;->b:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/measurement/internal/c;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 230
    if-nez v3, :cond_25

    .line 231
    new-instance v3, Landroidx/b/a;

    invoke-direct {v3}, Landroidx/b/a;-><init>()V

    .line 232
    :cond_25
    invoke-interface {v6, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v3

    .line 235
    :goto_16
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_26
    :goto_17
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kf;->c:Ljava/util/Set;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Skipping failed audience ID"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_15

    .line 239
    :cond_27
    const/4 v5, 0x1

    .line 240
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 241
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v3, v5

    :goto_18
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ag$e;

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v5

    const/4 v11, 0x2

    invoke-virtual {v5, v11}, Lcom/google/android/gms/measurement/internal/dy;->a(I)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v5

    .line 244
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v11

    const-string/jumbo v12, "Evaluating filter. audience, filter, property"

    .line 245
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 246
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ag$e;->a()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ag$e;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 247
    :goto_19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v14

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ag$e;->c()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 248
    invoke-virtual {v11, v12, v13, v5, v14}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v5

    .line 250
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v5

    const-string/jumbo v11, "Filter definition"

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->v_()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ag$e;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    :cond_28
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ag$e;->a()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ag$e;->b()I

    move-result v5

    const/16 v11, 0x100

    if-le v5, v11, :cond_2d

    .line 253
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v5

    .line 254
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v5

    const-string/jumbo v10, "Invalid property filter ID. appId, id"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/kf;->b:Ljava/lang/String;

    .line 255
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 256
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ag$e;->a()Z

    move-result v12

    if-eqz v12, :cond_2c

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ag$e;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1a
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-virtual {v5, v10, v11, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 258
    const/4 v3, 0x0

    .line 273
    :cond_2a
    :goto_1b
    if-nez v3, :cond_26

    .line 274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kf;->c:Ljava/util/Set;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    .line 246
    :cond_2b
    const/4 v5, 0x0

    goto :goto_19

    .line 256
    :cond_2c
    const/4 v3, 0x0

    goto :goto_1a

    .line 260
    :cond_2d
    new-instance v5, Lcom/google/android/gms/measurement/internal/kl;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/kf;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v11, v9, v3}, Lcom/google/android/gms/measurement/internal/kl;-><init>(Lcom/google/android/gms/measurement/internal/kf;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/ag$e;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/kf;->e:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/kf;->f:Ljava/lang/Long;

    .line 262
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ag$e;->b()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3}, Lcom/google/android/gms/measurement/internal/kf;->a(II)Z

    move-result v3

    .line 263
    invoke-virtual {v5, v11, v12, v2, v3}, Lcom/google/android/gms/measurement/internal/kl;->a(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/ao$k;Z)Z

    move-result v3

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/kf;->b:Ljava/lang/String;

    sget-object v13, Lcom/google/android/gms/measurement/internal/t;->ad:Lcom/google/android/gms/measurement/internal/dr;

    .line 265
    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/measurement/internal/b;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v11

    .line 266
    if-eqz v11, :cond_2e

    .line 267
    if-nez v3, :cond_2e

    .line 268
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/kf;->c:Ljava/util/Set;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 270
    :cond_2e
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/google/android/gms/measurement/internal/kf;->a(I)Lcom/google/android/gms/measurement/internal/kh;

    move-result-object v11

    .line 271
    invoke-virtual {v11, v5}, Lcom/google/android/gms/measurement/internal/kh;->a(Lcom/google/android/gms/measurement/internal/ki;)V

    goto/16 :goto_18

    .line 278
    :cond_2f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/kf;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 281
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/kf;->c:Ljava/util/Set;

    invoke-interface {v2, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 283
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_30
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/kf;->d:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/kh;

    .line 286
    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/kh;->a(I)Lcom/google/android/gms/internal/measurement/ao$a;

    move-result-object v2

    .line 287
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jm;->u_()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/kf;->b:Ljava/lang/String;

    .line 289
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$a;->c()Lcom/google/android/gms/internal/measurement/ao$i;

    move-result-object v2

    .line 290
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 291
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 292
    invoke-static {v7}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 293
    invoke-static {v2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ck;->ai()[B

    move-result-object v2

    .line 295
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 296
    const-string/jumbo v9, "app_id"

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string/jumbo v9, "audience_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    const-string/jumbo v5, "current_results"

    invoke-virtual {v8, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 299
    :try_start_1
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 300
    const-string/jumbo v5, "audience_filter_values"

    const/4 v9, 0x0

    const/4 v10, 0x5

    .line 301
    invoke-virtual {v2, v5, v9, v8, v10}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v8

    .line 302
    const-wide/16 v10, -0x1

    cmp-long v2, v8, v10

    if-nez v2, :cond_30

    .line 303
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 304
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v5, "Failed to insert filter results (got -1). appId"

    .line 305
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1c

    .line 307
    :catch_1
    move-exception v2

    .line 308
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v5

    .line 309
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v5

    const-string/jumbo v6, "Error storing filter results. appId"

    .line 310
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1c

    .line 313
    :cond_31
    return-object v3

    :cond_32
    move-object v4, v3

    goto/16 :goto_16

    :cond_33
    move v3, v2

    goto/16 :goto_14

    :cond_34
    move-object v10, v2

    goto/16 :goto_6

    :cond_35
    move-wide/from16 v2, v16

    goto/16 :goto_12

    :cond_36
    move-object v13, v14

    goto/16 :goto_b

    :cond_37
    move-object v12, v3

    goto/16 :goto_4
.end method

.method protected final a()Z
    .locals 1

    .prologue
    .line 3
    const/4 v0, 0x0

    return v0
.end method
