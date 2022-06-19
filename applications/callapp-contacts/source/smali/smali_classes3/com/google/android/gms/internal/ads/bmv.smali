.class final Lcom/google/android/gms/internal/ads/bmv;
.super Lcom/google/android/gms/internal/ads/ir;
.source "SourceFile"


# instance fields
.field private final synthetic a:Ljava/lang/Object;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:J

.field private final synthetic d:Lcom/google/android/gms/internal/ads/zp;

.field private final synthetic e:Lcom/google/android/gms/internal/ads/bmi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bmi;Ljava/lang/Object;Ljava/lang/String;JLcom/google/android/gms/internal/ads/zp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bmv;->e:Lcom/google/android/gms/internal/ads/bmi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bmv;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bmv;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/bmv;->c:J

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bmv;->d:Lcom/google/android/gms/internal/ads/zp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ir;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmv;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bmv;->e:Lcom/google/android/gms/internal/ads/bmi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bmv;->b:Ljava/lang/String;

    const/4 v3, 0x1

    const-string v4, ""

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/bmv;->c:J

    sub-long/2addr v5, v7

    long-to-int v6, v5

    .line 5
    invoke-static {v1, v2, v3, v4, v6}, Lcom/google/android/gms/internal/ads/bmi;->a(Lcom/google/android/gms/internal/ads/bmi;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bmv;->e:Lcom/google/android/gms/internal/ads/bmi;

    .line 1180
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bmi;->k:Lcom/google/android/gms/internal/ads/blr;

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bmv;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/blr;->b(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bmv;->e:Lcom/google/android/gms/internal/ads/bmi;

    .line 1181
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bmi;->l:Lcom/google/android/gms/internal/ads/axn;

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bmv;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/axn;->b(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bmv;->d:Lcom/google/android/gms/internal/ads/zp;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zp;->set(Ljava/lang/Object;)Z

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 8

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmv;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bmv;->e:Lcom/google/android/gms/internal/ads/bmi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bmv;->b:Ljava/lang/String;

    const/4 v3, 0x0

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/bmv;->c:J

    sub-long/2addr v4, v6

    long-to-int v5, v4

    .line 13
    invoke-static {v1, v2, v3, p1, v5}, Lcom/google/android/gms/internal/ads/bmi;->a(Lcom/google/android/gms/internal/ads/bmi;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bmv;->e:Lcom/google/android/gms/internal/ads/bmi;

    .line 2180
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bmi;->k:Lcom/google/android/gms/internal/ads/blr;

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bmv;->b:Ljava/lang/String;

    const-string v2, "error"

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/blr;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bmv;->e:Lcom/google/android/gms/internal/ads/bmi;

    .line 2181
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bmi;->l:Lcom/google/android/gms/internal/ads/axn;

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bmv;->b:Ljava/lang/String;

    const-string v2, "error"

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/axn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bmv;->d:Lcom/google/android/gms/internal/ads/zp;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zp;->set(Ljava/lang/Object;)Z

    .line 17
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
