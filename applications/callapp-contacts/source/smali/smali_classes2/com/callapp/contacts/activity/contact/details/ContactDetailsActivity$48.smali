.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$48;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setFavoriteButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V
    .locals 0

    .line 2925
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$48;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2928
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$48;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$5900(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/widget/CallAppCheckBox;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2929
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$48;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$48;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$48;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$48;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2930
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$48;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$900(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->CONTACT_DETAILS:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2931
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$48;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$5900(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/widget/CallAppCheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/widget/CallAppCheckBox;->setVisibility(I)V

    .line 2933
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$48;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2936
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/DeviceData;->isFavorite()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2937
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v2, v0

    .line 2939
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$48;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$5900(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/widget/CallAppCheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/widget/CallAppCheckBox;->setChecked(Z)V

    return-void

    .line 2941
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$48;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$5900(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/widget/CallAppCheckBox;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/CallAppCheckBox;->setVisibility(I)V

    :cond_3
    return-void
.end method
