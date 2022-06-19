.class public Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlingListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

.field private b:Z

.field private c:Z

.field private d:F


# direct methods
.method protected constructor <init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 p1, 0x0

    .line 508
    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;->d:F

    return-void
.end method


# virtual methods
.method public getGetVelocityY()F
    .locals 1

    .line 534
    iget v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;->d:F

    return v0
.end method

.method public isFling()Z
    .locals 1

    .line 526
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;->b:Z

    return v0
.end method

.method public isFlingUpwards()Z
    .locals 1

    .line 530
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;->c:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 512
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;->c:Z

    .line 513
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;->b:Z

    .line 514
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    const/4 v0, 0x1

    .line 519
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;->b:Z

    .line 520
    iput p4, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;->d:F

    const/4 v1, 0x0

    cmpg-float v1, p4, v1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 521
    :goto_0
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;->c:Z

    .line 522
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method
