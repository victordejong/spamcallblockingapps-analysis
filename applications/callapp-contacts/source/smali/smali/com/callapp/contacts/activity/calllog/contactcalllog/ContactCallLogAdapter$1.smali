.class Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/callapp/contacts/activity/calllog/SingleCallLogData;

.field final synthetic c:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;Landroid/content/Context;Lcom/callapp/contacts/activity/calllog/SingleCallLogData;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter$1;->c:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter$1;->b:Lcom/callapp/contacts/activity/calllog/SingleCallLogData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/callapp/framework/phone/Phone;Z)V
    .locals 9

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 87
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter$1;->a:Landroid/content/Context;

    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter$1;->b:Lcom/callapp/contacts/activity/calllog/SingleCallLogData;

    iget-wide v2, p2, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;->contactId:J

    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter$1;->c:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;

    invoke-static {p2}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;->a(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;)Ljava/lang/String;

    move-result-object v4

    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter$1;->b:Lcom/callapp/contacts/activity/calllog/SingleCallLogData;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->isIncognito()Z

    move-result v7

    new-instance v8, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter$1$1;

    invoke-direct {v8, p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter$1$1;-><init>(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter$1;)V

    const-string v5, "Contact name or number"

    const-string v6, "Call"

    move-object v1, p1

    invoke-static/range {v0 .. v8}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/callapp/contacts/action/ActionDoneListener;)V

    :cond_1
    return-void
.end method
