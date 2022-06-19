.class public Lcom/callapp/contacts/receiver/WifiStateReceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/callapp/contacts/receiver/WifiStateReceiver;


# instance fields
.field public a:Landroid/net/ConnectivityManager;

.field public b:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/callapp/contacts/receiver/WifiStateReceiver$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/receiver/WifiStateReceiver$1;-><init>(Lcom/callapp/contacts/receiver/WifiStateReceiver;)V

    iput-object v0, p0, Lcom/callapp/contacts/receiver/WifiStateReceiver;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method public static a()V
    .locals 1

    .line 47
    new-instance v0, Lcom/callapp/contacts/receiver/WifiStateReceiver$2;

    invoke-direct {v0}, Lcom/callapp/contacts/receiver/WifiStateReceiver$2;-><init>()V

    .line 52
    invoke-virtual {v0}, Lcom/callapp/contacts/receiver/WifiStateReceiver$2;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public static get()Lcom/callapp/contacts/receiver/WifiStateReceiver;
    .locals 2

    .line 20
    sget-object v0, Lcom/callapp/contacts/receiver/WifiStateReceiver;->c:Lcom/callapp/contacts/receiver/WifiStateReceiver;

    if-nez v0, :cond_1

    .line 21
    const-class v0, Lcom/callapp/contacts/receiver/WifiStateReceiver;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/callapp/contacts/receiver/WifiStateReceiver;->c:Lcom/callapp/contacts/receiver/WifiStateReceiver;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/callapp/contacts/receiver/WifiStateReceiver;

    invoke-direct {v1}, Lcom/callapp/contacts/receiver/WifiStateReceiver;-><init>()V

    sput-object v1, Lcom/callapp/contacts/receiver/WifiStateReceiver;->c:Lcom/callapp/contacts/receiver/WifiStateReceiver;

    .line 25
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 27
    :cond_1
    :goto_0
    sget-object v0, Lcom/callapp/contacts/receiver/WifiStateReceiver;->c:Lcom/callapp/contacts/receiver/WifiStateReceiver;

    return-object v0
.end method
