.class Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$7;
.super Lcom/callapp/contacts/widget/SwipeGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;ZLcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$7;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-direct {p0, p2, p3}, Lcom/callapp/contacts/widget/SwipeGestureListener;-><init>(ZLcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 6

    .line 240
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getScreenOrientation()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 241
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v3, "Keypad"

    const-string v4, "Closing keypad - swipe to bottom in portrait"

    const-string v5, "Keypad Events"

    invoke-virtual {v0, v3, v4, v5}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$7;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$KeypadSearchEvents;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$KeypadSearchEvents;->onCloseKeypadRequestedByUser(Z)V

    return v2

    :cond_0
    return v1
.end method

.method public final b(F)Z
    .locals 4

    .line 230
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getScreenOrientation()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 231
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v1, "Keypad"

    const-string v2, "Closing keypad - swipe to the right in landscape"

    const-string v3, "Keypad Events"

    invoke-virtual {p1, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$7;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$KeypadSearchEvents;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$KeypadSearchEvents;->onCloseKeypadRequestedByUser(Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method
