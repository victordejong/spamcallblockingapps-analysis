.class Lcom/callerid/block/main/MainActivity$k$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/main/MainActivity$k;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/main/MainActivity$k;


# direct methods
.method constructor <init>(Lcom/callerid/block/main/MainActivity$k;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity$k$b;->a:Lcom/callerid/block/main/MainActivity$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    :try_start_0
    instance-of p1, p2, Lcom/callerid/block/service/a;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/callerid/block/service/a;

    invoke-virtual {p2}, Lcom/callerid/block/service/a;->a()Lcom/callerid/block/service/MyService;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/callerid/block/service/MyService;->a()V

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$k$b;->a:Lcom/callerid/block/main/MainActivity$k;

    iget-object p1, p1, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
