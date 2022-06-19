.class public Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer$MotionCapturingTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MotionCapturingTouchListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;


# direct methods
.method protected constructor <init>(Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer$MotionCapturingTouchListener;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1109
    invoke-static {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->e(Landroid/view/View;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1110
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v0

    .line 1123
    invoke-static {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->e(Landroid/view/View;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 1124
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float p1, p1

    .line 237
    invoke-virtual {p2, v0, p1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 238
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 239
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer$MotionCapturingTouchListener;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->getManager()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->i()Z

    move-result p1

    return p1

    .line 241
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer$MotionCapturingTouchListener;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer;->getFrameLayout()Lcom/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 243
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
