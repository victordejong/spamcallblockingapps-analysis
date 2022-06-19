.class Lcom/allinone/callerid/mvc/view/recorder/RecordBallView$a;
.super Ljava/lang/Object;
.source "RecordBallView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView$a;->d:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView$a;->d:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->b(Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;)J

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView$a;->d:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->a(Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->c(Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;J)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView$a;->d:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->d(Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView$a;->d:Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->e(Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
