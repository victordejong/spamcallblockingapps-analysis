.class final Lcom/google/android/gms/wearable/internal/u;
.super Lcom/google/android/gms/wearable/internal/do;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/do<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Landroid/net/Uri;

.field private final synthetic b:J

.field private final synthetic g:J

.field private final synthetic h:Lcom/google/android/gms/wearable/internal/zzay;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzay;Lcom/google/android/gms/common/api/g;Landroid/net/Uri;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/u;->h:Lcom/google/android/gms/wearable/internal/zzay;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/u;->a:Landroid/net/Uri;

    iput-wide p4, p0, Lcom/google/android/gms/wearable/internal/u;->b:J

    iput-wide p6, p0, Lcom/google/android/gms/wearable/internal/u;->g:J

    invoke-direct {p0, p2}, Lcom/google/android/gms/wearable/internal/do;-><init>(Lcom/google/android/gms/common/api/g;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
    .locals 0

    return-object p1
.end method

.method public final synthetic a(Lcom/google/android/gms/common/api/a$b;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/wearable/internal/db;

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/wearable/internal/u;->h:Lcom/google/android/gms/wearable/internal/zzay;

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzay;->zza(Lcom/google/android/gms/wearable/internal/zzay;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/u;->a:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/google/android/gms/wearable/internal/u;->b:J

    iget-wide v7, p0, Lcom/google/android/gms/wearable/internal/u;->g:J

    .line 1127
    :try_start_0
    iget-object p1, v1, Lcom/google/android/gms/wearable/internal/db;->a:Ljava/util/concurrent/ExecutorService;

    .line 1128
    invoke-static {p0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    invoke-static {v4}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    invoke-static {v2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v9, 0x0

    const/4 v0, 0x1

    const/4 v3, 0x0

    cmp-long v11, v5, v9

    if-ltz v11, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    const-string v10, "startOffset is negative: %s"

    new-array v11, v0, [Ljava/lang/Object;

    .line 1131
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v3

    invoke-static {v9, v10, v11}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-ltz v11, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    const-string v10, "invalid length: %s"

    new-array v0, v0, [Ljava/lang/Object;

    .line 1132
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v0, v3

    invoke-static {v9, v10, v0}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1133
    new-instance v9, Lcom/google/android/gms/wearable/internal/dd;

    move-object v0, v9

    move-object v3, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/wearable/internal/dd;-><init>(Lcom/google/android/gms/wearable/internal/db;Landroid/net/Uri;Lcom/google/android/gms/common/api/internal/d$b;Ljava/lang/String;JJ)V

    .line 1134
    invoke-interface {p1, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1137
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/internal/d$b;->b(Lcom/google/android/gms/common/api/Status;)V

    .line 1138
    throw p1
.end method
