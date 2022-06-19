.class final Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;


# direct methods
.method constructor <init>(Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$2;->a:Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 204
    iget-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$2;->a:Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->access$102(Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;Z)Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 198
    iget-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$2;->a:Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->access$102(Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;Z)Z

    .line 199
    iget-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$2;->a:Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;

    invoke-static {p1}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->access$200(Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;)V

    return-void
.end method
