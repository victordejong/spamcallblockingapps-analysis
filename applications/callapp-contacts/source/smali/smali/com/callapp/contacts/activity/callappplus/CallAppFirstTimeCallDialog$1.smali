.class Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog$1;->a:Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 51
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "CallAppPlus"

    const-string v1, "ClickFirstTimeExperiencePopup"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog$1;->a:Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog;->dismiss()V

    .line 53
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog$1;->a:Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog;

    invoke-static {p1}, Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog;->a(Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog;)Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog$ActionClick;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog$1;->a:Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog;

    invoke-static {p1}, Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog;->a(Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog;)Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog$ActionClick;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog$ActionClick;->openCallAppPlus()V

    :cond_0
    return-void
.end method
