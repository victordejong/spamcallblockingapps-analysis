.class Lcom/callerid/block/start/CallerActivity$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/rey/material/widget/Switch$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/CallerActivity;->W()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/start/CallerActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/CallerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/CallerActivity$g;->a:Lcom/callerid/block/start/CallerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/rey/material/widget/Switch;Z)V
    .locals 0

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    if-eqz p2, :cond_0

    const-string p2, "open_xuanfu_contact"

    invoke-virtual {p1, p2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/start/CallerActivity$g;->a:Lcom/callerid/block/start/CallerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "close_xuanfu_contact"

    invoke-virtual {p1, p2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/start/CallerActivity$g;->a:Lcom/callerid/block/start/CallerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/callerid/block/util/n0;->n1(Landroid/content/Context;Z)V

    return-void
.end method
