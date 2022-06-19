.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$45;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 2845
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$45;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$45;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2848
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$45;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$45;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->isUnsearchableNumber()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$45;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$45;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$45;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setShouldHideSocialProfileAction(Z)V

    return-void
.end method
