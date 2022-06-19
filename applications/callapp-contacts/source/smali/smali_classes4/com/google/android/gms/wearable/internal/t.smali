.class final Lcom/google/android/gms/wearable/internal/t;
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

.field private final synthetic b:Z

.field private final synthetic g:Lcom/google/android/gms/wearable/internal/zzay;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzay;Lcom/google/android/gms/common/api/g;Landroid/net/Uri;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/t;->g:Lcom/google/android/gms/wearable/internal/zzay;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/t;->a:Landroid/net/Uri;

    iput-boolean p4, p0, Lcom/google/android/gms/wearable/internal/t;->b:Z

    invoke-direct {p0, p2}, Lcom/google/android/gms/wearable/internal/do;-><init>(Lcom/google/android/gms/common/api/g;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
    .locals 0

    return-object p1
.end method

.method public final synthetic a(Lcom/google/android/gms/common/api/a$b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/wearable/internal/db;

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/wearable/internal/t;->g:Lcom/google/android/gms/wearable/internal/zzay;

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzay;->zza(Lcom/google/android/gms/wearable/internal/zzay;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/t;->a:Landroid/net/Uri;

    iget-boolean v4, p0, Lcom/google/android/gms/wearable/internal/t;->b:Z

    .line 1117
    :try_start_0
    iget-object p1, v1, Lcom/google/android/gms/wearable/internal/db;->a:Ljava/util/concurrent/ExecutorService;

    .line 1118
    invoke-static {p0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    invoke-static {v5}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    invoke-static {v2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    new-instance v6, Lcom/google/android/gms/wearable/internal/dc;

    move-object v0, v6

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/wearable/internal/dc;-><init>(Lcom/google/android/gms/wearable/internal/db;Landroid/net/Uri;Lcom/google/android/gms/common/api/internal/d$b;ZLjava/lang/String;)V

    .line 1122
    invoke-interface {p1, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1125
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/internal/d$b;->b(Lcom/google/android/gms/common/api/Status;)V

    .line 1126
    throw p1
.end method
