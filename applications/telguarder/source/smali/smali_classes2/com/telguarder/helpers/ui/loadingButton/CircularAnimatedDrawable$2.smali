.class Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircularAnimatedDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->setupAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;


# direct methods
.method constructor <init>(Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable$2;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .line 157
    iget-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable$2;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;

    invoke-static {p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->access$100(Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;)V

    .line 158
    iget-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable$2;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->access$202(Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;Z)Z

    return-void
.end method
