.class Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$6$1;
.super Ljava/lang/Object;
.source "CircularProgressButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$6;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$6;


# direct methods
.method constructor <init>(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$6;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$6$1;->this$1:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 409
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$6$1;->this$1:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$6;

    iget-object v0, v0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$6;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;

    iget-object v1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$6$1;->this$1:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$6;

    iget-object v1, v1, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$6;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;

    invoke-static {v1}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->access$1400(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;)I

    move-result v1

    iget-object v2, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$6$1;->this$1:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$6;

    iget-object v2, v2, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$6;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;

    invoke-static {v2}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->access$1500(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->doneLoadingAnimation(ILandroid/graphics/Bitmap;)V

    return-void
.end method
