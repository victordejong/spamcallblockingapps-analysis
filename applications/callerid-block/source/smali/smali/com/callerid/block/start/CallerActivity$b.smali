.class Lcom/callerid/block/start/CallerActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/CallerActivity;->W()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/start/CallerActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/CallerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/CallerActivity$b;->b:Lcom/callerid/block/start/CallerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/callerid/block/start/CallerActivity$b;->b:Lcom/callerid/block/start/CallerActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/callerid/block/util/x0/a;->h(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/callerid/block/start/CallerActivity$b;->b:Lcom/callerid/block/start/CallerActivity;

    invoke-static {p2, p1}, Lcom/callerid/block/start/CallerActivity;->T(Lcom/callerid/block/start/CallerActivity;Z)Z

    iget-object p1, p0, Lcom/callerid/block/start/CallerActivity$b;->b:Lcom/callerid/block/start/CallerActivity;

    invoke-static {p1}, Lcom/callerid/block/start/CallerActivity;->U(Lcom/callerid/block/start/CallerActivity;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/callerid/block/main/EZCallApplication;->b:Z

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.callerid.block.CLOSE_NOTIFI"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/start/CallerActivity$b;->b:Lcom/callerid/block/start/CallerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/p/a/a;->d(Landroid/content/Intent;)Z

    iget-object p1, p0, Lcom/callerid/block/start/CallerActivity$b;->b:Lcom/callerid/block/start/CallerActivity;

    invoke-static {p1}, Lcom/callerid/block/start/CallerActivity;->V(Lcom/callerid/block/start/CallerActivity;)Lcom/rey/material/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/callerid/block/start/CallerActivity$b;->b:Lcom/callerid/block/start/CallerActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/callerid/block/util/n0;->h1(Landroid/content/Context;Z)V

    iget-object p2, p0, Lcom/callerid/block/start/CallerActivity$b;->b:Lcom/callerid/block/start/CallerActivity;

    invoke-static {p2}, Lcom/callerid/block/start/CallerActivity;->V(Lcom/callerid/block/start/CallerActivity;)Lcom/rey/material/widget/RadioButton;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_0
    return-void
.end method
