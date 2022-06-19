.class Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog;Landroid/widget/TextView;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog$2;->b:Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog$2;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 73
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog$2;->b:Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog;->dismiss()V

    .line 74
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog$2;->a:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 75
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog$2;->b:Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog;

    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog;->a(Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    new-instance v1, Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog$2$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog$2$1;-><init>(Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog$2;)V

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;ZLcom/callapp/contacts/manager/popup/ActivityResult;)V

    return-void
.end method
