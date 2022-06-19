.class Lcom/callerid/block/start/StartActivityTest$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/StartActivityTest;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/start/StartActivityTest;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/StartActivityTest;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/StartActivityTest$a;->b:Lcom/callerid/block/start/StartActivityTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/callerid/block/start/StartActivityTest$a;->b:Lcom/callerid/block/start/StartActivityTest;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/callerid/block/util/t0;->q(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/callerid/block/start/StartActivityTest;->N(Lcom/callerid/block/start/StartActivityTest;Z)Z

    iget-object v0, p0, Lcom/callerid/block/start/StartActivityTest$a;->b:Lcom/callerid/block/start/StartActivityTest;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/start/StartActivityTest$a;->b:Lcom/callerid/block/start/StartActivityTest;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/n0;->r1(Landroid/content/Context;J)V

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/start/StartActivityTest$a;->b:Lcom/callerid/block/start/StartActivityTest;

    new-instance v1, Lcom/callerid/block/start/StartActivityTest$a$a;

    invoke-direct {v1, p0}, Lcom/callerid/block/start/StartActivityTest$a$a;-><init>(Lcom/callerid/block/start/StartActivityTest$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
