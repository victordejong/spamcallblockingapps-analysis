.class Lcom/facebook/login/m$c;
.super Ljava/lang/Object;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static a:Lcom/facebook/login/l;


# direct methods
.method static synthetic a(Landroid/content/Context;)Lcom/facebook/login/l;
    .locals 1

    .prologue
    .line 942
    invoke-static {p0}, Lcom/facebook/login/m$c;->b(Landroid/content/Context;)Lcom/facebook/login/l;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized b(Landroid/content/Context;)Lcom/facebook/login/l;
    .locals 3

    .prologue
    .line 946
    const-class v1, Lcom/facebook/login/m$c;

    monitor-enter v1

    if-eqz p0, :cond_0

    .line 947
    :goto_0
    if-nez p0, :cond_1

    .line 948
    const/4 v0, 0x0

    .line 953
    :goto_1
    monitor-exit v1

    return-object v0

    .line 946
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 950
    :cond_1
    sget-object v0, Lcom/facebook/login/m$c;->a:Lcom/facebook/login/l;

    if-nez v0, :cond_2

    .line 951
    new-instance v0, Lcom/facebook/login/l;

    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/facebook/login/l;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/login/m$c;->a:Lcom/facebook/login/l;

    .line 953
    :cond_2
    sget-object v0, Lcom/facebook/login/m$c;->a:Lcom/facebook/login/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 946
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
