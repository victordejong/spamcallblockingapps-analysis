.class Lcom/callapp/contacts/activity/favorites/AutoScroller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/favorites/AutoScroller$AutoScrollListener;,
        Lcom/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection;,
        Lcom/callapp/contacts/activity/favorites/AutoScroller$AutoScrollMode;
    }
.end annotation


# instance fields
.field a:Z

.field private b:Landroid/os/Handler;

.field private c:Lcom/callapp/contacts/activity/favorites/AutoScroller$AutoScrollListener;

.field private d:I

.field private e:J

.field private f:Lcom/callapp/contacts/activity/favorites/AutoScroller$AutoScrollMode;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/callapp/contacts/activity/favorites/AutoScroller$AutoScrollListener;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/favorites/AutoScroller;->b:Landroid/os/Handler;

    .line 48
    sget-object p1, Lcom/callapp/contacts/activity/favorites/AutoScroller$AutoScrollMode;->POSITION:Lcom/callapp/contacts/activity/favorites/AutoScroller$AutoScrollMode;

    iput-object p1, p0, Lcom/callapp/contacts/activity/favorites/AutoScroller;->f:Lcom/callapp/contacts/activity/favorites/AutoScroller$AutoScrollMode;

    .line 51
    iput-object p2, p0, Lcom/callapp/contacts/activity/favorites/AutoScroller;->c:Lcom/callapp/contacts/activity/favorites/AutoScroller$AutoScrollListener;

    .line 52
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41000000    # 8.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/callapp/contacts/activity/favorites/AutoScroller;->d:I

    return-void
.end method

.method private a(I)V
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/favorites/AutoScroller;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/favorites/AutoScroller;->a:Z

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/favorites/AutoScroller;->a(II)V

    :cond_0
    return-void
.end method

.method private a(II)V
    .locals 2

    .line 95
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/favorites/AutoScroller;->a:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/AutoScroller;->c:Lcom/callapp/contacts/activity/favorites/AutoScroller$AutoScrollListener;

    invoke-interface {v0, p1, p2}, Lcom/callapp/contacts/activity/favorites/AutoScroller$AutoScrollListener;->a(II)V

    .line 97
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/AutoScroller;->b:Landroid/os/Handler;

    new-instance v1, Lcom/callapp/contacts/activity/favorites/AutoScroller$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/callapp/contacts/activity/favorites/AutoScroller$1;-><init>(Lcom/callapp/contacts/activity/favorites/AutoScroller;II)V

    const-wide/16 p1, 0xc

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/favorites/AutoScroller;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/favorites/AutoScroller;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/favorites/AutoScroller;II)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/favorites/AutoScroller;->a(II)V

    return-void
.end method

.method private b(I)V
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/favorites/AutoScroller;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/favorites/AutoScroller;->a:Z

    .line 109
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/favorites/AutoScroller;->c(I)V

    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 5

    .line 114
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/favorites/AutoScroller;->a:Z

    if-eqz v0, :cond_1

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/callapp/contacts/activity/favorites/AutoScroller;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/callapp/contacts/activity/favorites/AutoScroller;->e:J

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/AutoScroller;->b:Landroid/os/Handler;

    new-instance v1, Lcom/callapp/contacts/activity/favorites/AutoScroller$2;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/favorites/AutoScroller$2;-><init>(Lcom/callapp/contacts/activity/favorites/AutoScroller;I)V

    const-wide/16 v2, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method


# virtual methods
.method final a(Lcom/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection;)V
    .locals 2

    .line 68
    sget-object v0, Lcom/callapp/contacts/activity/favorites/AutoScroller$3;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/favorites/AutoScroller;->f:Lcom/callapp/contacts/activity/favorites/AutoScroller$AutoScrollMode;

    sget-object v0, Lcom/callapp/contacts/activity/favorites/AutoScroller$AutoScrollMode;->POSITION:Lcom/callapp/contacts/activity/favorites/AutoScroller$AutoScrollMode;

    if-ne p1, v0, :cond_1

    .line 79
    iget p1, p0, Lcom/callapp/contacts/activity/favorites/AutoScroller;->d:I

    neg-int p1, p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/favorites/AutoScroller;->a(I)V

    return-void

    :cond_1
    const/4 p1, -0x1

    .line 81
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/favorites/AutoScroller;->b(I)V

    :goto_0
    return-void

    .line 71
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/favorites/AutoScroller;->f:Lcom/callapp/contacts/activity/favorites/AutoScroller$AutoScrollMode;

    sget-object v1, Lcom/callapp/contacts/activity/favorites/AutoScroller$AutoScrollMode;->POSITION:Lcom/callapp/contacts/activity/favorites/AutoScroller$AutoScrollMode;

    if-ne p1, v1, :cond_3

    .line 72
    iget p1, p0, Lcom/callapp/contacts/activity/favorites/AutoScroller;->d:I

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/favorites/AutoScroller;->a(I)V

    return-void

    .line 74
    :cond_3
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/favorites/AutoScroller;->b(I)V

    return-void
.end method

.method isAutoScrolling()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/favorites/AutoScroller;->a:Z

    return v0
.end method
