.class final Lcom/google/android/gms/measurement/internal/fg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/zzas;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/fl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/fl;Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fg;->c:Lcom/google/android/gms/measurement/internal/fl;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/fg;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "_r"

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/fg;->c:Lcom/google/android/gms/measurement/internal/fl;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/fl;->a(Lcom/google/android/gms/measurement/internal/fl;)Lcom/google/android/gms/measurement/internal/jo;

    move-result-object v2

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/jo;->n()V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/fg;->c:Lcom/google/android/gms/measurement/internal/fl;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/fl;->a(Lcom/google/android/gms/measurement/internal/fl;)Lcom/google/android/gms/measurement/internal/jo;

    move-result-object v2

    .line 2
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/jo;->d:Lcom/google/android/gms/measurement/internal/ha;

    .line 1001
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 2
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/zzas;

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/fg;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/measurement/internal/es;->y()V

    .line 5
    invoke-static {v3}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v13}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 2000
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 8
    sget-object v5, Lcom/google/android/gms/measurement/internal/dc;->U:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v4, v13, v5}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v14, 0x0

    if-nez v4, :cond_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    const-string v2, "Generating ScionPayload disabled. packageName"

    .line 10
    invoke-virtual {v0, v2, v13}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v14, v5, [B

    goto/16 :goto_b

    .line 11
    :cond_0
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    const-string v6, "_iap"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    const-string v6, "_iapx"

    .line 12
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 224
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 4000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    .line 225
    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    const-string v3, "Generating a payload for this event is not available. package_name, event_name"

    .line 226
    invoke-virtual {v0, v3, v13, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 13
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/cc;->a()Lcom/google/android/gms/internal/measurement/cb;

    move-result-object v6

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/jd;->f:Lcom/google/android/gms/measurement/internal/jo;

    .line 14
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/jo;->f()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v4

    .line 15
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/i;->b()V

    :try_start_0
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/jd;->f:Lcom/google/android/gms/measurement/internal/jo;

    .line 16
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/jo;->f()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v4

    .line 17
    invoke-virtual {v4, v13}, Lcom/google/android/gms/measurement/internal/i;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/fd;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 5000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    const-string v3, "Log and bundle not available. package_name"

    .line 19
    invoke-virtual {v0, v3, v13}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v14, v5, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/jd;->f:Lcom/google/android/gms/measurement/internal/jo;

    .line 20
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->f()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->V_()V

    goto/16 :goto_b

    .line 22
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->q()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 221
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 6000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    const-string v3, "Log and bundle disabled. package_name"

    .line 222
    invoke-virtual {v0, v3, v13}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v14, v5, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/jd;->f:Lcom/google/android/gms/measurement/internal/jo;

    goto :goto_0

    .line 23
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ce;->c()Lcom/google/android/gms/internal/measurement/cd;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/cd;->a()Lcom/google/android/gms/internal/measurement/cd;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/cd;->k()Lcom/google/android/gms/internal/measurement/cd;

    .line 24
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 25
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/cd;->e(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/cd;

    .line 26
    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->m()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 27
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->m()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/cd;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/cd;

    .line 28
    :cond_5
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->k()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 29
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->k()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/cd;->f(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/cd;

    .line 30
    :cond_6
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->l()J

    move-result-wide v7

    const-wide/32 v9, -0x80000000

    cmp-long v11, v7, v9

    if-eqz v11, :cond_7

    .line 31
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->l()J

    move-result-wide v7

    long-to-int v8, v7

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/cd;->g(I)Lcom/google/android/gms/internal/measurement/cd;

    .line 32
    :cond_7
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->n()J

    move-result-wide v7

    invoke-virtual {v15, v7, v8}, Lcom/google/android/gms/internal/measurement/cd;->f(J)Lcom/google/android/gms/internal/measurement/cd;

    .line 33
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->p()J

    move-result-wide v7

    invoke-virtual {v15, v7, v8}, Lcom/google/android/gms/internal/measurement/cd;->j(J)Lcom/google/android/gms/internal/measurement/cd;

    .line 34
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->d()Ljava/lang/String;

    move-result-object v7

    .line 35
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->e()Ljava/lang/String;

    move-result-object v8

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/measurement/la;->b()Z

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 7000
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 36
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->b()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/measurement/internal/dc;->ag:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 42
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->f()Ljava/lang/String;

    move-result-object v9

    .line 43
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 44
    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/cd;->j(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/cd;

    goto :goto_1

    .line 45
    :cond_8
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 46
    invoke-virtual {v15, v9}, Lcom/google/android/gms/internal/measurement/cd;->m(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/cd;

    goto :goto_1

    .line 47
    :cond_9
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 48
    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/cd;->l(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/cd;

    goto :goto_1

    .line 38
    :cond_a
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 39
    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/cd;->j(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/cd;

    goto :goto_1

    .line 40
    :cond_b
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 41
    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/cd;->l(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/cd;

    .line 44
    :cond_c
    :goto_1
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/ha;->f:Lcom/google/android/gms/measurement/internal/jo;

    .line 49
    invoke-virtual {v7, v13}, Lcom/google/android/gms/measurement/internal/jo;->a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v7

    .line 50
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->o()J

    move-result-wide v8

    invoke-virtual {v15, v8, v9}, Lcom/google/android/gms/internal/measurement/cd;->g(J)Lcom/google/android/gms/internal/measurement/cd;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/ha;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 51
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/es;->r()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 8000
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 51
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/cd;->l()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/e;->e(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 53
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 9000
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 54
    sget-object v9, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    .line 53
    invoke-virtual {v8, v14, v9}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 58
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/f;->b()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 59
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 60
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/cd;->u()Lcom/google/android/gms/internal/measurement/cd;

    goto :goto_2

    .line 55
    :cond_d
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/cd;->l()Ljava/lang/String;

    .line 56
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 57
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/cd;->u()Lcom/google/android/gms/internal/measurement/cd;

    .line 61
    :cond_e
    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 10000
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 62
    sget-object v9, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    .line 61
    invoke-virtual {v8, v14, v9}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 63
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/f;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/cd;->n(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/cd;

    .line 64
    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 11000
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 65
    sget-object v9, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    .line 66
    invoke-virtual {v8, v14, v9}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 67
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/f;->b()Z

    move-result v8

    if-eqz v8, :cond_11

    :cond_10
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/jd;->f:Lcom/google/android/gms/measurement/internal/jo;

    .line 12000
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/jo;->e:Lcom/google/android/gms/measurement/internal/il;

    .line 68
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Lcom/google/android/gms/measurement/internal/il;->a(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/f;)Landroid/util/Pair;

    move-result-object v8

    .line 69
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->x()Z

    move-result v9

    if-eqz v9, :cond_11

    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/CharSequence;

    .line 70
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v9, :cond_11

    .line 71
    :try_start_3
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    .line 72
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/measurement/internal/ha;->b()Ljava/lang/String;

    move-result-object v9

    .line 71
    invoke-virtual {v15, v9}, Lcom/google/android/gms/internal/measurement/cd;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/cd;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    :try_start_4
    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v9, :cond_11

    .line 76
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/cd;->a(Z)Lcom/google/android/gms/internal/measurement/cd;

    goto :goto_3

    :catch_0
    move-exception v0

    .line 223
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 73
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v3

    .line 22000
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    const-string v4, "Resettable device id encryption failed"

    .line 74
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v14, v5, [B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/jd;->f:Lcom/google/android/gms/measurement/internal/jo;

    goto/16 :goto_0

    .line 76
    :cond_11
    :goto_3
    :try_start_5
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 77
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/es;->n()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v8

    .line 78
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/fn;->g()V

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/cd;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/cd;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 79
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/es;->n()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v8

    .line 80
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/fn;->g()V

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/cd;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/cd;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 81
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/es;->n()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v8

    .line 82
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/m;->Z_()J

    move-result-wide v8

    long-to-int v9, v8

    invoke-virtual {v15, v9}, Lcom/google/android/gms/internal/measurement/cd;->e(I)Lcom/google/android/gms/internal/measurement/cd;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 83
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/es;->n()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v8

    .line 84
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/m;->aa_()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/cd;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/cd;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 85
    :try_start_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 13000
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 86
    sget-object v9, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    .line 87
    invoke-virtual {v8, v14, v9}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 88
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/f;->c()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 89
    :cond_12
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->c()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_13

    .line 90
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v7, v3, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    .line 91
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/measurement/internal/ha;->b()Ljava/lang/String;

    move-result-object v7

    .line 92
    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/cd;->h(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/cd;
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 95
    :cond_13
    :try_start_7
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->h()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 96
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->h()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/cd;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/cd;

    .line 97
    :cond_14
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->b()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/jd;->f:Lcom/google/android/gms/measurement/internal/jo;

    .line 98
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/jo;->f()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v8

    .line 99
    invoke-virtual {v8, v7}, Lcom/google/android/gms/measurement/internal/i;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 100
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_15
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/js;

    const-string v11, "_lte"

    .line 101
    iget-object v12, v10, Lcom/google/android/gms/measurement/internal/js;->c:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    goto :goto_4

    :cond_16
    move-object v10, v14

    :goto_4
    const-wide/16 v23, 0x0

    if-eqz v10, :cond_17

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/js;->e:Ljava/lang/Object;

    if-nez v9, :cond_18

    :cond_17
    new-instance v9, Lcom/google/android/gms/measurement/internal/js;

    const-string v18, "auto"

    const-string v19, "_lte"

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 14000
    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/es;->j:Lcom/google/android/gms/common/util/f;

    .line 103
    invoke-interface {v10}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v20

    .line 104
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v16, v9

    move-object/from16 v17, v7

    invoke-direct/range {v16 .. v22}, Lcom/google/android/gms/measurement/internal/js;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 105
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/jd;->f:Lcom/google/android/gms/measurement/internal/jo;

    .line 106
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/jo;->f()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v7

    .line 107
    invoke-virtual {v7, v9}, Lcom/google/android/gms/measurement/internal/i;->a(Lcom/google/android/gms/measurement/internal/js;)Z

    :cond_18
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/jd;->f:Lcom/google/android/gms/measurement/internal/jo;

    .line 108
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/jo;->g()Lcom/google/android/gms/measurement/internal/jq;

    move-result-object v7

    iget-object v9, v7, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 109
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v9

    .line 15000
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v10, "Checking account type status for ad personalization signals"

    .line 110
    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    iget-object v9, v7, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 111
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/es;->n()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v9

    .line 112
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/m;->ab_()Z

    move-result v9

    const-wide/16 v10, 0x1

    if-eqz v9, :cond_1b

    .line 113
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->b()Ljava/lang/String;

    move-result-object v9

    .line 114
    invoke-static {v9}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->x()Z

    move-result v12

    if-eqz v12, :cond_1b

    iget-object v12, v7, Lcom/google/android/gms/measurement/internal/jd;->f:Lcom/google/android/gms/measurement/internal/jo;

    .line 116
    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/jo;->a:Lcom/google/android/gms/measurement/internal/ej;

    .line 15001
    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 117
    invoke-virtual {v12, v9}, Lcom/google/android/gms/measurement/internal/ej;->c(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1b

    iget-object v12, v7, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 118
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v12

    .line 16000
    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    const-string v14, "Turning off ad personalization due to account type"

    .line 119
    invoke-virtual {v12, v14}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    .line 120
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 121
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1a

    const-string v14, "_npa"

    .line 122
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Lcom/google/android/gms/measurement/internal/js;

    .line 123
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/js;->c:Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 124
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_19
    const/4 v5, 0x0

    goto :goto_5

    :cond_1a
    :goto_6
    new-instance v5, Lcom/google/android/gms/measurement/internal/js;

    const-string v18, "auto"

    const-string v19, "_npa"

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 17000
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/es;->j:Lcom/google/android/gms/common/util/f;

    .line 126
    invoke-interface {v7}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v20

    .line 127
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v16, v5

    move-object/from16 v17, v9

    invoke-direct/range {v16 .. v22}, Lcom/google/android/gms/measurement/internal/js;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 128
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_1b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/google/android/gms/internal/measurement/cp;

    const/4 v7, 0x0

    .line 130
    :goto_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_1c

    .line 131
    invoke-static {}, Lcom/google/android/gms/internal/measurement/cp;->d()Lcom/google/android/gms/internal/measurement/co;

    move-result-object v9

    .line 132
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/measurement/internal/js;

    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/js;->c:Ljava/lang/String;

    invoke-virtual {v9, v12}, Lcom/google/android/gms/internal/measurement/co;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/co;

    .line 133
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/measurement/internal/js;

    iget-wide v10, v12, Lcom/google/android/gms/measurement/internal/js;->d:J

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/internal/measurement/co;->a(J)Lcom/google/android/gms/internal/measurement/co;

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/jd;->f:Lcom/google/android/gms/measurement/internal/jo;

    .line 134
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/jo;->g()Lcom/google/android/gms/measurement/internal/jq;

    move-result-object v10

    .line 135
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/js;

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/js;->e:Ljava/lang/Object;

    invoke-virtual {v10, v9, v11}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/internal/measurement/co;Ljava/lang/Object;)V

    .line 136
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/cp;

    aput-object v9, v5, v7

    add-int/lit8 v7, v7, 0x1

    const-wide/16 v10, 0x1

    goto :goto_7

    .line 137
    :cond_1c
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/google/android/gms/internal/measurement/cd;->b(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/cd;

    .line 138
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/dp;->a(Lcom/google/android/gms/measurement/internal/zzas;)Lcom/google/android/gms/measurement/internal/dp;

    move-result-object v5

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 139
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v7

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/dp;->d:Landroid/os/Bundle;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/jd;->f:Lcom/google/android/gms/measurement/internal/jo;

    .line 140
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/jo;->f()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v9

    .line 141
    invoke-virtual {v9, v13}, Lcom/google/android/gms/measurement/internal/i;->e(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 142
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/ju;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 143
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 18000
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 145
    invoke-virtual {v8, v13}, Lcom/google/android/gms/measurement/internal/e;->a(Ljava/lang/String;)I

    move-result v8

    .line 146
    invoke-virtual {v7, v5, v8}, Lcom/google/android/gms/measurement/internal/ju;->a(Lcom/google/android/gms/measurement/internal/dp;I)V

    iget-object v14, v5, Lcom/google/android/gms/measurement/internal/dp;->d:Landroid/os/Bundle;

    const-string v5, "_c"

    const-wide/16 v7, 0x1

    .line 147
    invoke-virtual {v14, v5, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 148
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v5

    .line 19000
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    const-string v7, "Marking in-app purchase as real-time"

    .line 149
    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    const-wide/16 v7, 0x1

    .line 150
    invoke-virtual {v14, v0, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v5, "_o"

    .line 151
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    invoke-virtual {v14, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 152
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v5

    .line 153
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/cd;->l()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/ju;->f(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 154
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v5

    const-wide/16 v7, 0x1

    .line 155
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "_dbg"

    invoke-virtual {v5, v14, v8, v7}, Lcom/google/android/gms/measurement/internal/ju;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 156
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v5

    .line 157
    invoke-virtual {v5, v14, v0, v7}, Lcom/google/android/gms/measurement/internal/ju;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1d
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/jd;->f:Lcom/google/android/gms/measurement/internal/jo;

    .line 158
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->f()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v0

    .line 159
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    invoke-virtual {v0, v13, v5}, Lcom/google/android/gms/measurement/internal/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v0

    if-nez v0, :cond_1e

    new-instance v0, Lcom/google/android/gms/measurement/internal/o;

    .line 160
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    iget-wide v11, v3, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v21, v11

    move-wide/from16 v11, v16

    move-object/from16 v27, v15

    move-wide/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v26, v4

    move-object v4, v0

    move-object/from16 v28, v5

    move-object v5, v13

    move-object/from16 v29, v6

    move-object/from16 v6, v28

    move-object/from16 v28, v13

    move-object/from16 v30, v14

    const/16 v25, 0x0

    move-wide/from16 v13, v21

    .line 161
    invoke-direct/range {v4 .. v20}, Lcom/google/android/gms/measurement/internal/o;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-wide/from16 v11, v23

    goto :goto_8

    :cond_1e
    move-object/from16 v26, v4

    move-object/from16 v29, v6

    move-object/from16 v28, v13

    move-object/from16 v30, v14

    move-object/from16 v27, v15

    const/16 v25, 0x0

    .line 201
    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/o;->f:J

    .line 162
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    .line 163
    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/o;->a(J)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v0

    move-wide v11, v4

    .line 161
    :goto_8
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/jd;->f:Lcom/google/android/gms/measurement/internal/jo;

    .line 164
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/jo;->f()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v4

    .line 165
    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/i;->a(Lcom/google/android/gms/measurement/internal/o;)V

    new-instance v14, Lcom/google/android/gms/measurement/internal/n;

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/ha;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 166
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    move-object v4, v14

    move-object/from16 v7, v28

    move-object/from16 v13, v30

    invoke-direct/range {v4 .. v13}, Lcom/google/android/gms/measurement/internal/n;-><init>(Lcom/google/android/gms/measurement/internal/es;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 167
    invoke-static {}, Lcom/google/android/gms/internal/measurement/bw;->c()Lcom/google/android/gms/internal/measurement/bv;

    move-result-object v4

    iget-wide v5, v14, Lcom/google/android/gms/measurement/internal/n;->d:J

    .line 168
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/bv;->a(J)Lcom/google/android/gms/internal/measurement/bv;

    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/n;->b:Ljava/lang/String;

    .line 169
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/bv;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/bv;

    iget-wide v5, v14, Lcom/google/android/gms/measurement/internal/n;->e:J

    .line 170
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/bv;->b(J)Lcom/google/android/gms/internal/measurement/bv;

    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/n;->f:Lcom/google/android/gms/measurement/internal/zzaq;

    new-instance v6, Lcom/google/android/gms/measurement/internal/p;

    .line 171
    invoke-direct {v6, v5}, Lcom/google/android/gms/measurement/internal/p;-><init>(Lcom/google/android/gms/measurement/internal/zzaq;)V

    .line 172
    :cond_1f
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 173
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p;->a()Ljava/lang/String;

    move-result-object v5

    .line 174
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ca;->e()Lcom/google/android/gms/internal/measurement/bz;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/measurement/bz;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/bz;

    iget-object v8, v14, Lcom/google/android/gms/measurement/internal/n;->f:Lcom/google/android/gms/measurement/internal/zzaq;

    .line 175
    invoke-virtual {v8, v5}, Lcom/google/android/gms/measurement/internal/zzaq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1f

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/jd;->f:Lcom/google/android/gms/measurement/internal/jo;

    .line 176
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/jo;->g()Lcom/google/android/gms/measurement/internal/jq;

    move-result-object v8

    .line 177
    invoke-virtual {v8, v7, v5}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/internal/measurement/bz;Ljava/lang/Object;)V

    .line 178
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/measurement/bv;->a(Lcom/google/android/gms/internal/measurement/bz;)Lcom/google/android/gms/internal/measurement/bv;

    goto :goto_9

    :cond_20
    move-object/from16 v5, v27

    .line 179
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/cd;->a(Lcom/google/android/gms/internal/measurement/bv;)Lcom/google/android/gms/internal/measurement/cd;

    .line 180
    invoke-static {}, Lcom/google/android/gms/internal/measurement/cj;->a()Lcom/google/android/gms/internal/measurement/cf;

    move-result-object v6

    .line 181
    invoke-static {}, Lcom/google/android/gms/internal/measurement/by;->a()Lcom/google/android/gms/internal/measurement/bx;

    move-result-object v7

    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/o;->c:J

    .line 182
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/bx;->a(J)Lcom/google/android/gms/internal/measurement/bx;

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 183
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/bx;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/bx;

    .line 184
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/cf;->a(Lcom/google/android/gms/internal/measurement/bx;)Lcom/google/android/gms/internal/measurement/cf;

    .line 185
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/cd;->a(Lcom/google/android/gms/internal/measurement/cf;)Lcom/google/android/gms/internal/measurement/cd;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/jd;->f:Lcom/google/android/gms/measurement/internal/jo;

    .line 186
    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/jo;->c:Lcom/google/android/gms/measurement/internal/kj;

    .line 19001
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 187
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/measurement/internal/fd;->b()Ljava/lang/String;

    move-result-object v7

    .line 188
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 189
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/cd;->e()Ljava/util/List;

    move-result-object v9

    .line 190
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/bv;->f()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 191
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/bv;->f()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 192
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/kj;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 193
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/cd;->c(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/cd;

    .line 194
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/bv;->e()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 195
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/bv;->f()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/cd;->b(J)Lcom/google/android/gms/internal/measurement/cd;

    .line 196
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/bv;->f()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/cd;->c(J)Lcom/google/android/gms/internal/measurement/cd;

    .line 197
    :cond_21
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/measurement/internal/fd;->j()J

    move-result-wide v3

    cmp-long v0, v3, v23

    if-eqz v0, :cond_22

    .line 198
    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/cd;->e(J)Lcom/google/android/gms/internal/measurement/cd;

    .line 199
    :cond_22
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/measurement/internal/fd;->i()J

    move-result-wide v6

    cmp-long v8, v6, v23

    if-eqz v8, :cond_23

    .line 200
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/cd;->d(J)Lcom/google/android/gms/internal/measurement/cd;

    goto :goto_a

    :cond_23
    if-eqz v0, :cond_24

    .line 201
    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/cd;->d(J)Lcom/google/android/gms/internal/measurement/cd;

    .line 202
    :cond_24
    :goto_a
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/measurement/internal/fd;->u()V

    .line 203
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/measurement/internal/fd;->r()J

    move-result-wide v3

    long-to-int v0, v3

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/cd;->f(I)Lcom/google/android/gms/internal/measurement/cd;

    .line 205
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/cd;->m()Lcom/google/android/gms/internal/measurement/cd;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 21000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->j:Lcom/google/android/gms/common/util/f;

    .line 207
    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/cd;->a(J)Lcom/google/android/gms/internal/measurement/cd;

    const/4 v0, 0x1

    .line 208
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/cd;->b(Z)Lcom/google/android/gms/internal/measurement/cd;

    move-object/from16 v0, v29

    .line 209
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/measurement/cb;->a(Lcom/google/android/gms/internal/measurement/cd;)Lcom/google/android/gms/internal/measurement/cb;

    .line 210
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/cd;->g()J

    move-result-wide v3

    move-object/from16 v6, v26

    invoke-virtual {v6, v3, v4}, Lcom/google/android/gms/measurement/internal/fd;->a(J)V

    .line 211
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/cd;->h()J

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Lcom/google/android/gms/measurement/internal/fd;->b(J)V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/jd;->f:Lcom/google/android/gms/measurement/internal/jo;

    .line 212
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/jo;->f()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v3

    .line 213
    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/i;->a(Lcom/google/android/gms/measurement/internal/fd;)V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/jd;->f:Lcom/google/android/gms/measurement/internal/jo;

    .line 214
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/jo;->f()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v3

    .line 215
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i;->U_()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/jd;->f:Lcom/google/android/gms/measurement/internal/jo;

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/jo;->f()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v3

    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i;->V_()V

    :try_start_8
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/jd;->f:Lcom/google/android/gms/measurement/internal/jo;

    .line 216
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/jo;->g()Lcom/google/android/gms/measurement/internal/jq;

    move-result-object v3

    .line 217
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/cc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ey;->j()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/jq;->b([B)[B

    move-result-object v14
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    .line 21
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 218
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v2

    .line 24000
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    .line 219
    invoke-static/range {v28 .. v28}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Data loss. Failed to bundle and serialize. appId"

    .line 220
    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v14, v25

    goto :goto_b

    :catch_2
    move-exception v0

    .line 21
    :try_start_9
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 93
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v3

    .line 23000
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    const-string v4, "app instance id encryption failed"

    .line 94
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    new-array v14, v3, [B
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/jd;->f:Lcom/google/android/gms/measurement/internal/jo;

    goto/16 :goto_0

    :goto_b
    return-object v14

    :catchall_0
    move-exception v0

    .line 41
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/jd;->f:Lcom/google/android/gms/measurement/internal/jo;

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/jo;->f()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->V_()V

    .line 223
    throw v0
.end method
