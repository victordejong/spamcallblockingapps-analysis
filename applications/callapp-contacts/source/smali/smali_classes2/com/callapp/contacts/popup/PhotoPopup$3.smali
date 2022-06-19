.class Lcom/callapp/contacts/popup/PhotoPopup$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/PhotoPopup;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/PhotoPopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/PhotoPopup;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/callapp/contacts/popup/PhotoPopup$3;->a:Lcom/callapp/contacts/popup/PhotoPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    .line 138
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 139
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "User corrected info"

    const-string v1, "Click edit image "

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object p1, p0, Lcom/callapp/contacts/popup/PhotoPopup$3;->a:Lcom/callapp/contacts/popup/PhotoPopup;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/PhotoPopup;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/popup/PhotoPopup$3;->a:Lcom/callapp/contacts/popup/PhotoPopup;

    invoke-static {v0}, Lcom/callapp/contacts/popup/PhotoPopup;->b(Lcom/callapp/contacts/popup/PhotoPopup;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->openContactProfile(Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 141
    iget-object p1, p0, Lcom/callapp/contacts/popup/PhotoPopup$3;->a:Lcom/callapp/contacts/popup/PhotoPopup;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/PhotoPopup;->dismiss()V

    return-void
.end method
