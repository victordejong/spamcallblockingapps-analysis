.class public Lcom/telguarder/helpers/ui/LockableScrollView;
.super Landroid/widget/ScrollView;
.source "LockableScrollView.java"


# instance fields
.field private mScrollable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/telguarder/helpers/ui/LockableScrollView;->mScrollable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/telguarder/helpers/ui/LockableScrollView;->mScrollable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/telguarder/helpers/ui/LockableScrollView;->mScrollable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/telguarder/helpers/ui/LockableScrollView;->mScrollable:Z

    return-void
.end method


# virtual methods
.method public isScrollable()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/telguarder/helpers/ui/LockableScrollView;->mScrollable:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/telguarder/helpers/ui/LockableScrollView;->mScrollable:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 46
    :cond_0
    iget-boolean v0, p0, Lcom/telguarder/helpers/ui/LockableScrollView;->mScrollable:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public setScrollingEnabled(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/telguarder/helpers/ui/LockableScrollView;->mScrollable:Z

    return-void
.end method
