.class public abstract Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;
.super Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$SavedState;
    }
.end annotation


# static fields
.field public static final DEFAULT_DURATION:J = 0x1f4L


# instance fields
.field private animationSpeedScale:F

.field private isAnimationEnabled:Z

.field private isProgressAnimating:Z

.field private isSecondaryProgressAnimating:Z

.field private lastProgress:F

.field private lastSecondaryProgress:F

.field private progressAnimationAdapterListener:Landroid/animation/AnimatorListenerAdapter;

.field private progressAnimationUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private progressAnimator:Landroid/animation/ValueAnimator;

.field private secondaryProgressAnimationAdapterListener:Landroid/animation/AnimatorListenerAdapter;

.field private secondaryProgressAnimationUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private secondaryProgressAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->isProgressAnimating:Z

    .line 26
    iput-boolean p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->isSecondaryProgressAnimating:Z

    .line 188
    new-instance p1, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$1;

    invoke-direct {p1, p0}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$1;-><init>(Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;)V

    iput-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->progressAnimationUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 195
    new-instance p1, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$2;

    invoke-direct {p1, p0}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$2;-><init>(Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;)V

    iput-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->progressAnimationAdapterListener:Landroid/animation/AnimatorListenerAdapter;

    .line 244
    new-instance p1, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$3;

    invoke-direct {p1, p0}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$3;-><init>(Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;)V

    iput-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->secondaryProgressAnimationUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 251
    new-instance p1, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$4;

    invoke-direct {p1, p0}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$4;-><init>(Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;)V

    iput-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->secondaryProgressAnimationAdapterListener:Landroid/animation/AnimatorListenerAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->isProgressAnimating:Z

    .line 26
    iput-boolean p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->isSecondaryProgressAnimating:Z

    .line 188
    new-instance p1, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$1;

    invoke-direct {p1, p0}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$1;-><init>(Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;)V

    iput-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->progressAnimationUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 195
    new-instance p1, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$2;

    invoke-direct {p1, p0}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$2;-><init>(Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;)V

    iput-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->progressAnimationAdapterListener:Landroid/animation/AnimatorListenerAdapter;

    .line 244
    new-instance p1, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$3;

    invoke-direct {p1, p0}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$3;-><init>(Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;)V

    iput-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->secondaryProgressAnimationUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 251
    new-instance p1, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$4;

    invoke-direct {p1, p0}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$4;-><init>(Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;)V

    iput-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->secondaryProgressAnimationAdapterListener:Landroid/animation/AnimatorListenerAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->isProgressAnimating:Z

    .line 26
    iput-boolean p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->isSecondaryProgressAnimating:Z

    .line 188
    new-instance p1, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$1;

    invoke-direct {p1, p0}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$1;-><init>(Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;)V

    iput-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->progressAnimationUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 195
    new-instance p1, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$2;

    invoke-direct {p1, p0}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$2;-><init>(Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;)V

    iput-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->progressAnimationAdapterListener:Landroid/animation/AnimatorListenerAdapter;

    .line 244
    new-instance p1, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$3;

    invoke-direct {p1, p0}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$3;-><init>(Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;)V

    iput-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->secondaryProgressAnimationUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 251
    new-instance p1, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$4;

    invoke-direct {p1, p0}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$4;-><init>(Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;)V

    iput-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->secondaryProgressAnimationAdapterListener:Landroid/animation/AnimatorListenerAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;F)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->onUpdateProgressByAnimation(F)V

    return-void
.end method

.method static synthetic access$102(Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->isProgressAnimating:Z

    return p1
.end method

.method static synthetic access$200(Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->onProgressAnimationEnd()V

    return-void
.end method

.method static synthetic access$300(Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;F)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->onUpdateSecondaryProgressByAnimation(F)V

    return-void
.end method

.method static synthetic access$402(Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->isSecondaryProgressAnimating:Z

    return p1
.end method

.method static synthetic access$500(Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->onSecondaryProgressAnimationEnd()V

    return-void
.end method

.method private clearProgressAnimation()V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->progressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private clearSecondaryProgressAnimation()V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->secondaryProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->secondaryProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private getAnimationDuration(FFFF)J
    .locals 0

    sub-float/2addr p1, p2

    .line 169
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x43fa0000    # 500.0f

    mul-float p1, p1, p2

    div-float/2addr p1, p3

    mul-float p1, p1, p4

    float-to-long p1, p1

    return-wide p1
.end method

.method private onProgressAnimationEnd()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->layoutProgress:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->onProgressChangeAnimationEnd(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private onSecondaryProgressAnimationEnd()V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->layoutSecondaryProgress:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->onProgressChangeAnimationEnd(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private onUpdateProgressByAnimation(F)V
    .locals 2

    .line 209
    invoke-super {p0, p1}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->setProgress(F)V

    .line 210
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->layoutProgress:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->lastProgress:F

    invoke-virtual {p0, v0, p1, v1}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->onProgressChangeAnimationUpdate(Landroid/widget/LinearLayout;FF)V

    return-void
.end method

.method private onUpdateSecondaryProgressByAnimation(F)V
    .locals 2

    .line 265
    invoke-super {p0, p1}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->setSecondaryProgress(F)V

    .line 266
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->layoutSecondaryProgress:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->lastProgress:F

    invoke-virtual {p0, v0, p1, v1}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->onProgressChangeAnimationUpdate(Landroid/widget/LinearLayout;FF)V

    return-void
.end method

.method private restoreProgressAnimationState()V
    .locals 2

    .line 218
    iget-boolean v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->isProgressAnimating:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-super {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->getProgress()F

    move-result v0

    iget v1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->lastProgress:F

    invoke-direct {p0, v0, v1}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->startProgressAnimation(FF)V

    :cond_0
    return-void
.end method

.method private restoreSecondaryProgressAnimationState()V
    .locals 2

    .line 274
    iget-boolean v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->isSecondaryProgressAnimating:Z

    if-eqz v0, :cond_0

    .line 275
    invoke-super {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->getSecondaryProgress()F

    move-result v0

    iget v1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->lastSecondaryProgress:F

    invoke-direct {p0, v0, v1}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->startSecondaryProgressAnimation(FF)V

    :cond_0
    return-void
.end method

.method private startProgressAnimation(FF)V
    .locals 3

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->isProgressAnimating:Z

    .line 175
    iget-object v1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->progressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 176
    iget-object v2, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->progressAnimationUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 177
    iget-object v1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->progressAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->progressAnimationAdapterListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 178
    iget-object v1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v1, 0x0

    .line 179
    iput-object v1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->progressAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    aput p2, v1, v0

    .line 181
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->progressAnimator:Landroid/animation/ValueAnimator;

    .line 182
    iget v1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->max:F

    iget v2, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->animationSpeedScale:F

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->getAnimationDuration(FFFF)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 183
    iget-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->progressAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->progressAnimationUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 184
    iget-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->progressAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->progressAnimationAdapterListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 185
    iget-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startSecondaryProgressAnimation(FF)V
    .locals 3

    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->isSecondaryProgressAnimating:Z

    .line 231
    iget-object v1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->secondaryProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 232
    iget-object v2, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->secondaryProgressAnimationUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 233
    iget-object v1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->secondaryProgressAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->secondaryProgressAnimationAdapterListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 234
    iget-object v1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->secondaryProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v1, 0x0

    .line 235
    iput-object v1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->secondaryProgressAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    aput p2, v1, v0

    .line 237
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->secondaryProgressAnimator:Landroid/animation/ValueAnimator;

    .line 238
    iget v1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->max:F

    iget v2, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->animationSpeedScale:F

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->getAnimationDuration(FFFF)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 239
    iget-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->secondaryProgressAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->secondaryProgressAnimationUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 240
    iget-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->secondaryProgressAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->secondaryProgressAnimationAdapterListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 241
    iget-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->secondaryProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public disableAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->isAnimationEnabled:Z

    return-void
.end method

.method public enableAnimation()V
    .locals 1

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->isAnimationEnabled:Z

    return-void
.end method

.method public getAnimationSpeedScale()F
    .locals 1

    .line 122
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->animationSpeedScale:F

    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->isAnimationEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->isProgressAnimating:Z

    if-nez v0, :cond_0

    .line 63
    invoke-super {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->getProgress()F

    move-result v0

    return v0

    .line 65
    :cond_0
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->lastProgress:F

    return v0
.end method

.method public getSecondaryProgress()F
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->isAnimationEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->isSecondaryProgressAnimating:Z

    if-nez v0, :cond_0

    .line 93
    invoke-super {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->getSecondaryProgress()F

    move-result v0

    return v0

    .line 95
    :cond_0
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->lastSecondaryProgress:F

    return v0
.end method

.method public isProgressAnimating()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->isProgressAnimating:Z

    return v0
.end method

.method public isSecondaryProgressAnimating()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->isSecondaryProgressAnimating:Z

    return v0
.end method

.method protected onProgressChangeAnimationEnd(Landroid/widget/LinearLayout;)V
    .locals 0

    return-void
.end method

.method public onProgressChangeAnimationUpdate(Landroid/widget/LinearLayout;FF)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 302
    instance-of v0, p1, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$SavedState;

    if-nez v0, :cond_0

    .line 303
    invoke-super {p0, p1}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 307
    :cond_0
    check-cast p1, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$SavedState;

    .line 308
    invoke-virtual {p1}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 310
    iget-boolean v0, p1, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$SavedState;->isProgressAnimating:Z

    iput-boolean v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->isProgressAnimating:Z

    .line 311
    iget-boolean v0, p1, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$SavedState;->isSecondaryProgressAnimating:Z

    iput-boolean v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->isSecondaryProgressAnimating:Z

    .line 312
    iget v0, p1, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$SavedState;->lastProgress:F

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->lastProgress:F

    .line 313
    iget v0, p1, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$SavedState;->lastSecondaryProgress:F

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->lastSecondaryProgress:F

    .line 314
    iget v0, p1, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$SavedState;->animationSpeedScale:F

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->animationSpeedScale:F

    .line 315
    iget-boolean p1, p1, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$SavedState;->isAnimationEnabled:Z

    iput-boolean p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->isAnimationEnabled:Z

    .line 316
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->restoreProgressAnimationState()V

    .line 317
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->restoreSecondaryProgressAnimationState()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 287
    invoke-super {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 288
    new-instance v1, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$SavedState;

    invoke-direct {v1, v0}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 290
    iget-boolean v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->isProgressAnimating:Z

    iput-boolean v0, v1, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$SavedState;->isProgressAnimating:Z

    .line 291
    iget-boolean v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->isSecondaryProgressAnimating:Z

    iput-boolean v0, v1, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$SavedState;->isSecondaryProgressAnimating:Z

    .line 292
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->lastProgress:F

    iput v0, v1, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$SavedState;->lastProgress:F

    .line 293
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->lastSecondaryProgress:F

    iput v0, v1, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$SavedState;->lastSecondaryProgress:F

    .line 294
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->animationSpeedScale:F

    iput v0, v1, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$SavedState;->animationSpeedScale:F

    .line 295
    iget-boolean v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->isAnimationEnabled:Z

    iput-boolean v0, v1, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar$SavedState;->isAnimationEnabled:Z

    return-object v1
.end method

.method public setAnimationSpeedScale(F)V
    .locals 1

    const/high16 v0, 0x40a00000    # 5.0f

    .line 134
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const v0, 0x3e4ccccd    # 0.2f

    .line 135
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 136
    iput p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->animationSpeedScale:F

    return-void
.end method

.method public setProgress(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->max:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 81
    :goto_0
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->clearProgressAnimation()V

    .line 82
    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->lastProgress:F

    .line 83
    iget-boolean p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->isAnimationEnabled:Z

    if-eqz p1, :cond_1

    .line 84
    invoke-super {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->getProgress()F

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->startProgressAnimation(FF)V

    return-void

    .line 86
    :cond_1
    invoke-super {p0, v0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->setProgress(F)V

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    int-to-float p1, p1

    .line 71
    invoke-virtual {p0, p1}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->setProgress(F)V

    return-void
.end method

.method public setSecondaryProgress(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->max:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 111
    :goto_0
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->clearSecondaryProgressAnimation()V

    .line 112
    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->lastSecondaryProgress:F

    .line 113
    iget-boolean p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->isAnimationEnabled:Z

    if-eqz p1, :cond_1

    .line 114
    invoke-super {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->getSecondaryProgress()F

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->startSecondaryProgressAnimation(FF)V

    return-void

    .line 116
    :cond_1
    invoke-super {p0, v0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->setSecondaryProgress(F)V

    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 0

    int-to-float p1, p1

    .line 101
    invoke-virtual {p0, p1}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->setSecondaryProgress(F)V

    return-void
.end method

.method public setupStyleable(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 51
    invoke-super {p0, p1, p2}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->setupStyleable(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    sget-object v0, Lcom/akexorcist/roundcornerprogressbar/a$d;->AnimatedRoundCornerProgressBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 53
    sget p2, Lcom/akexorcist/roundcornerprogressbar/a$d;->AnimatedRoundCornerProgressBar_rcAnimationEnable:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->isAnimationEnabled:Z

    .line 54
    sget p2, Lcom/akexorcist/roundcornerprogressbar/a$d;->AnimatedRoundCornerProgressBar_rcAnimationSpeedScale:I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->animationSpeedScale:F

    .line 55
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    invoke-super {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->getProgress()F

    move-result p1

    iput p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->lastProgress:F

    .line 57
    invoke-super {p0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->getSecondaryProgress()F

    move-result p1

    iput p1, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->lastSecondaryProgress:F

    return-void
.end method

.method public stopProgressAnimationImmediately()V
    .locals 1

    .line 154
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->clearProgressAnimation()V

    .line 155
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->clearSecondaryProgressAnimation()V

    .line 156
    iget-boolean v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->isAnimationEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->isProgressAnimating:Z

    if-eqz v0, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->disableAnimation()V

    .line 158
    iget-boolean v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->isProgressAnimating:Z

    if-eqz v0, :cond_0

    .line 159
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->lastProgress:F

    invoke-super {p0, v0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->setProgress(F)V

    .line 161
    :cond_0
    iget-boolean v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->isSecondaryProgressAnimating:Z

    if-eqz v0, :cond_1

    .line 162
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->lastProgress:F

    invoke-super {p0, v0}, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar;->setSecondaryProgress(F)V

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->enableAnimation()V

    :cond_2
    return-void
.end method
