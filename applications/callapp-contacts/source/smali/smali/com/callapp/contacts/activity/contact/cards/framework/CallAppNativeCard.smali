.class public Lcom/callapp/contacts/activity/contact/cards/framework/CallAppNativeCard;
.super Lit/gmariotti/cardslib/library/view/CardViewNative;
.source "SourceFile"


# instance fields
.field private x:Z

.field private y:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority$CardEventsListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 14
    invoke-direct {p0, p1, v0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/CallAppNativeCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/CallAppNativeCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lit/gmariotti/cardslib/library/view/CardViewNative;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CallAppNativeCard;->x:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 34
    :cond_0
    invoke-super {p0, p1}, Lit/gmariotti/cardslib/library/view/CardViewNative;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 41
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CallAppNativeCard;->x:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-ne v0, v1, :cond_2

    .line 45
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CallAppNativeCard;->y:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority$CardEventsListener;

    if-eqz p1, :cond_1

    .line 46
    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority$CardEventsListener;->a()V

    :cond_1
    return v1

    .line 51
    :cond_2
    invoke-super {p0, p1}, Lit/gmariotti/cardslib/library/view/CardViewNative;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setCardEventsListener(Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority$CardEventsListener;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CallAppNativeCard;->y:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority$CardEventsListener;

    return-void
.end method

.method public setLocked(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CallAppNativeCard;->x:Z

    return-void
.end method
