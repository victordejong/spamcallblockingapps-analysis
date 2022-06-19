.class public Lcom/facebook/internal/b;
.super Landroid/content/BroadcastReceiver;
.source "BoltsMeasurementEventListener.java"


# static fields
.field private static a:Lcom/facebook/internal/b;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/b;->b:Landroid/content/Context;

    .line 51
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/internal/b;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/facebook/internal/b;->a:Lcom/facebook/internal/b;

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/facebook/internal/b;->a:Lcom/facebook/internal/b;

    .line 72
    :goto_0
    return-object v0

    .line 70
    :cond_0
    new-instance v0, Lcom/facebook/internal/b;

    invoke-direct {v0, p0}, Lcom/facebook/internal/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/internal/b;->a:Lcom/facebook/internal/b;

    .line 71
    sget-object v0, Lcom/facebook/internal/b;->a:Lcom/facebook/internal/b;

    invoke-direct {v0}, Lcom/facebook/internal/b;->a()V

    .line 72
    sget-object v0, Lcom/facebook/internal/b;->a:Lcom/facebook/internal/b;

    goto :goto_0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/internal/b;->b:Landroid/content/Context;

    .line 55
    invoke-static {v0}, Landroidx/h/a/a;->a(Landroid/content/Context;)Landroidx/h/a/a;

    move-result-object v0

    .line 56
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.parse.bolts.measurement_event"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroidx/h/a/a;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 58
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/internal/b;->b:Landroid/content/Context;

    .line 62
    invoke-static {v0}, Landroidx/h/a/a;->a(Landroid/content/Context;)Landroidx/h/a/a;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p0}, Landroidx/h/a/a;->a(Landroid/content/BroadcastReceiver;)V

    .line 64
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    .prologue
    .line 77
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/internal/b;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 81
    return-void

    .line 79
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 80
    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .prologue
    .line 85
    new-instance v1, Lcom/facebook/a/m;

    invoke-direct {v1, p1}, Lcom/facebook/a/m;-><init>(Landroid/content/Context;)V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bf_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "event_name"

    .line 87
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    const-string/jumbo v0, "event_args"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 89
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 90
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    const-string/jumbo v6, "[^0-9a-zA-Z _-]"

    const-string/jumbo v7, "-"

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "^[ -]*"

    const-string/jumbo v8, ""

    .line 92
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "[ -]*$"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 93
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v1, v2, v4}, Lcom/facebook/a/m;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 96
    return-void
.end method
