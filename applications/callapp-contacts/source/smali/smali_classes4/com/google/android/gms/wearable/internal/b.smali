.class public final Lcom/google/android/gms/wearable/internal/b;
.super Lcom/google/android/gms/wearable/b;


# instance fields
.field private final h:Lcom/google/android/gms/wearable/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/f$a;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/wearable/b;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/f$a;)V

    .line 5
    new-instance p1, Lcom/google/android/gms/wearable/internal/dp;

    invoke-direct {p1}, Lcom/google/android/gms/wearable/internal/dp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/b;->h:Lcom/google/android/gms/wearable/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/wearable/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/f$a;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/wearable/internal/dp;

    invoke-direct {p1}, Lcom/google/android/gms/wearable/internal/dp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/b;->h:Lcom/google/android/gms/wearable/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/b$a;)Lcom/google/android/gms/tasks/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/wearable/b$a;",
            ")",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "listener must not be null"

    .line 47
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4000
    iget-object v0, p0, Lcom/google/android/gms/common/api/f;->d:Landroid/os/Looper;

    const-string v1, "CapabilityListener"

    .line 49
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/api/internal/j;->a(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/i;

    move-result-object p1

    .line 5000
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/i;->b:Lcom/google/android/gms/common/api/internal/i$a;

    .line 50
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/b;->a(Lcom/google/android/gms/common/api/internal/i$a;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/wearable/b$a;Ljava/lang/String;)Lcom/google/android/gms/tasks/h;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/wearable/b$a;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "listener must not be null"

    .line 20
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "capability must not be null"

    .line 21
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "com.google.android.gms.wearable.CAPABILITY_CHANGED"

    .line 22
    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/cp;->a(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    const-string v1, "/"

    .line 23
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 24
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, p2, v1}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/IntentFilter;

    aput-object v0, v2, v1

    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/common/api/f;->d:Landroid/os/Looper;

    const-string v1, "CapabilityListener:"

    .line 28
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 29
    :goto_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/api/internal/j;->a(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/i;

    move-result-object v0

    .line 30
    new-instance v1, Lcom/google/android/gms/wearable/internal/e;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/wearable/internal/e;-><init>(Lcom/google/android/gms/wearable/b$a;Ljava/lang/String;)V

    .line 2051
    new-instance p1, Lcom/google/android/gms/wearable/internal/f;

    const/4 p2, 0x0

    invoke-direct {p1, v1, v2, v0, p2}, Lcom/google/android/gms/wearable/internal/f;-><init>(Lcom/google/android/gms/wearable/b$a;[Landroid/content/IntentFilter;Lcom/google/android/gms/common/api/internal/i;Lcom/google/android/gms/wearable/internal/d;)V

    .line 2052
    new-instance v2, Lcom/google/android/gms/wearable/internal/g;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/i;->b:Lcom/google/android/gms/common/api/internal/i$a;

    .line 2053
    invoke-direct {v2, v1, v0, p2}, Lcom/google/android/gms/wearable/internal/g;-><init>(Lcom/google/android/gms/wearable/b$a;Lcom/google/android/gms/common/api/internal/i$a;Lcom/google/android/gms/wearable/internal/d;)V

    .line 2054
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/wearable/internal/b;->a(Lcom/google/android/gms/common/api/internal/n;Lcom/google/android/gms/common/api/internal/u;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/tasks/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/h<",
            "Lcom/google/android/gms/wearable/c;",
            ">;"
        }
    .end annotation

    const-string v0, "capability must not be null"

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/b;->h:Lcom/google/android/gms/wearable/a;

    .line 1000
    iget-object v1, p0, Lcom/google/android/gms/common/api/f;->f:Lcom/google/android/gms/common/api/g;

    const/4 v2, 0x1

    .line 9
    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/gms/wearable/a;->a(Lcom/google/android/gms/common/api/g;Ljava/lang/String;I)Lcom/google/android/gms/common/api/j;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/wearable/internal/c;->a:Lcom/google/android/gms/common/internal/n$a;

    .line 10
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/n;->a(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/common/internal/n$a;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method
