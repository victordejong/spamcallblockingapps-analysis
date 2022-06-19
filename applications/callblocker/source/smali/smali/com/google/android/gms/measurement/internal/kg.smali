.class final Lcom/google/android/gms/measurement/internal/kg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.4.2"


# instance fields
.field private a:Lcom/google/android/gms/internal/measurement/ao$c;

.field private b:Ljava/lang/Long;

.field private c:J

.field private final synthetic d:Lcom/google/android/gms/measurement/internal/kf;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/kf;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/kg;->d:Lcom/google/android/gms/measurement/internal/kf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/kf;Lcom/google/android/gms/measurement/internal/ke;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/kg;-><init>(Lcom/google/android/gms/measurement/internal/kf;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ao$c;)Lcom/google/android/gms/internal/measurement/ao$c;
    .locals 12

    .prologue
    const/4 v1, 0x0

    const-wide/16 v10, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/ao$c;->c()Ljava/lang/String;

    move-result-object v8

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/ao$c;->a()Ljava/util/List;

    move-result-object v7

    .line 4
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/kg;->d:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/jm;->v_()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v3

    const-string/jumbo v4, "_eid"

    invoke-virtual {v3, p2, v4}, Lcom/google/android/gms/measurement/internal/js;->b(Lcom/google/android/gms/internal/measurement/ao$c;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 5
    if-eqz v3, :cond_0

    move v4, v0

    .line 6
    :goto_0
    if-eqz v4, :cond_1

    const-string/jumbo v5, "_ep"

    .line 7
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8
    :goto_1
    if-eqz v0, :cond_b

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kg;->d:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jm;->v_()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v0

    const-string/jumbo v2, "_en"

    invoke-virtual {v0, p2, v2}, Lcom/google/android/gms/measurement/internal/js;->b(Lcom/google/android/gms/internal/measurement/ao$c;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kg;->d:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->c()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v2, "Extra parameter without an event name. eventId"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    .line 64
    :goto_2
    return-object v0

    :cond_0
    move v4, v2

    .line 5
    goto :goto_0

    :cond_1
    move v0, v2

    .line 7
    goto :goto_1

    .line 13
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/internal/measurement/ao$c;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kg;->b:Ljava/lang/Long;

    if-eqz v2, :cond_3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kg;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v2, v4, v8

    if-eqz v2, :cond_6

    .line 14
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kg;->d:Lcom/google/android/gms/measurement/internal/kf;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/jm;->u_()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;Ljava/lang/Long;)Landroid/util/Pair;

    move-result-object v2

    .line 16
    if-eqz v2, :cond_4

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v4, :cond_5

    .line 17
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kg;->d:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->c()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v4, "Extra parameter without existing main event. eventName, eventId"

    .line 19
    invoke-virtual {v2, v4, v0, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 20
    goto :goto_2

    .line 21
    :cond_5
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ao$c;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/internal/measurement/ao$c;

    .line 22
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/measurement/internal/kg;->c:J

    .line 23
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/kg;->d:Lcom/google/android/gms/measurement/internal/kf;

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jm;->v_()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/internal/measurement/ao$c;

    const-string/jumbo v4, "_eid"

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/measurement/internal/js;->b(Lcom/google/android/gms/internal/measurement/ao$c;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/kg;->b:Ljava/lang/Long;

    .line 25
    :cond_6
    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/kg;->c:J

    const-wide/16 v8, 0x1

    sub-long/2addr v4, v8

    iput-wide v4, p0, Lcom/google/android/gms/measurement/internal/kg;->c:J

    .line 26
    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/kg;->c:J

    cmp-long v1, v4, v10

    if-gtz v1, :cond_8

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/kg;->d:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jm;->u_()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 29
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v3, "Clearing complex main event info. appId"

    invoke-virtual {v1, v3, p1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 31
    const-string/jumbo v3, "delete from main_event_params where app_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/internal/measurement/ao$c;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ao$c;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ao$e;

    .line 39
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/kg;->d:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/jm;->v_()Lcom/google/android/gms/measurement/internal/js;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ao$e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ao$c;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$e;

    move-result-object v4

    .line 40
    if-nez v4, :cond_7

    .line 41
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 33
    :catch_0
    move-exception v1

    .line 34
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Error clearing complex main event"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 36
    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/kg;->d:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jm;->u_()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/kg;->c:J

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/internal/measurement/ao$c;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/ao$c;)Z

    goto :goto_3

    .line 43
    :cond_9
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 44
    invoke-interface {v2, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v1, v2

    move-object v3, v0

    .line 63
    :goto_5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/ed;->am()Lcom/google/android/gms/internal/measurement/ed$b;

    move-result-object v0

    .line 64
    check-cast v0, Lcom/google/android/gms/internal/measurement/ed$b;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$c$a;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/ao$c$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$c$a;->c()Lcom/google/android/gms/internal/measurement/ao$c$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ao$c$a;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/ao$c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$c;

    goto/16 :goto_2

    .line 46
    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/kg;->d:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->c()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "No unique parameters in main event. eventName"

    .line 48
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v1, v7

    move-object v3, v0

    .line 49
    goto :goto_5

    :cond_b
    if-eqz v4, :cond_e

    .line 50
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/kg;->b:Ljava/lang/Long;

    .line 51
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/kg;->a:Lcom/google/android/gms/internal/measurement/ao$c;

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kg;->d:Lcom/google/android/gms/measurement/internal/kf;

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jm;->v_()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v1

    const-string/jumbo v2, "_epc"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 54
    invoke-virtual {v1, p2, v2}, Lcom/google/android/gms/measurement/internal/js;->b(Lcom/google/android/gms/internal/measurement/ao$c;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 55
    if-nez v1, :cond_c

    .line 56
    :goto_6
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/kg;->c:J

    .line 57
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/kg;->c:J

    cmp-long v0, v0, v10

    if-gtz v0, :cond_d

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kg;->d:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->c()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Complex event with zero extra param count. eventName"

    .line 60
    invoke-virtual {v0, v1, v8}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v1, v7

    move-object v3, v8

    goto :goto_5

    :cond_c
    move-object v0, v1

    .line 55
    goto :goto_6

    .line 61
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kg;->d:Lcom/google/android/gms/measurement/internal/kf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jm;->u_()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/kg;->c:J

    move-object v2, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/ao$c;)Z

    :cond_e
    move-object v1, v7

    move-object v3, v8

    goto :goto_5
.end method
