.class Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircularProgressButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;


# direct methods
.method constructor <init>(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$6;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 403
    iget-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$6;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->access$1102(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;Z)Z

    .line 404
    iget-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$6;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;

    invoke-static {p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->access$1300(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 405
    iget-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$6;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;

    invoke-static {p1, v0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->access$1302(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;Z)Z

    .line 406
    new-instance p1, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$6$1;

    invoke-direct {p1, p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$6$1;-><init>(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$6;)V

    .line 412
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
