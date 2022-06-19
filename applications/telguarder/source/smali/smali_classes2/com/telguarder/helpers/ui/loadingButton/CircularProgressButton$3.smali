.class Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircularProgressButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->revertAnimation(Lcom/telguarder/helpers/ui/loadingButton/OnAnimationEndListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;

.field final synthetic val$onAnimationEndListener:Lcom/telguarder/helpers/ui/loadingButton/OnAnimationEndListener;


# direct methods
.method constructor <init>(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;Lcom/telguarder/helpers/ui/loadingButton/OnAnimationEndListener;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$3;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;

    iput-object p2, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$3;->val$onAnimationEndListener:Lcom/telguarder/helpers/ui/loadingButton/OnAnimationEndListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .line 331
    iget-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$3;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->setClickable(Z)V

    .line 332
    iget-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$3;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->access$1102(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;Z)Z

    .line 333
    iget-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$3;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;

    invoke-static {p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->access$1200(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;)Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    move-result-object v2

    invoke-static {v2}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$600(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$3;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;

    invoke-static {p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->access$1200(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;)Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    move-result-object v2

    invoke-static {v2}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$700(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;)[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v1, v2, v1

    iget-object v2, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$3;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;

    invoke-static {v2}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->access$1200(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;)Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    move-result-object v2

    invoke-static {v2}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$700(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;)[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v0, v2, v0

    iget-object v2, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$3;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;

    invoke-static {v2}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->access$1200(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;)Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    move-result-object v2

    invoke-static {v2}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$700(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;)[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$3;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;

    invoke-static {v3}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->access$1200(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;)Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;

    move-result-object v3

    invoke-static {v3}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->access$700(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;)[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 335
    iget-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$3;->val$onAnimationEndListener:Lcom/telguarder/helpers/ui/loadingButton/OnAnimationEndListener;

    if-eqz p1, :cond_0

    .line 336
    invoke-interface {p1}, Lcom/telguarder/helpers/ui/loadingButton/OnAnimationEndListener;->onAnimationEnd()V

    :cond_0
    return-void
.end method
