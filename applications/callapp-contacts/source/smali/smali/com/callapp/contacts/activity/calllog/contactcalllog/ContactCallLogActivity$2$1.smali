.class Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$2;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$2;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$2$1;->b:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$2;

    iput-object p2, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$2$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$2$1;->b:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$2;->this$0:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$2$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$2$1;->b:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$2;->this$0:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->b(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;

    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$2$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->setContact(Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method
