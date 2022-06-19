.class public Lcom/allinone/callerid/util/w;
.super Ljava/lang/Object;
.source "HomeListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/util/w$a;,
        Lcom/allinone/callerid/util/w$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/IntentFilter;

.field private c:Lcom/allinone/callerid/util/w$b;

.field private d:Lcom/allinone/callerid/util/w$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/util/w;->a:Landroid/content/Context;

    .line 3
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/allinone/callerid/util/w;->b:Landroid/content/IntentFilter;

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/util/w;)Lcom/allinone/callerid/util/w$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/util/w;->c:Lcom/allinone/callerid/util/w$b;

    return-object p0
.end method


# virtual methods
.method public b(Lcom/allinone/callerid/util/w$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/w;->c:Lcom/allinone/callerid/util/w$b;

    .line 2
    new-instance p1, Lcom/allinone/callerid/util/w$a;

    invoke-direct {p1, p0}, Lcom/allinone/callerid/util/w$a;-><init>(Lcom/allinone/callerid/util/w;)V

    iput-object p1, p0, Lcom/allinone/callerid/util/w;->d:Lcom/allinone/callerid/util/w$a;

    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/util/w;->d:Lcom/allinone/callerid/util/w$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/util/w;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/allinone/callerid/util/w;->b:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/util/w;->d:Lcom/allinone/callerid/util/w$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/util/w;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
