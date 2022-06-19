.class Lcom/callerid/block/fragment/b$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/b;->Y1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/fragment/b;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/b;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/b$f;->b:Lcom/callerid/block/fragment/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/fragment/b$f;->b:Lcom/callerid/block/fragment/b;

    new-instance v1, Lcom/callerid/block/sms/b;

    iget-object v2, p0, Lcom/callerid/block/fragment/b$f;->b:Lcom/callerid/block/fragment/b;

    invoke-static {v2}, Lcom/callerid/block/fragment/b;->F1(Lcom/callerid/block/fragment/b;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/callerid/block/sms/b;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/callerid/block/fragment/b;->W1(Lcom/callerid/block/fragment/b;Lcom/callerid/block/sms/b;)Lcom/callerid/block/sms/b;

    iget-object v0, p0, Lcom/callerid/block/fragment/b$f;->b:Lcom/callerid/block/fragment/b;

    invoke-static {v0}, Lcom/callerid/block/fragment/b;->V1(Lcom/callerid/block/fragment/b;)Lcom/callerid/block/sms/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callerid/block/sms/b;->b()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callerid/block/fragment/b;->I1(Lcom/callerid/block/fragment/b;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/callerid/block/fragment/b$f;->b:Lcom/callerid/block/fragment/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callerid/block/fragment/b;->J1(Lcom/callerid/block/fragment/b;Z)Z

    iget-object v0, p0, Lcom/callerid/block/fragment/b$f;->b:Lcom/callerid/block/fragment/b;

    invoke-static {v0}, Lcom/callerid/block/fragment/b;->K1(Lcom/callerid/block/fragment/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/fragment/b$f;->b:Lcom/callerid/block/fragment/b;

    invoke-static {v0}, Lcom/callerid/block/fragment/b;->Q1(Lcom/callerid/block/fragment/b;)Lcom/callerid/block/main/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/fragment/b$f;->b:Lcom/callerid/block/fragment/b;

    invoke-static {v0}, Lcom/callerid/block/fragment/b;->Q1(Lcom/callerid/block/fragment/b;)Lcom/callerid/block/main/MainActivity;

    move-result-object v0

    new-instance v1, Lcom/callerid/block/fragment/b$f$a;

    invoke-direct {v1, p0}, Lcom/callerid/block/fragment/b$f$a;-><init>(Lcom/callerid/block/fragment/b$f;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
