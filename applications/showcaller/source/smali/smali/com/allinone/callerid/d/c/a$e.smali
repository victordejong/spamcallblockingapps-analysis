.class Lcom/allinone/callerid/d/c/a$e;
.super Ljava/lang/Object;
.source "IncomingCallScreen.java"

# interfaces
.implements Lcom/allinone/callerid/mvc/view/recorder/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/d/c/a;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/d/c/a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/d/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/c/a$e;->a:Lcom/allinone/callerid/d/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/d/c/a$e;->a:Lcom/allinone/callerid/d/c/a;

    new-instance v1, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    iget-object v2, p0, Lcom/allinone/callerid/d/c/a$e;->a:Lcom/allinone/callerid/d/c/a;

    invoke-static {v2}, Lcom/allinone/callerid/d/c/a;->d(Lcom/allinone/callerid/d/c/a;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/allinone/callerid/d/c/a$e;->a:Lcom/allinone/callerid/d/c/a;

    invoke-static {v3}, Lcom/allinone/callerid/d/c/a;->p(Lcom/allinone/callerid/d/c/a;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v4, p0, Lcom/allinone/callerid/d/c/a$e;->a:Lcom/allinone/callerid/d/c/a;

    invoke-static {v4}, Lcom/allinone/callerid/d/c/a;->p(Lcom/allinone/callerid/d/c/a;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {v1, v2, v3, v4}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;-><init>(Landroid/content/Context;II)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/d/c/a;->g(Lcom/allinone/callerid/d/c/a;Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;)Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/d/c/a$e;->a:Lcom/allinone/callerid/d/c/a;

    invoke-static {v0}, Lcom/allinone/callerid/d/c/a;->e(Lcom/allinone/callerid/d/c/a;)Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->setCall_status(I)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/d/c/a$e;->a:Lcom/allinone/callerid/d/c/a;

    invoke-static {v0}, Lcom/allinone/callerid/d/c/a;->e(Lcom/allinone/callerid/d/c/a;)Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/d/c/a$e;->a:Lcom/allinone/callerid/d/c/a;

    invoke-static {v1}, Lcom/allinone/callerid/d/c/a;->q(Lcom/allinone/callerid/d/c/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->setTel_phone(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/d/c/a$e;->a:Lcom/allinone/callerid/d/c/a;

    invoke-static {v0}, Lcom/allinone/callerid/d/c/a;->e(Lcom/allinone/callerid/d/c/a;)Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    move-result-object v0

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->setStatus(I)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/d/c/a$e;->a:Lcom/allinone/callerid/d/c/a;

    invoke-static {v0}, Lcom/allinone/callerid/d/c/a;->e(Lcom/allinone/callerid/d/c/a;)Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->setInitTime()V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/d/c/a$e;->a:Lcom/allinone/callerid/d/c/a;

    invoke-static {v0}, Lcom/allinone/callerid/d/c/a;->r(Lcom/allinone/callerid/d/c/a;)Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/d/c/a$e;->a:Lcom/allinone/callerid/d/c/a;

    invoke-static {v0}, Lcom/allinone/callerid/d/c/a;->e(Lcom/allinone/callerid/d/c/a;)Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;->f()V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/d/c/a$e;->a:Lcom/allinone/callerid/d/c/a;

    invoke-static {v0}, Lcom/allinone/callerid/d/c/a;->e(Lcom/allinone/callerid/d/c/a;)Lcom/allinone/callerid/mvc/view/recorder/RecordBallView;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/d/c/a$e$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/d/c/a$e$a;-><init>(Lcom/allinone/callerid/d/c/a$e;)V

    const-wide/16 v2, 0x5a

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
