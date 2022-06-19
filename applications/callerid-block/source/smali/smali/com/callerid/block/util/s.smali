.class public Lcom/callerid/block/util/s;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/util/s$a;,
        Lcom/callerid/block/util/s$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/IntentFilter;

.field private c:Lcom/callerid/block/util/s$b;

.field private d:Lcom/callerid/block/util/s$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/util/s;->a:Landroid/content/Context;

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/callerid/block/util/s;->b:Landroid/content/IntentFilter;

    return-void
.end method

.method static synthetic a(Lcom/callerid/block/util/s;)Lcom/callerid/block/util/s$b;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/util/s;->c:Lcom/callerid/block/util/s$b;

    return-object p0
.end method


# virtual methods
.method public b(Lcom/callerid/block/util/s$b;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/util/s;->c:Lcom/callerid/block/util/s$b;

    new-instance p1, Lcom/callerid/block/util/s$a;

    invoke-direct {p1, p0}, Lcom/callerid/block/util/s$a;-><init>(Lcom/callerid/block/util/s;)V

    iput-object p1, p0, Lcom/callerid/block/util/s;->d:Lcom/callerid/block/util/s$a;

    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/util/s;->d:Lcom/callerid/block/util/s$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/callerid/block/util/s;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/callerid/block/util/s;->b:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/util/s;->d:Lcom/callerid/block/util/s$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/callerid/block/util/s;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
