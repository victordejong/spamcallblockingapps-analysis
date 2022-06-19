.class final Lcom/google/android/gms/measurement/internal/g5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@18.0.3"

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

.field final synthetic c:Lcom/google/android/gms/measurement/internal/l5;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/l5;Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/g5;->c:Lcom/google/android/gms/measurement/internal/l5;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/g5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 31

    move-object/from16 v1, p0

    const-string v0, "_r"

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/g5;->c:Lcom/google/android/gms/measurement/internal/l5;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/l5;->a3(Lcom/google/android/gms/measurement/internal/l5;)Lcom/google/android/gms/measurement/internal/o9;

    move-result-object v2

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o9;->k()V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/g5;->c:Lcom/google/android/gms/measurement/internal/l5;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/l5;->a3(Lcom/google/android/gms/measurement/internal/l5;)Lcom/google/android/gms/measurement/internal/o9;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o9;->Z()Lcom/google/android/gms/measurement/internal/a7;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/zzas;

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/g5;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/measurement/internal/s4;->s()V

    .line 5
    invoke-static {v3}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v13}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 7
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/s4;->y()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v4

    .line 8
    sget-object v5, Lcom/google/android/gms/measurement/internal/c3;->W:Lcom/google/android/gms/measurement/internal/a3;

    invoke-virtual {v4, v13, v5}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v14, 0x0

    if-nez v4, :cond_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->t()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    const-string v2, "Generating ScionPayload disabled. packageName"

    invoke-virtual {v0, v2, v13}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v14, v5, [B

    goto/16 :goto_b

    .line 11
    :cond_0
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzas;->d:Ljava/lang/String;

    const-string v6, "_iap"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzas;->d:Ljava/lang/String;

    const-string v6, "_iapx"

    .line 12
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->t()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/zzas;->d:Ljava/lang/String;

    const-string v3, "Generating a payload for this event is not available. package_name, event_name"

    .line 15
    invoke-virtual {v0, v3, v13, v2}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 16
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/y1;->C()Lcom/google/android/gms/internal/measurement/x1;

    move-result-object v6

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    .line 17
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/o9;->W()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v4

    .line 18
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/i;->M()V

    :try_start_0
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    .line 19
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/o9;->W()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v4

    .line 20
    invoke-virtual {v4, v13}, Lcom/google/android/gms/measurement/internal/i;->c0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/d5;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->t()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    const-string v3, "Log and bundle not available. package_name"

    invoke-virtual {v0, v3, v13}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v14, v5, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    .line 23
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o9;->W()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->O()V

    goto/16 :goto_b

    .line 25
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d5;->f()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->t()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    const-string v3, "Log and bundle disabled. package_name"

    invoke-virtual {v0, v3, v13}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v14, v5, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    goto :goto_0

    .line 28
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/a2;->K0()Lcom/google/android/gms/internal/measurement/z1;

    move-result-object v15

    const/4 v11, 0x1

    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/measurement/z1;->W(I)Lcom/google/android/gms/internal/measurement/z1;

    const-string v7, "android"

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/z1;->t(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;

    .line 29
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d5;->N()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 30
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d5;->N()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/z1;->C(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;

    .line 31
    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d5;->i0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 32
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d5;->i0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/z1;->A(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;

    .line 33
    :cond_5
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d5;->e0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 34
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d5;->e0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/z1;->D(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;

    .line 35
    :cond_6
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d5;->g0()J

    move-result-wide v7

    const-wide/32 v9, -0x80000000

    cmp-long v12, v7, v9

    if-eqz v12, :cond_7

    .line 36
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d5;->g0()J

    move-result-wide v7

    long-to-int v8, v7

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/z1;->Y(I)Lcom/google/android/gms/internal/measurement/z1;

    .line 37
    :cond_7
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d5;->k0()J

    move-result-wide v7

    invoke-virtual {v15, v7, v8}, Lcom/google/android/gms/internal/measurement/z1;->E(J)Lcom/google/android/gms/internal/measurement/z1;

    .line 38
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d5;->d()J

    move-result-wide v7

    invoke-virtual {v15, v7, v8}, Lcom/google/android/gms/internal/measurement/z1;->i0(J)Lcom/google/android/gms/internal/measurement/z1;

    .line 39
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d5;->Q()Ljava/lang/String;

    move-result-object v7

    .line 40
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d5;->S()Ljava/lang/String;

    move-result-object v8

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ia;->a()Z

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 42
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/s4;->y()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v9

    .line 43
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d5;->N()Ljava/lang/String;

    move-result-object v10

    sget-object v12, Lcom/google/android/gms/measurement/internal/c3;->i0:Lcom/google/android/gms/measurement/internal/a3;

    invoke-virtual {v9, v10, v12}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 44
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d5;->U()Ljava/lang/String;

    move-result-object v9

    .line 45
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 46
    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/z1;->S(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;

    goto :goto_1

    .line 47
    :cond_8
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 48
    invoke-virtual {v15, v9}, Lcom/google/android/gms/internal/measurement/z1;->l0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;

    goto :goto_1

    .line 49
    :cond_9
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 50
    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/z1;->f0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;

    goto :goto_1

    .line 51
    :cond_a
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 52
    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/z1;->S(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;

    goto :goto_1

    .line 53
    :cond_b
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 54
    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/z1;->f0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;

    .line 55
    :cond_c
    :goto_1
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    .line 56
    invoke-virtual {v7, v13}, Lcom/google/android/gms/measurement/internal/o9;->g0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v7

    .line 57
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d5;->b()J

    move-result-wide v8

    invoke-virtual {v15, v8, v9}, Lcom/google/android/gms/internal/measurement/z1;->M(J)Lcom/google/android/gms/internal/measurement/z1;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 58
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/s4;->i()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 59
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/s4;->y()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v8

    .line 60
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/z1;->B()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/e;->F(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 61
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g9;->a()Z

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 62
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/s4;->y()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/c3;->y0:Lcom/google/android/gms/measurement/internal/a3;

    .line 63
    invoke-virtual {v8, v14, v9}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 64
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/f;->f()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 65
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 66
    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/measurement/z1;->c0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;

    goto :goto_2

    .line 67
    :cond_d
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/z1;->B()Ljava/lang/String;

    .line 68
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 69
    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/measurement/z1;->c0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;

    .line 70
    :cond_e
    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g9;->a()Z

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 71
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/s4;->y()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/c3;->y0:Lcom/google/android/gms/measurement/internal/a3;

    .line 72
    invoke-virtual {v8, v14, v9}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 73
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/f;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/z1;->m0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;

    .line 74
    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g9;->a()Z

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 75
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/s4;->y()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v8

    .line 76
    invoke-virtual {v8, v14, v9}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 77
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/f;->f()Z

    move-result v8

    if-eqz v8, :cond_11

    :cond_10
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/o9;->b0()Lcom/google/android/gms/measurement/internal/l8;

    move-result-object v8

    .line 78
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d5;->N()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10, v7}, Lcom/google/android/gms/measurement/internal/l8;->k(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/f;)Landroid/util/Pair;

    move-result-object v8

    .line 79
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d5;->G()Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/CharSequence;

    .line 80
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v10, :cond_11

    .line 81
    :try_start_3
    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-wide v11, v3, Lcom/google/android/gms/measurement/internal/zzas;->g:J

    .line 82
    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .line 83
    invoke-static {v10, v11}, Lcom/google/android/gms/measurement/internal/a7;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 84
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/measurement/z1;->G(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    :try_start_4
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v8, :cond_11

    .line 86
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/z1;->I(Z)Lcom/google/android/gms/internal/measurement/z1;

    goto :goto_3

    :catch_0
    move-exception v0

    .line 87
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 88
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v3

    .line 89
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/o3;->t()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v3

    const-string v4, "Resettable device id encryption failed"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v14, v5, [B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    goto/16 :goto_0

    .line 90
    :cond_11
    :goto_3
    :try_start_5
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 91
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/s4;->S()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v8

    .line 92
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/n5;->j()V

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/z1;->w(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 93
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/s4;->S()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v8

    .line 94
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/n5;->j()V

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/z1;->v(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 95
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/s4;->S()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v8

    .line 96
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/m;->m()J

    move-result-wide v10

    long-to-int v8, v10

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/z1;->y(I)Lcom/google/android/gms/internal/measurement/z1;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 97
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/s4;->S()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v8

    .line 98
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/m;->n()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/z1;->x(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 99
    :try_start_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g9;->a()Z

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 100
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/s4;->y()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v8

    .line 101
    invoke-virtual {v8, v14, v9}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 102
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/f;->h()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 103
    :cond_12
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d5;->O()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_13

    .line 104
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d5;->O()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzas;->g:J

    .line 105
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 106
    invoke-static {v7, v8}, Lcom/google/android/gms/measurement/internal/a7;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 107
    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/z1;->K(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 108
    :cond_13
    :try_start_7
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d5;->Y()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 109
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d5;->Y()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/z1;->X(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;

    .line 110
    :cond_14
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d5;->N()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    .line 111
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/o9;->W()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v8

    .line 112
    invoke-virtual {v8, v7}, Lcom/google/android/gms/measurement/internal/i;->V(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 113
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_15
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/s9;

    const-string v11, "_lte"

    .line 114
    iget-object v12, v10, Lcom/google/android/gms/measurement/internal/s9;->c:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    goto :goto_4

    :cond_16
    move-object v10, v14

    :goto_4
    const-wide/16 v24, 0x0

    if-eqz v10, :cond_17

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/s9;->e:Ljava/lang/Object;

    if-nez v9, :cond_18

    :cond_17
    new-instance v9, Lcom/google/android/gms/measurement/internal/s9;

    const-string v19, "auto"

    const-string v20, "_lte"

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 115
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/s4;->x()Lcom/google/android/gms/common/util/e;

    move-result-object v10

    .line 116
    invoke-interface {v10}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v21

    .line 117
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v17, v9

    move-object/from16 v18, v7

    invoke-direct/range {v17 .. v23}, Lcom/google/android/gms/measurement/internal/s9;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 118
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    .line 119
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/o9;->W()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v7

    .line 120
    invoke-virtual {v7, v9}, Lcom/google/android/gms/measurement/internal/i;->T(Lcom/google/android/gms/measurement/internal/s9;)Z

    :cond_18
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    .line 121
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/o9;->a0()Lcom/google/android/gms/measurement/internal/q9;

    move-result-object v7

    iget-object v9, v7, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 122
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v9

    .line 123
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v9

    const-string v10, "Checking account type status for ad personalization signals"

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    iget-object v9, v7, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 124
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/s4;->S()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v9

    .line 125
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/m;->q()Z

    move-result v9

    const-wide/16 v10, 0x1

    if-eqz v9, :cond_1b

    .line 126
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d5;->N()Ljava/lang/String;

    move-result-object v9

    .line 127
    invoke-static {v9}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d5;->G()Z

    move-result v12

    if-eqz v12, :cond_1b

    iget-object v12, v7, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    .line 129
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/o9;->U()Lcom/google/android/gms/measurement/internal/k4;

    move-result-object v12

    .line 130
    invoke-virtual {v12, v9}, Lcom/google/android/gms/measurement/internal/k4;->o(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1b

    iget-object v12, v7, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 131
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v12

    .line 132
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/o3;->t()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v12

    const-string v14, "Turning off ad personalization due to account type"

    invoke-virtual {v12, v14}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    .line 133
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 134
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1a

    const-string v14, "_npa"

    .line 135
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, Lcom/google/android/gms/measurement/internal/s9;

    .line 136
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/s9;->c:Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 137
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_19
    const/4 v5, 0x0

    goto :goto_5

    :cond_1a
    :goto_6
    new-instance v5, Lcom/google/android/gms/measurement/internal/s9;

    const-string v19, "auto"

    const-string v20, "_npa"

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 138
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/s4;->x()Lcom/google/android/gms/common/util/e;

    move-result-object v7

    .line 139
    invoke-interface {v7}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v21

    .line 140
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v17, v5

    move-object/from16 v18, v9

    invoke-direct/range {v17 .. v23}, Lcom/google/android/gms/measurement/internal/s9;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 141
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_1b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/google/android/gms/internal/measurement/k2;

    const/4 v7, 0x0

    .line 143
    :goto_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_1c

    .line 144
    invoke-static {}, Lcom/google/android/gms/internal/measurement/k2;->J()Lcom/google/android/gms/internal/measurement/j2;

    move-result-object v9

    .line 145
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/measurement/internal/s9;

    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/s9;->c:Ljava/lang/String;

    invoke-virtual {v9, v12}, Lcom/google/android/gms/internal/measurement/j2;->v(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/j2;

    .line 146
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/measurement/internal/s9;

    iget-wide v10, v12, Lcom/google/android/gms/measurement/internal/s9;->d:J

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/internal/measurement/j2;->t(J)Lcom/google/android/gms/internal/measurement/j2;

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    .line 147
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/o9;->a0()Lcom/google/android/gms/measurement/internal/q9;

    move-result-object v10

    .line 148
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/s9;

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/s9;->e:Ljava/lang/Object;

    invoke-virtual {v10, v9, v11}, Lcom/google/android/gms/measurement/internal/q9;->s(Lcom/google/android/gms/internal/measurement/j2;Ljava/lang/Object;)V

    .line 149
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/k2;

    aput-object v9, v5, v7

    add-int/lit8 v7, v7, 0x1

    const-wide/16 v10, 0x1

    goto :goto_7

    .line 150
    :cond_1c
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/google/android/gms/internal/measurement/z1;->B0(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/z1;

    .line 151
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/p3;->a(Lcom/google/android/gms/measurement/internal/zzas;)Lcom/google/android/gms/measurement/internal/p3;

    move-result-object v5

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 152
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/s4;->G()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v7

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/p3;->d:Landroid/os/Bundle;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    .line 153
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/o9;->W()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v9

    .line 154
    invoke-virtual {v9, v13}, Lcom/google/android/gms/measurement/internal/i;->u(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 155
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/u9;->t(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 156
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/s4;->G()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 157
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/s4;->y()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v8

    .line 158
    invoke-virtual {v8, v13}, Lcom/google/android/gms/measurement/internal/e;->l(Ljava/lang/String;)I

    move-result v8

    .line 159
    invoke-virtual {v7, v5, v8}, Lcom/google/android/gms/measurement/internal/u9;->s(Lcom/google/android/gms/measurement/internal/p3;I)V

    iget-object v14, v5, Lcom/google/android/gms/measurement/internal/p3;->d:Landroid/os/Bundle;

    const-string v5, "_c"

    const-wide/16 v7, 0x1

    .line 160
    invoke-virtual {v14, v5, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 161
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v5

    .line 162
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/o3;->t()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v5

    const-string v7, "Marking in-app purchase as real-time"

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    const-wide/16 v7, 0x1

    .line 163
    invoke-virtual {v14, v0, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v5, "_o"

    .line 164
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzas;->f:Ljava/lang/String;

    invoke-virtual {v14, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 165
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/s4;->G()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v5

    .line 166
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/z1;->B()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/u9;->H(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 167
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/s4;->G()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v5

    const-wide/16 v7, 0x1

    .line 168
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "_dbg"

    invoke-virtual {v5, v14, v8, v7}, Lcom/google/android/gms/measurement/internal/u9;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 169
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/s4;->G()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v5

    .line 170
    invoke-virtual {v5, v14, v0, v7}, Lcom/google/android/gms/measurement/internal/u9;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1d
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    .line 171
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o9;->W()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v0

    .line 172
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzas;->d:Ljava/lang/String;

    invoke-virtual {v0, v13, v5}, Lcom/google/android/gms/measurement/internal/i;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v0

    if-nez v0, :cond_1e

    new-instance v0, Lcom/google/android/gms/measurement/internal/o;

    .line 173
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzas;->d:Ljava/lang/String;

    iget-wide v11, v3, Lcom/google/android/gms/measurement/internal/zzas;->g:J

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v17, 0x0

    move-wide/from16 v21, v11

    move-wide/from16 v11, v17

    const-wide/16 v16, 0x0

    move-object/from16 v28, v15

    move-wide/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v23, v4

    move-object v4, v0

    move-object/from16 v27, v5

    move-object v5, v13

    move-object/from16 v29, v6

    move-object/from16 v6, v27

    move-object/from16 v27, v13

    move-object/from16 v30, v14

    const/16 v26, 0x0

    move-wide/from16 v13, v21

    .line 174
    invoke-direct/range {v4 .. v20}, Lcom/google/android/gms/measurement/internal/o;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-wide/from16 v11, v24

    goto :goto_8

    :cond_1e
    move-object/from16 v23, v4

    move-object/from16 v29, v6

    move-object/from16 v27, v13

    move-object/from16 v30, v14

    move-object/from16 v28, v15

    const/16 v26, 0x0

    .line 175
    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/o;->f:J

    .line 176
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzas;->g:J

    .line 177
    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/o;->a(J)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v0

    move-wide v11, v4

    .line 178
    :goto_8
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    .line 179
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/o9;->W()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v4

    .line 180
    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/i;->R(Lcom/google/android/gms/measurement/internal/o;)V

    new-instance v14, Lcom/google/android/gms/measurement/internal/n;

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 181
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzas;->f:Ljava/lang/String;

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzas;->d:Ljava/lang/String;

    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzas;->g:J

    move-object v4, v14

    move-object/from16 v7, v27

    move-object/from16 v13, v30

    invoke-direct/range {v4 .. v13}, Lcom/google/android/gms/measurement/internal/n;-><init>(Lcom/google/android/gms/measurement/internal/s4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 182
    invoke-static {}, Lcom/google/android/gms/internal/measurement/s1;->K()Lcom/google/android/gms/internal/measurement/r1;

    move-result-object v4

    iget-wide v5, v14, Lcom/google/android/gms/measurement/internal/n;->d:J

    .line 183
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/r1;->J(J)Lcom/google/android/gms/internal/measurement/r1;

    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/n;->b:Ljava/lang/String;

    .line 184
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/r1;->G(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/r1;

    iget-wide v5, v14, Lcom/google/android/gms/measurement/internal/n;->e:J

    .line 185
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/r1;->L(J)Lcom/google/android/gms/internal/measurement/r1;

    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/n;->f:Lcom/google/android/gms/measurement/internal/zzaq;

    new-instance v6, Lcom/google/android/gms/measurement/internal/p;

    .line 186
    invoke-direct {v6, v5}, Lcom/google/android/gms/measurement/internal/p;-><init>(Lcom/google/android/gms/measurement/internal/zzaq;)V

    .line 187
    :cond_1f
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 188
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p;->a()Ljava/lang/String;

    move-result-object v5

    .line 189
    invoke-static {}, Lcom/google/android/gms/internal/measurement/w1;->M()Lcom/google/android/gms/internal/measurement/v1;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/measurement/v1;->t(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/v1;

    iget-object v8, v14, Lcom/google/android/gms/measurement/internal/n;->f:Lcom/google/android/gms/measurement/internal/zzaq;

    .line 190
    invoke-virtual {v8, v5}, Lcom/google/android/gms/measurement/internal/zzaq;->k0(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1f

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    .line 191
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/o9;->a0()Lcom/google/android/gms/measurement/internal/q9;

    move-result-object v8

    .line 192
    invoke-virtual {v8, v7, v5}, Lcom/google/android/gms/measurement/internal/q9;->t(Lcom/google/android/gms/internal/measurement/v1;Ljava/lang/Object;)V

    .line 193
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/measurement/r1;->B(Lcom/google/android/gms/internal/measurement/v1;)Lcom/google/android/gms/internal/measurement/r1;

    goto :goto_9

    :cond_20
    move-object/from16 v5, v28

    .line 194
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/z1;->r0(Lcom/google/android/gms/internal/measurement/r1;)Lcom/google/android/gms/internal/measurement/z1;

    .line 195
    invoke-static {}, Lcom/google/android/gms/internal/measurement/e2;->A()Lcom/google/android/gms/internal/measurement/b2;

    move-result-object v6

    .line 196
    invoke-static {}, Lcom/google/android/gms/internal/measurement/u1;->A()Lcom/google/android/gms/internal/measurement/t1;

    move-result-object v7

    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/o;->c:J

    .line 197
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/t1;->v(J)Lcom/google/android/gms/internal/measurement/t1;

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzas;->d:Ljava/lang/String;

    .line 198
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/t1;->t(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/t1;

    .line 199
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/b2;->t(Lcom/google/android/gms/internal/measurement/t1;)Lcom/google/android/gms/internal/measurement/b2;

    .line 200
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/z1;->g0(Lcom/google/android/gms/internal/measurement/b2;)Lcom/google/android/gms/internal/measurement/z1;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    .line 201
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o9;->Y()Lcom/google/android/gms/measurement/internal/ja;

    move-result-object v6

    .line 202
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/d5;->N()Ljava/lang/String;

    move-result-object v7

    .line 203
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 204
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/z1;->v0()Ljava/util/List;

    move-result-object v9

    .line 205
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/r1;->I()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 206
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/r1;->I()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 207
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/ja;->k(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 208
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/z1;->U(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/z1;

    .line 209
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/r1;->H()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 210
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/r1;->I()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/z1;->F0(J)Lcom/google/android/gms/internal/measurement/z1;

    .line 211
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/r1;->I()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/z1;->H0(J)Lcom/google/android/gms/internal/measurement/z1;

    .line 212
    :cond_21
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/d5;->c0()J

    move-result-wide v3

    cmp-long v0, v3, v24

    if-eqz v0, :cond_22

    .line 213
    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/z1;->K0(J)Lcom/google/android/gms/internal/measurement/z1;

    .line 214
    :cond_22
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/d5;->a0()J

    move-result-wide v6

    cmp-long v8, v6, v24

    if-eqz v8, :cond_23

    .line 215
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/z1;->I0(J)Lcom/google/android/gms/internal/measurement/z1;

    goto :goto_a

    :cond_23
    if-eqz v0, :cond_24

    .line 216
    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/z1;->I0(J)Lcom/google/android/gms/internal/measurement/z1;

    .line 217
    :cond_24
    :goto_a
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/d5;->n()V

    .line 218
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/d5;->i()J

    move-result-wide v3

    long-to-int v0, v3

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/z1;->N(I)Lcom/google/android/gms/internal/measurement/z1;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 219
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->y()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->n()J

    const-wide/32 v3, 0x9899

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/z1;->F(J)Lcom/google/android/gms/internal/measurement/z1;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 221
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->x()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    .line 222
    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/z1;->D0(J)Lcom/google/android/gms/internal/measurement/z1;

    const/4 v0, 0x1

    .line 223
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/z1;->T(Z)Lcom/google/android/gms/internal/measurement/z1;

    move-object/from16 v0, v29

    .line 224
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/measurement/x1;->v(Lcom/google/android/gms/internal/measurement/z1;)Lcom/google/android/gms/internal/measurement/x1;

    .line 225
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/z1;->E0()J

    move-result-wide v3

    move-object/from16 v6, v23

    invoke-virtual {v6, v3, v4}, Lcom/google/android/gms/measurement/internal/d5;->b0(J)V

    .line 226
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/z1;->G0()J

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Lcom/google/android/gms/measurement/internal/d5;->d0(J)V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    .line 227
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/o9;->W()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v3

    .line 228
    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/i;->d0(Lcom/google/android/gms/measurement/internal/d5;)V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    .line 229
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/o9;->W()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v3

    .line 230
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i;->N()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    .line 231
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/o9;->W()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v3

    .line 232
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i;->O()V

    :try_start_8
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    .line 233
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/o9;->a0()Lcom/google/android/gms/measurement/internal/q9;

    move-result-object v3

    .line 234
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/y1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/o4;->i()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/q9;->H([B)[B

    move-result-object v14
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    .line 235
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 236
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    .line 237
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    invoke-static/range {v27 .. v27}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Data loss. Failed to bundle and serialize. appId"

    .line 238
    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v14, v26

    goto :goto_b

    :catch_2
    move-exception v0

    .line 239
    :try_start_9
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 240
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v3

    .line 241
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/o3;->t()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v3

    const-string v4, "app instance id encryption failed"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    new-array v14, v3, [B
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    goto/16 :goto_0

    :goto_b
    return-object v14

    :catchall_0
    move-exception v0

    .line 242
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    .line 243
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o9;->W()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v2

    .line 244
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->O()V

    .line 245
    throw v0
.end method
