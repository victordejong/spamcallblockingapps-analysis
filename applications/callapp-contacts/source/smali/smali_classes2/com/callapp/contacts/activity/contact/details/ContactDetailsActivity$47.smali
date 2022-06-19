.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$47;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->sendWhoViewedMyProfileIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V
    .locals 0

    .line 2915
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$47;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$47;->a:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 2918
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$47;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$47;->a:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;->a(Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V

    return-void
.end method
