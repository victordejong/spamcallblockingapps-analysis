.class public Lcom/callapp/contacts/widget/SwipeGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    sget-object v0, Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;->HIGH:Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/callapp/contacts/widget/SwipeGestureListener;-><init>(ZLcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;)V

    return-void
.end method

.method public constructor <init>(ZLcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/callapp/contacts/widget/SwipeGestureListener;->b:Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;

    xor-int/lit8 p1, p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/SwipeGestureListener;->a:Z

    return-void
.end method

.method private b()Z
    .locals 2

    .line 163
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/SwipeGestureListener;->isUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/widget/SwipeGestureListener$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/widget/SwipeGestureListener$1;-><init>(Lcom/callapp/contacts/widget/SwipeGestureListener;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected a(F)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected b(F)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isUnlocked()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/SwipeGestureListener;->a:Z

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/callapp/contacts/widget/SwipeGestureListener;->b()Z

    move-result p1

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/callapp/contacts/widget/SwipeGestureListener;->b()Z

    move-result p1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const/4 v0, 0x0

    .line 81
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 82
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    .line 84
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1

    .line 85
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p4, p0, Lcom/callapp/contacts/widget/SwipeGestureListener;->b:Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;

    invoke-virtual {p4}, Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;->getThreshold()I

    move-result p4

    int-to-float p4, p4

    cmpl-float p1, p1, p4

    if-lez p1, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p4, p0, Lcom/callapp/contacts/widget/SwipeGestureListener;->b:Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;

    invoke-virtual {p4}, Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;->getVelocityThreshold()I

    move-result p4

    int-to-float p4, p4

    cmpl-float p1, p1, p4

    if-lez p1, :cond_2

    cmpl-float p1, p2, v3

    if-lez p1, :cond_0

    cmpl-float p1, p3, v3

    if-lez p1, :cond_2

    .line 89
    invoke-virtual {p0, p3}, Lcom/callapp/contacts/widget/SwipeGestureListener;->b(F)Z

    move-result v0

    goto :goto_0

    :cond_0
    cmpg-float p1, p3, v3

    if-gez p1, :cond_2

    .line 94
    invoke-virtual {p0, p3}, Lcom/callapp/contacts/widget/SwipeGestureListener;->a(F)Z

    move-result v0

    goto :goto_0

    .line 99
    :cond_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcom/callapp/contacts/widget/SwipeGestureListener;->b:Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;

    invoke-virtual {p2}, Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;->getThreshold()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcom/callapp/contacts/widget/SwipeGestureListener;->b:Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;

    invoke-virtual {p2}, Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;->getVelocityThreshold()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    cmpl-float p1, v1, v3

    if-lez p1, :cond_2

    .line 101
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/SwipeGestureListener;->a()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    const-class p1, Lcom/callapp/contacts/widget/SwipeGestureListener;

    const-string p2, "onFling error"

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/callapp/contacts/widget/SwipeGestureListener;->b()Z

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 159
    invoke-direct {p0}, Lcom/callapp/contacts/widget/SwipeGestureListener;->b()Z

    move-result p1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
