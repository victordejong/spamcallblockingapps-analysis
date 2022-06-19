.class Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$3;
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

    .line 128
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$3;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    .line 131
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 132
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v1, "Keypad"

    const-string v2, "Closing keypad - clicked on show keyboard"

    const-string v3, "Keypad Events"

    invoke-virtual {p1, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$3;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$KeypadSearchEvents;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 134
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$3;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$KeypadSearchEvents;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$KeypadSearchEvents;->onCloseKeypadRequestedByUser(Z)V

    :cond_0
    return-void
.end method
