.class Lcom/allinone/callerid/start/CallerActivity$b;
.super Ljava/lang/Object;
.source "CallerActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/CallerActivity;->c0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/start/CallerActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/CallerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/CallerActivity$b;->a:Lcom/allinone/callerid/start/CallerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object p1

    iget-object p1, p1, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/allinone/callerid/start/CallerActivity$s;

    iget-object v0, p0, Lcom/allinone/callerid/start/CallerActivity$b;->a:Lcom/allinone/callerid/start/CallerActivity;

    invoke-direct {p2, v0}, Lcom/allinone/callerid/start/CallerActivity$s;-><init>(Lcom/allinone/callerid/start/CallerActivity;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/start/CallerActivity$b;->a:Lcom/allinone/callerid/start/CallerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/start/CallerActivity;->Z(Lcom/allinone/callerid/start/CallerActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/start/CallerActivity$b;->a:Lcom/allinone/callerid/start/CallerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/start/CallerActivity;->a0(Lcom/allinone/callerid/start/CallerActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method
