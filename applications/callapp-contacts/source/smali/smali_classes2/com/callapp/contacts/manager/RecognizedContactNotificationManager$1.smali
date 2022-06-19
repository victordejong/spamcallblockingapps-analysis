.class Lcom/callapp/contacts/manager/RecognizedContactNotificationManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/model/contact/ContactDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;

.field final synthetic val$dataForNotification:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;

.field final synthetic val$dataForNotificationList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;Ljava/util/List;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager$1;->this$0:Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager$1;->val$dataForNotification:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;

    iput-object p3, p0, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager$1;->val$dataForNotificationList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 164
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 165
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 166
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    .line 168
    invoke-static {p1}, Lcom/callapp/contacts/loader/FastCacheDataManager;->a(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 172
    :cond_1
    iget-object p2, p0, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager$1;->val$dataForNotification:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->setContactData(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 173
    iget-object p1, p0, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager$1;->this$0:Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;

    iget-object p2, p0, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager$1;->val$dataForNotificationList:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;->a(Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;Ljava/util/List;)V

    :cond_2
    return-void
.end method
