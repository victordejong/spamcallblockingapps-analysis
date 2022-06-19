.class Lcom/allinone/callerid/dialog/k$c;
.super Ljava/lang/Object;
.source "DialogToRate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/dialog/k;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/dialog/k;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/dialog/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/dialog/k$c;->d:Lcom/allinone/callerid/dialog/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "rate_dialog_click_goto_rate"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->W1(Z)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/dialog/k$c;->d:Lcom/allinone/callerid/dialog/k;

    invoke-static {v0}, Lcom/allinone/callerid/dialog/k;->a(Lcom/allinone/callerid/dialog/k;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/dialog/k$c;->d:Lcom/allinone/callerid/dialog/k;

    invoke-static {v1}, Lcom/allinone/callerid/dialog/k;->a(Lcom/allinone/callerid/dialog/k;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/h1;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/h1;->D0(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/dialog/k$c;->d:Lcom/allinone/callerid/dialog/k;

    invoke-virtual {v0}, Lcom/allinone/callerid/dialog/k;->dismiss()V

    return-void
.end method
