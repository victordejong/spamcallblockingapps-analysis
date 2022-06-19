.class Lcom/allinone/callerid/start/PushControlActivity$e;
.super Ljava/lang/Object;
.source "PushControlActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/PushControlActivity;->b0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/start/PushControlActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/PushControlActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/PushControlActivity$e;->d:Lcom/allinone/callerid/start/PushControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "wbb"

    const-string v0, "onDismiss"

    .line 2
    invoke-static {p1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/start/PushControlActivity$e;->d:Lcom/allinone/callerid/start/PushControlActivity;

    invoke-static {p1}, Lcom/allinone/callerid/start/PushControlActivity;->Z(Lcom/allinone/callerid/start/PushControlActivity;)Landroid/widget/Switch;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void
.end method
