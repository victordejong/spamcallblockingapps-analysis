.class public Lcom/flurry/sdk/hx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/flurry/sdk/kx;


# static fields
.field private static final d:Ljava/lang/String; = "hx"


# instance fields
.field public a:Lcom/flurry/sdk/is;

.field public b:Lcom/flurry/sdk/jk;

.field public c:Lcom/flurry/sdk/iu;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    invoke-static {}, Lcom/flurry/sdk/hx;->b()Lcom/flurry/sdk/jo;

    move-result-object v0

    sget-object v1, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/flurry/sdk/jq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/sdk/jo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;I)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    invoke-static {}, Lcom/flurry/sdk/hx;->b()Lcom/flurry/sdk/jo;

    move-result-object v0

    sget-object v1, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/flurry/sdk/jo;->a(Ljava/lang/String;Ljava/util/Map;ZI)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/hx;
    .locals 2

    const-class v0, Lcom/flurry/sdk/hx;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/kg;->a(Ljava/lang/Class;)Lcom/flurry/sdk/kx;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/hx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/hx;->b()Lcom/flurry/sdk/jo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/flurry/sdk/jo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static b()Lcom/flurry/sdk/jo;
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/lu;->a()Lcom/flurry/sdk/lu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/lu;->b()Lcom/flurry/sdk/ls;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-class v1, Lcom/flurry/sdk/jo;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ls;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jo;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/flurry/sdk/jo;

    invoke-static {v0}, Lcom/flurry/sdk/ls;->a(Ljava/lang/Class;)V

    new-instance v0, Lcom/flurry/sdk/jk;

    invoke-direct {v0}, Lcom/flurry/sdk/jk;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/hx;->b:Lcom/flurry/sdk/jk;

    new-instance v0, Lcom/flurry/sdk/is;

    invoke-direct {v0}, Lcom/flurry/sdk/is;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/hx;->a:Lcom/flurry/sdk/is;

    new-instance v0, Lcom/flurry/sdk/iu;

    invoke-direct {v0}, Lcom/flurry/sdk/iu;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/hx;->c:Lcom/flurry/sdk/iu;

    const-string v0, "android.permission.INTERNET"

    invoke-static {p1, v0}, Lcom/flurry/sdk/md;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/hx;->d:Ljava/lang/String;

    const-string v1, "Application must declare permission: android.permission.INTERNET"

    invoke-static {v0, v1}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/flurry/sdk/md;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/flurry/sdk/hx;->d:Ljava/lang/String;

    const-string v0, "It is highly recommended that the application declare permission: android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/flurry/sdk/ku;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
