.class public final Lcom/google/android/gms/internal/ads/c12;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qw1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/qw1<",
        "Lcom/google/android/gms/internal/ads/fk1;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/bl1;

.field private final c:Lcom/google/android/gms/internal/ads/kk1;

.field private final d:Lcom/google/android/gms/internal/ads/xj2;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Lcom/google/android/gms/internal/ads/zzcgz;

.field private final g:Lcom/google/android/gms/internal/ads/q20;

.field private final h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/xj2;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/kk1;Lcom/google/android/gms/internal/ads/bl1;Lcom/google/android/gms/internal/ads/q20;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/c12;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/c12;->d:Lcom/google/android/gms/internal/ads/xj2;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/c12;->c:Lcom/google/android/gms/internal/ads/kk1;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/c12;->e:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/c12;->f:Lcom/google/android/gms/internal/ads/zzcgz;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/c12;->b:Lcom/google/android/gms/internal/ads/bl1;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/c12;->g:Lcom/google/android/gms/internal/ads/q20;

    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->o6:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/c12;->h:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;)Z
    .locals 0

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/ej2;->s:Lcom/google/android/gms/internal/ads/kj2;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/kj2;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;)Lcom/google/android/gms/internal/ads/r03;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/rj2;",
            "Lcom/google/android/gms/internal/ads/ej2;",
            ")",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/fk1;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/el1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/el1;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/v02;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/google/android/gms/internal/ads/v02;-><init>(Lcom/google/android/gms/internal/ads/c12;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/el1;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/c12;->e:Ljava/util/concurrent/Executor;

    .line 2
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/w02;->a(Lcom/google/android/gms/internal/ads/el1;)Ljava/lang/Runnable;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c12;->e:Ljava/util/concurrent/Executor;

    .line 3
    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/r03;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method final synthetic c(Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/el1;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v1, p2

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/c12;->b:Lcom/google/android/gms/internal/ads/bl1;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/c12;->d:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/xj2;->e:Lcom/google/android/gms/internal/ads/zzbdl;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/rj2;->b:Lcom/google/android/gms/internal/ads/qj2;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/qj2;->b:Lcom/google/android/gms/internal/ads/jj2;

    .line 2
    invoke-virtual {v2, v3, v11, v4}, Lcom/google/android/gms/internal/ads/bl1;->b(Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/jj2;)Lcom/google/android/gms/internal/ads/wn0;

    move-result-object v12

    .line 3
    iget-boolean v2, v11, Lcom/google/android/gms/internal/ads/ej2;->S:Z

    invoke-interface {v12, v2}, Lcom/google/android/gms/internal/ads/wn0;->a0(Z)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/c12;->a:Landroid/content/Context;

    .line 4
    move-object v3, v12

    check-cast v3, Landroid/view/View;

    move-object/from16 v4, p3

    .line 5
    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/el1;->a(Landroid/content/Context;Landroid/view/View;)V

    new-instance v13, Lcom/google/android/gms/internal/ads/vi0;

    .line 6
    invoke-direct {v13}, Lcom/google/android/gms/internal/ads/vi0;-><init>()V

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/c12;->c:Lcom/google/android/gms/internal/ads/kk1;

    new-instance v15, Lcom/google/android/gms/internal/ads/mz0;

    const/4 v10, 0x0

    .line 7
    invoke-direct {v15, v1, v11, v10}, Lcom/google/android/gms/internal/ads/mz0;-><init>(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/gms/internal/ads/hk1;

    new-instance v8, Lcom/google/android/gms/internal/ads/b12;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/c12;->a:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/c12;->b:Lcom/google/android/gms/internal/ads/bl1;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/c12;->d:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/c12;->f:Lcom/google/android/gms/internal/ads/zzcgz;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/c12;->g:Lcom/google/android/gms/internal/ads/q20;

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/c12;->h:Z

    move-object v1, v8

    move/from16 v16, v6

    move-object/from16 v6, p1

    move-object/from16 v17, v7

    move-object v7, v13

    move-object v11, v8

    move-object v8, v12

    move-object v0, v9

    move-object/from16 v9, v17

    move-object/from16 v17, v10

    move/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/b12;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bl1;Lcom/google/android/gms/internal/ads/xj2;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/internal/ads/q20;Z)V

    invoke-direct {v0, v11, v12}, Lcom/google/android/gms/internal/ads/hk1;-><init>(Lcom/google/android/gms/internal/ads/qc1;Lcom/google/android/gms/internal/ads/wn0;)V

    .line 8
    invoke-virtual {v14, v15, v0}, Lcom/google/android/gms/internal/ads/kk1;->b(Lcom/google/android/gms/internal/ads/mz0;Lcom/google/android/gms/internal/ads/hk1;)Lcom/google/android/gms/internal/ads/gk1;

    move-result-object v0

    .line 9
    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/ads/vi0;->c(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/gk1;->k()Lcom/google/android/gms/internal/ads/za1;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/google/android/gms/internal/ads/e30;->b(Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/internal/ads/d30;)V

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yy0;->d()Lcom/google/android/gms/internal/ads/q31;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/x02;

    invoke-direct {v2, v12}, Lcom/google/android/gms/internal/ads/x02;-><init>(Lcom/google/android/gms/internal/ads/wn0;)V

    .line 12
    sget-object v3, Lcom/google/android/gms/internal/ads/qi0;->f:Lcom/google/android/gms/internal/ads/s03;

    .line 13
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/m81;->D0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/gk1;->l()Lcom/google/android/gms/internal/ads/al1;

    move-result-object v1

    move-object/from16 v2, p0

    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/c12;->h:Z

    if-eqz v3, :cond_0

    iget-object v10, v2, Lcom/google/android/gms/internal/ads/c12;->g:Lcom/google/android/gms/internal/ads/q20;

    goto :goto_0

    :cond_0
    move-object/from16 v10, v17

    :goto_0
    const/4 v3, 0x1

    .line 15
    invoke-virtual {v1, v12, v3, v10}, Lcom/google/android/gms/internal/ads/al1;->i(Lcom/google/android/gms/internal/ads/wn0;ZLcom/google/android/gms/internal/ads/q20;)V

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/gk1;->l()Lcom/google/android/gms/internal/ads/al1;

    move-object/from16 v1, p1

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/ej2;->s:Lcom/google/android/gms/internal/ads/kj2;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/kj2;->b:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/kj2;->a:Ljava/lang/String;

    .line 17
    invoke-static {v12, v4, v3}, Lcom/google/android/gms/internal/ads/al1;->j(Lcom/google/android/gms/internal/ads/wn0;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/y02;

    .line 18
    invoke-direct {v4, v2, v12, v1, v0}, Lcom/google/android/gms/internal/ads/y02;-><init>(Lcom/google/android/gms/internal/ads/c12;Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/gk1;)V

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/c12;->e:Ljava/util/concurrent/Executor;

    invoke-static {v3, v4, v0}, Lcom/google/android/gms/internal/ads/k03;->j(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/nu2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    return-object v0
.end method
