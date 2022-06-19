.class Lcom/callerid/block/start/SimulateCallActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/SimulateCallActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/start/SimulateCallActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/SimulateCallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/SimulateCallActivity$b;->b:Lcom/callerid/block/start/SimulateCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/callerid/block/start/SimulateCallActivity$b;->b:Lcom/callerid/block/start/SimulateCallActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "123456789"

    const/16 v2, 0x37

    const-string v3, ""

    invoke-static {v0, v1, v2, v2, v3}, Lcom/callerid/block/f/c;->h0(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/start/SimulateCallActivity$b;->b:Lcom/callerid/block/start/SimulateCallActivity;

    invoke-static {v0}, Lcom/callerid/block/start/SimulateCallActivity;->T(Lcom/callerid/block/start/SimulateCallActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/callerid/block/start/SimulateCallActivity$b;->b:Lcom/callerid/block/start/SimulateCallActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/start/SimulateCallActivity$b;->b:Lcom/callerid/block/start/SimulateCallActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100081

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
