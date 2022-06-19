.class public Lcom/explorestack/iab/mraid/CloseableLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/iab/mraid/CloseableLayout$a;,
        Lcom/explorestack/iab/mraid/CloseableLayout$b;,
        Lcom/explorestack/iab/mraid/CloseableLayout$c;
    }
.end annotation


# static fields
.field private static final TIMER_INTERVAL:I = 0x32


# instance fields
.field private closeClickListener:Lcom/explorestack/iab/mraid/CloseableLayout$c;

.field private closeStyle:Lcom/explorestack/iab/utils/h;

.field private closeTimerRunnable:Lcom/explorestack/iab/mraid/CloseableLayout$a;

.field private closeWrapper:Lcom/explorestack/iab/utils/d;

.field private countDownStyle:Lcom/explorestack/iab/utils/h;

.field private countDownWrapper:Lcom/explorestack/iab/utils/e;

.field private final state:Lcom/explorestack/iab/mraid/CloseableLayout$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 99
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance p1, Lcom/explorestack/iab/mraid/CloseableLayout$b;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/explorestack/iab/mraid/CloseableLayout$b;-><init>(Lcom/explorestack/iab/mraid/CloseableLayout$1;)V

    iput-object p1, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->state:Lcom/explorestack/iab/mraid/CloseableLayout$b;

    return-void
.end method

.method static synthetic access$1000(Lcom/explorestack/iab/mraid/CloseableLayout;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/explorestack/iab/mraid/CloseableLayout;->syncCloseViewState()V

    return-void
.end method

.method static synthetic access$300(Lcom/explorestack/iab/mraid/CloseableLayout;)Lcom/explorestack/iab/mraid/CloseableLayout$c;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->closeClickListener:Lcom/explorestack/iab/mraid/CloseableLayout$c;

    return-object p0
.end method

.method static synthetic access$600(Lcom/explorestack/iab/mraid/CloseableLayout;)Lcom/explorestack/iab/utils/e;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->countDownWrapper:Lcom/explorestack/iab/utils/e;

    return-object p0
.end method

.method static synthetic access$700(Lcom/explorestack/iab/mraid/CloseableLayout;)Lcom/explorestack/iab/mraid/CloseableLayout$b;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->state:Lcom/explorestack/iab/mraid/CloseableLayout$b;

    return-object p0
.end method

.method private startTimer()V
    .locals 3

    .line 179
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/CloseableLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/explorestack/iab/mraid/CloseableLayout;->stopTimer()V

    .line 183
    new-instance v0, Lcom/explorestack/iab/mraid/CloseableLayout$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/iab/mraid/CloseableLayout$a;-><init>(Lcom/explorestack/iab/mraid/CloseableLayout;Lcom/explorestack/iab/mraid/CloseableLayout$1;)V

    iput-object v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->closeTimerRunnable:Lcom/explorestack/iab/mraid/CloseableLayout$a;

    const-wide/16 v1, 0x32

    .line 184
    invoke-virtual {p0, v0, v1, v2}, Lcom/explorestack/iab/mraid/CloseableLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopTimer()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->closeTimerRunnable:Lcom/explorestack/iab/mraid/CloseableLayout$a;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/CloseableLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->closeTimerRunnable:Lcom/explorestack/iab/mraid/CloseableLayout$a;

    :cond_0
    return-void
.end method

.method private syncCloseViewState()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->state:Lcom/explorestack/iab/mraid/CloseableLayout$b;

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/CloseableLayout$b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->closeWrapper:Lcom/explorestack/iab/utils/d;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/explorestack/iab/utils/d;->d()V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->countDownWrapper:Lcom/explorestack/iab/utils/e;

    if-nez v0, :cond_1

    .line 155
    new-instance v0, Lcom/explorestack/iab/utils/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/explorestack/iab/utils/e;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->countDownWrapper:Lcom/explorestack/iab/utils/e;

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->countDownWrapper:Lcom/explorestack/iab/utils/e;

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/CloseableLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->countDownStyle:Lcom/explorestack/iab/utils/h;

    invoke-virtual {v0, v1, p0, v2}, Lcom/explorestack/iab/utils/e;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/explorestack/iab/utils/h;)V

    .line 158
    invoke-direct {p0}, Lcom/explorestack/iab/mraid/CloseableLayout;->startTimer()V

    return-void

    .line 160
    :cond_2
    invoke-direct {p0}, Lcom/explorestack/iab/mraid/CloseableLayout;->stopTimer()V

    .line 161
    iget-object v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->closeWrapper:Lcom/explorestack/iab/utils/d;

    if-nez v0, :cond_3

    .line 162
    new-instance v0, Lcom/explorestack/iab/utils/d;

    new-instance v1, Lcom/explorestack/iab/mraid/CloseableLayout$1;

    invoke-direct {v1, p0}, Lcom/explorestack/iab/mraid/CloseableLayout$1;-><init>(Lcom/explorestack/iab/mraid/CloseableLayout;)V

    invoke-direct {v0, v1}, Lcom/explorestack/iab/utils/d;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->closeWrapper:Lcom/explorestack/iab/utils/d;

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->closeWrapper:Lcom/explorestack/iab/utils/d;

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/CloseableLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->closeStyle:Lcom/explorestack/iab/utils/h;

    invoke-virtual {v0, v1, p0, v2}, Lcom/explorestack/iab/utils/d;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/explorestack/iab/utils/h;)V

    .line 172
    iget-object v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->countDownWrapper:Lcom/explorestack/iab/utils/e;

    if-eqz v0, :cond_4

    .line 173
    invoke-virtual {v0}, Lcom/explorestack/iab/utils/e;->d()V

    :cond_4
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 118
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object p1, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->closeWrapper:Lcom/explorestack/iab/utils/d;

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p1}, Lcom/explorestack/iab/utils/d;->b()V

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->countDownWrapper:Lcom/explorestack/iab/utils/e;

    if-eqz p1, :cond_1

    .line 123
    invoke-virtual {p1}, Lcom/explorestack/iab/utils/e;->b()V

    :cond_1
    return-void
.end method

.method public canBeClosed()Z
    .locals 6

    .line 210
    iget-object v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->state:Lcom/explorestack/iab/mraid/CloseableLayout$b;

    .line 5075
    iget-wide v1, v0, Lcom/explorestack/iab/mraid/CloseableLayout$b;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    iget-wide v1, v0, Lcom/explorestack/iab/mraid/CloseableLayout$b;->d:J

    iget-wide v3, v0, Lcom/explorestack/iab/mraid/CloseableLayout$b;->c:J

    cmp-long v0, v1, v3

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public getOnScreenTimeMs()J
    .locals 8

    .line 206
    iget-object v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->state:Lcom/explorestack/iab/mraid/CloseableLayout$b;

    .line 4079
    iget-wide v1, v0, Lcom/explorestack/iab/mraid/CloseableLayout$b;->f:J

    .line 4080
    iget-wide v3, v0, Lcom/explorestack/iab/mraid/CloseableLayout$b;->e:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    .line 4081
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/explorestack/iab/mraid/CloseableLayout$b;->e:J

    sub-long/2addr v1, v3

    :cond_0
    return-wide v1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 8

    .line 196
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-eqz p2, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/explorestack/iab/mraid/CloseableLayout;->stopTimer()V

    goto :goto_0

    .line 199
    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->state:Lcom/explorestack/iab/mraid/CloseableLayout$b;

    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/CloseableLayout$b;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->state:Lcom/explorestack/iab/mraid/CloseableLayout$b;

    .line 2067
    iget-boolean p1, p1, Lcom/explorestack/iab/mraid/CloseableLayout$b;->a:Z

    if-eqz p1, :cond_1

    .line 200
    invoke-direct {p0}, Lcom/explorestack/iab/mraid/CloseableLayout;->startTimer()V

    .line 202
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->state:Lcom/explorestack/iab/mraid/CloseableLayout$b;

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 3087
    :goto_1
    iget-wide v0, p1, Lcom/explorestack/iab/mraid/CloseableLayout$b;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 3088
    iget-wide v0, p1, Lcom/explorestack/iab/mraid/CloseableLayout$b;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p1, Lcom/explorestack/iab/mraid/CloseableLayout$b;->e:J

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    iput-wide v0, p1, Lcom/explorestack/iab/mraid/CloseableLayout$b;->f:J

    :cond_3
    if-eqz p2, :cond_4

    .line 3091
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/explorestack/iab/mraid/CloseableLayout$b;->e:J

    return-void

    .line 3093
    :cond_4
    iput-wide v2, p1, Lcom/explorestack/iab/mraid/CloseableLayout$b;->e:J

    return-void
.end method

.method public setCloseClickListener(Lcom/explorestack/iab/mraid/CloseableLayout$c;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->closeClickListener:Lcom/explorestack/iab/mraid/CloseableLayout$c;

    return-void
.end method

.method public setCloseStyle(Lcom/explorestack/iab/utils/h;)V
    .locals 2

    .line 103
    iput-object p1, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->closeStyle:Lcom/explorestack/iab/utils/h;

    .line 104
    iget-object v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->closeWrapper:Lcom/explorestack/iab/utils/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->closeWrapper:Lcom/explorestack/iab/utils/d;

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/CloseableLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lcom/explorestack/iab/utils/d;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/explorestack/iab/utils/h;)V

    :cond_0
    return-void
.end method

.method public setCloseVisibility(ZF)V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->state:Lcom/explorestack/iab/mraid/CloseableLayout$b;

    .line 1044
    iget-boolean v0, v0, Lcom/explorestack/iab/mraid/CloseableLayout$b;->a:Z

    if-ne v0, p1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->state:Lcom/explorestack/iab/mraid/CloseableLayout$b;

    .line 2044
    iget v0, v0, Lcom/explorestack/iab/mraid/CloseableLayout$b;->b:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->state:Lcom/explorestack/iab/mraid/CloseableLayout$b;

    .line 2056
    iput-boolean p1, v0, Lcom/explorestack/iab/mraid/CloseableLayout$b;->a:Z

    .line 2057
    iput p2, v0, Lcom/explorestack/iab/mraid/CloseableLayout$b;->b:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float p2, p2, v1

    float-to-long v1, p2

    .line 2058
    iput-wide v1, v0, Lcom/explorestack/iab/mraid/CloseableLayout$b;->c:J

    const-wide/16 v1, 0x0

    .line 2059
    iput-wide v1, v0, Lcom/explorestack/iab/mraid/CloseableLayout$b;->d:J

    if-nez p1, :cond_3

    .line 137
    iget-object p1, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->closeWrapper:Lcom/explorestack/iab/utils/d;

    if-eqz p1, :cond_1

    .line 138
    invoke-virtual {p1}, Lcom/explorestack/iab/utils/d;->d()V

    .line 140
    :cond_1
    iget-object p1, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->countDownWrapper:Lcom/explorestack/iab/utils/e;

    if-eqz p1, :cond_2

    .line 141
    invoke-virtual {p1}, Lcom/explorestack/iab/utils/e;->d()V

    .line 143
    :cond_2
    invoke-direct {p0}, Lcom/explorestack/iab/mraid/CloseableLayout;->stopTimer()V

    return-void

    .line 146
    :cond_3
    invoke-direct {p0}, Lcom/explorestack/iab/mraid/CloseableLayout;->syncCloseViewState()V

    return-void
.end method

.method public setCountDownStyle(Lcom/explorestack/iab/utils/h;)V
    .locals 2

    .line 110
    iput-object p1, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->countDownStyle:Lcom/explorestack/iab/utils/h;

    .line 111
    iget-object v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->countDownWrapper:Lcom/explorestack/iab/utils/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout;->countDownWrapper:Lcom/explorestack/iab/utils/e;

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/CloseableLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lcom/explorestack/iab/utils/e;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/explorestack/iab/utils/h;)V

    :cond_0
    return-void
.end method
