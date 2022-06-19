.class Lcom/callerid/block/start/CallerActivity$j;
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

    iput-object p1, p0, Lcom/callerid/block/start/CallerActivity$j;->b:Lcom/callerid/block/start/CallerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/callerid/block/start/CallerActivity$j;->b:Lcom/callerid/block/start/CallerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    invoke-static {p1, p2}, Lcom/callerid/block/util/n0;->q1(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/callerid/block/start/CallerActivity$j;->b:Lcom/callerid/block/start/CallerActivity;

    invoke-static {p1}, Lcom/callerid/block/start/CallerActivity;->Q(Lcom/callerid/block/start/CallerActivity;)Lcom/rey/material/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method
