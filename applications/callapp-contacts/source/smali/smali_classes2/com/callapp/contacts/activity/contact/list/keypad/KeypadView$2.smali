.class Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$2;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 118
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 119
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Keypad"

    const-string v1, "Closing keypad - clicked on close arrow"

    const-string v2, "Keypad Events"

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$2;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$KeypadSearchEvents;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 121
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$2;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$KeypadSearchEvents;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$KeypadSearchEvents;->onCloseKeypadRequestedByUser(Z)V

    :cond_0
    return-void
.end method
