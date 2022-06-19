.class public Lcom/allinone/callerid/e/a;
.super Landroid/database/ContentObserver;
.source "ContactContentObservers.java"


# instance fields
.field private a:I

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/16 p1, 0x38f

    .line 2
    iput p1, p0, Lcom/allinone/callerid/e/a;->a:I

    .line 3
    iput-object p2, p0, Lcom/allinone/callerid/e/a;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 1
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "tony"

    const-string v0, "the contacts has changed"

    .line 2
    invoke-static {p1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/e/a;->b:Landroid/os/Handler;

    iget v0, p0, Lcom/allinone/callerid/e/a;->a:I

    const-string v1, "gaibian"

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
