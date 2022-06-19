.class Lcom/allinone/callerid/d/c/a$a;
.super Ljava/lang/Object;
.source "IncomingCallScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/d/c/a;->H(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/d/c/a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/d/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/c/a$a;->d:Lcom/allinone/callerid/d/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/d/c/a$a;->d:Lcom/allinone/callerid/d/c/a;

    invoke-static {v0}, Lcom/allinone/callerid/d/c/a;->e(Lcom/allinone/callerid/d/c/a;)Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/d/c/a$a;->d:Lcom/allinone/callerid/d/c/a;

    invoke-static {v0}, Lcom/allinone/callerid/d/c/a;->e(Lcom/allinone/callerid/d/c/a;)Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/d/c/a$a;->d:Lcom/allinone/callerid/d/c/a;

    invoke-static {v1}, Lcom/allinone/callerid/d/c/a;->s(Lcom/allinone/callerid/d/c/a;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->m(II)V

    :cond_0
    return-void
.end method
