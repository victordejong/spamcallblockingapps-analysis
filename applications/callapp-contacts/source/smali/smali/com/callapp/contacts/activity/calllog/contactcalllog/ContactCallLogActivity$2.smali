.class Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/model/contact/ContactDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$2;->this$0:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$2;->this$0:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->a(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    .line 97
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 98
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    new-instance v0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$2$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$2$1;-><init>(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$2;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
