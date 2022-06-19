.class public abstract Lcom/callapp/contacts/widget/SingleAndMultiOnTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/callapp/contacts/widget/SingleAndMultiOnTouchListener;->a:Z

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;Landroid/view/MotionEvent;Z)Z
.end method

.method public abstract a(Z)Z
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 12
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 13
    iget-boolean p1, p0, Lcom/callapp/contacts/widget/SingleAndMultiOnTouchListener;->a:Z

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/SingleAndMultiOnTouchListener;->a(Z)Z

    move-result p1

    .line 14
    iput-boolean v1, p0, Lcom/callapp/contacts/widget/SingleAndMultiOnTouchListener;->a:Z

    return p1

    .line 17
    :cond_0
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/SingleAndMultiOnTouchListener;->a:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/SingleAndMultiOnTouchListener;->a(Landroid/view/View;Landroid/view/MotionEvent;Z)Z

    move-result p1

    .line 18
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/SingleAndMultiOnTouchListener;->a:Z

    if-eqz v0, :cond_2

    .line 19
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eq p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/callapp/contacts/widget/SingleAndMultiOnTouchListener;->a:Z

    :cond_2
    return p1
.end method
