.class public final Lcom/google/android/gms/wearable/internal/bu;
.super Lcom/google/android/gms/wearable/l;


# instance fields
.field private final h:Lcom/google/android/gms/wearable/k;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/f$a;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/wearable/l;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/f$a;)V

    .line 5
    new-instance p1, Lcom/google/android/gms/wearable/internal/br;

    invoke-direct {p1}, Lcom/google/android/gms/wearable/internal/br;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/bu;->h:Lcom/google/android/gms/wearable/k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/wearable/l;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/f$a;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/wearable/internal/br;

    invoke-direct {p1}, Lcom/google/android/gms/wearable/internal/br;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/bu;->h:Lcom/google/android/gms/wearable/k;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/l$a;)Lcom/google/android/gms/tasks/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/wearable/l$a;",
            ")",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/IntentFilter;

    const-string v1, "com.google.android.gms.wearable.MESSAGE_RECEIVED"

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/cp;->a(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2000
    iget-object v1, p0, Lcom/google/android/gms/common/api/f;->d:Landroid/os/Looper;

    const-string v2, "MessageListener"

    .line 1017
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/api/internal/j;->a(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/i;

    move-result-object v1

    .line 1018
    new-instance v2, Lcom/google/android/gms/wearable/internal/bx;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v0, v1, v3}, Lcom/google/android/gms/wearable/internal/bx;-><init>(Lcom/google/android/gms/wearable/l$a;[Landroid/content/IntentFilter;Lcom/google/android/gms/common/api/internal/i;Lcom/google/android/gms/wearable/internal/bw;)V

    .line 1019
    new-instance v0, Lcom/google/android/gms/wearable/internal/by;

    .line 3000
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/i;->b:Lcom/google/android/gms/common/api/internal/i$a;

    .line 1020
    invoke-direct {v0, p1, v1, v3}, Lcom/google/android/gms/wearable/internal/by;-><init>(Lcom/google/android/gms/wearable/l$a;Lcom/google/android/gms/common/api/internal/i$a;Lcom/google/android/gms/wearable/internal/bw;)V

    .line 1021
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/wearable/internal/bu;->a(Lcom/google/android/gms/common/api/internal/n;Lcom/google/android/gms/common/api/internal/u;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;[B)Lcom/google/android/gms/tasks/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B)",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/bu;->h:Lcom/google/android/gms/wearable/k;

    .line 1000
    iget-object v1, p0, Lcom/google/android/gms/common/api/f;->f:Lcom/google/android/gms/common/api/g;

    .line 8
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/gms/wearable/k;->a(Lcom/google/android/gms/common/api/g;Ljava/lang/String;Ljava/lang/String;[B)Lcom/google/android/gms/common/api/j;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/wearable/internal/bv;->a:Lcom/google/android/gms/common/internal/n$a;

    .line 9
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/n;->a(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/common/internal/n$a;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/wearable/l$a;)Lcom/google/android/gms/tasks/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/wearable/l$a;",
            ")",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 4000
    iget-object v0, p0, Lcom/google/android/gms/common/api/f;->d:Landroid/os/Looper;

    const-string v1, "MessageListener"

    .line 23
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/api/internal/j;->a(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/i;

    move-result-object p1

    .line 5000
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/i;->b:Lcom/google/android/gms/common/api/internal/i$a;

    .line 24
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/bu;->a(Lcom/google/android/gms/common/api/internal/i$a;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method
