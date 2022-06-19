.class Lcom/allinone/callerid/h/c$i;
.super Ljava/lang/Object;
.source "OverlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/h/c;->G0(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/h/c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/h/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/h/c$i;->d:Lcom/allinone/callerid/h/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/h/c$i;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v0}, Lcom/allinone/callerid/h/c;->X(Lcom/allinone/callerid/h/c;)Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/h/c$i;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v0}, Lcom/allinone/callerid/h/c;->X(Lcom/allinone/callerid/h/c;)Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/h/c$i;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->v0(Lcom/allinone/callerid/h/c;)Landroid/view/WindowManager;

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
