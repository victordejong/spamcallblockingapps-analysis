.class final Lcom/facebook/login/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static a:Lcom/facebook/login/f;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;)Lcom/facebook/login/f;
    .locals 3

    const-class v0, Lcom/facebook/login/g$b;

    monitor-enter v0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 894
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 896
    monitor-exit v0

    return-object p0

    .line 898
    :cond_1
    :try_start_1
    sget-object v1, Lcom/facebook/login/g$b;->a:Lcom/facebook/login/f;

    if-nez v1, :cond_2

    .line 899
    new-instance v1, Lcom/facebook/login/f;

    invoke-static {}, Lcom/facebook/g;->m()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/facebook/login/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/facebook/login/g$b;->a:Lcom/facebook/login/f;

    .line 901
    :cond_2
    sget-object p0, Lcom/facebook/login/g$b;->a:Lcom/facebook/login/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
