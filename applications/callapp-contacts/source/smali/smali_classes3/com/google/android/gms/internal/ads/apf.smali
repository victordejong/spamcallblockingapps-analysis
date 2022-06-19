.class public final Lcom/google/android/gms/internal/ads/apf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/aro;
.implements Lcom/google/android/gms/internal/ads/ash;
.implements Lcom/google/android/gms/internal/ads/atb;
.implements Lcom/google/android/gms/internal/ads/auf;
.implements Lcom/google/android/gms/internal/ads/eir;


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/yc;

.field private final b:Lcom/google/android/gms/common/util/f;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/f;Lcom/google/android/gms/internal/ads/yc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/apf;->b:Lcom/google/android/gms/common/util/f;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/apf;->a:Lcom/google/android/gms/internal/ads/yc;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apf;->a:Lcom/google/android/gms/internal/ads/yc;

    .line 4047
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/yc;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 4048
    :try_start_0
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/yc;->j:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 4049
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/yc;->a:Lcom/google/android/gms/common/util/f;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/yc;->g:J

    .line 4050
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/cpk;)V
    .locals 6

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/apf;->a:Lcom/google/android/gms/internal/ads/yc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apf;->b:Lcom/google/android/gms/common/util/f;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v0

    .line 9020
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/yc;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 9021
    :try_start_0
    iput-wide v0, p1, Lcom/google/android/gms/internal/ads/yc;->j:J

    .line 9022
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/yc;->j:J

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    .line 9023
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/yc;->b:Lcom/google/android/gms/internal/ads/yo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/yo;->a(Lcom/google/android/gms/internal/ads/yc;)V

    .line 9024
    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/tp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzauj;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzvq;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 11
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/apf;->a:Lcom/google/android/gms/internal/ads/yc;

    .line 7016
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/yc;->d:Ljava/lang/Object;

    monitor-enter v3

    .line 7017
    :try_start_0
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/yc;->a:Lcom/google/android/gms/common/util/f;

    invoke-interface {v4}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/android/gms/internal/ads/yc;->i:J

    .line 7018
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/yc;->b:Lcom/google/android/gms/internal/ads/yo;

    iget-wide v5, v2, Lcom/google/android/gms/internal/ads/yc;->i:J

    .line 7059
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/yo;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7060
    :try_start_1
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/yo;->c:Lcom/google/android/gms/internal/ads/yk;

    .line 8019
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/yk;->f:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8020
    :try_start_2
    iget-object v8, v4, Lcom/google/android/gms/internal/ads/yk;->g:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v8}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzh()J

    move-result-wide v8

    .line 8021
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v10

    invoke-interface {v10}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v10

    .line 8022
    iget-wide v12, v4, Lcom/google/android/gms/internal/ads/yk;->b:J

    const-wide/16 v14, -0x1

    cmp-long v16, v12, v14

    if-nez v16, :cond_1

    sub-long v8, v10, v8

    .line 8023
    sget-object v12, Lcom/google/android/gms/internal/ads/aq;->aC:Lcom/google/android/gms/internal/ads/af;

    .line 8024
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v12

    .line 8025
    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v14, v8, v12

    if-lez v14, :cond_0

    const/4 v8, -0x1

    .line 8027
    iput v8, v4, Lcom/google/android/gms/internal/ads/yk;->d:I

    goto :goto_0

    .line 8029
    :cond_0
    iget-object v8, v4, Lcom/google/android/gms/internal/ads/yk;->g:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v8}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzi()I

    move-result v8

    .line 8030
    iput v8, v4, Lcom/google/android/gms/internal/ads/yk;->d:I

    .line 8031
    :goto_0
    iput-wide v5, v4, Lcom/google/android/gms/internal/ads/yk;->b:J

    .line 8032
    iget-wide v5, v4, Lcom/google/android/gms/internal/ads/yk;->b:J

    iput-wide v5, v4, Lcom/google/android/gms/internal/ads/yk;->a:J

    goto :goto_1

    .line 8033
    :cond_1
    iput-wide v5, v4, Lcom/google/android/gms/internal/ads/yk;->a:J

    :goto_1
    const/4 v5, 0x1

    if-eqz v0, :cond_2

    .line 8034
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzvq;->extras:Landroid/os/Bundle;

    if-eqz v6, :cond_2

    .line 8035
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvq;->extras:Landroid/os/Bundle;

    const-string v6, "gw"

    const/4 v8, 0x2

    .line 8036
    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 8038
    monitor-exit v7

    goto :goto_3

    .line 8039
    :cond_2
    iget v0, v4, Lcom/google/android/gms/internal/ads/yk;->c:I

    add-int/2addr v0, v5

    iput v0, v4, Lcom/google/android/gms/internal/ads/yk;->c:I

    .line 8040
    iget v0, v4, Lcom/google/android/gms/internal/ads/yk;->d:I

    add-int/2addr v0, v5

    iput v0, v4, Lcom/google/android/gms/internal/ads/yk;->d:I

    .line 8041
    iget v0, v4, Lcom/google/android/gms/internal/ads/yk;->d:I

    if-nez v0, :cond_3

    const-wide/16 v5, 0x0

    .line 8042
    iput-wide v5, v4, Lcom/google/android/gms/internal/ads/yk;->e:J

    .line 8043
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/yk;->g:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v0, v10, v11}, Lcom/google/android/gms/ads/internal/util/zzf;->zzfb(J)V

    goto :goto_2

    .line 8044
    :cond_3
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/yk;->g:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzj()J

    move-result-wide v5

    sub-long/2addr v10, v5

    iput-wide v10, v4, Lcom/google/android/gms/internal/ads/yk;->e:J

    .line 8045
    :goto_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7061
    :goto_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 7019
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_0
    move-exception v0

    .line 8045
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    :catchall_1
    move-exception v0

    .line 7061
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    :catchall_2
    move-exception v0

    .line 7019
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0
.end method

.method public final b()V
    .locals 7

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apf;->a:Lcom/google/android/gms/internal/ads/yc;

    .line 5025
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/yc;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 5026
    :try_start_0
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/yc;->j:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/yc;->f:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 5027
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/yc;->a:Lcom/google/android/gms/common/util/f;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/yc;->f:J

    .line 5028
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/yc;->b:Lcom/google/android/gms/internal/ads/yo;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/yo;->a(Lcom/google/android/gms/internal/ads/yc;)V

    .line 5029
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/yc;->b:Lcom/google/android/gms/internal/ads/yo;

    .line 5056
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/yo;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5057
    :try_start_1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/yo;->c:Lcom/google/android/gms/internal/ads/yk;

    .line 6016
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/yk;->f:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6017
    :try_start_2
    iget v4, v0, Lcom/google/android/gms/internal/ads/yk;->i:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/google/android/gms/internal/ads/yk;->i:I

    .line 6018
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5058
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5030
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_0
    move-exception v0

    .line 6018
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    :catchall_1
    move-exception v0

    .line 5058
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    :catchall_2
    move-exception v0

    .line 5030
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 8

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apf;->a:Lcom/google/android/gms/internal/ads/yc;

    .line 9040
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/yc;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 9041
    :try_start_0
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/yc;->j:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/yc;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 9042
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/yc;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/yb;

    .line 10005
    iget-wide v6, v2, Lcom/google/android/gms/internal/ads/yb;->b:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_0

    .line 10006
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/yb;->c:Lcom/google/android/gms/internal/ads/yc;

    .line 10070
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/yc;->a:Lcom/google/android/gms/common/util/f;

    .line 10006
    invoke-interface {v3}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/yb;->b:J

    .line 9045
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/yc;->b:Lcom/google/android/gms/internal/ads/yo;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/yo;->a(Lcom/google/android/gms/internal/ads/yc;)V

    .line 9046
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final onAdClicked()V
    .locals 7

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apf;->a:Lcom/google/android/gms/internal/ads/yc;

    .line 1031
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/yc;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 1032
    :try_start_0
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/yc;->j:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 1033
    new-instance v2, Lcom/google/android/gms/internal/ads/yb;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/yb;-><init>(Lcom/google/android/gms/internal/ads/yc;)V

    .line 2008
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/yb;->c:Lcom/google/android/gms/internal/ads/yc;

    .line 2070
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/yc;->a:Lcom/google/android/gms/common/util/f;

    .line 2008
    invoke-interface {v3}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/yb;->a:J

    .line 1035
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/yc;->c:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1036
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/yc;->h:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/yc;->h:J

    .line 1037
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/yc;->b:Lcom/google/android/gms/internal/ads/yo;

    .line 3053
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/yo;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3054
    :try_start_1
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/yo;->c:Lcom/google/android/gms/internal/ads/yk;

    .line 4013
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/yk;->f:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4014
    :try_start_2
    iget v5, v2, Lcom/google/android/gms/internal/ads/yk;->h:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v2, Lcom/google/android/gms/internal/ads/yk;->h:I

    .line 4015
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3055
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1038
    :try_start_4
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/yc;->b:Lcom/google/android/gms/internal/ads/yo;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/yo;->a(Lcom/google/android/gms/internal/ads/yc;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4015
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    :catchall_1
    move-exception v0

    .line 3055
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    .line 1039
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0
.end method
