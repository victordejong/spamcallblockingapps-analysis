.class Lcom/callapp/contacts/observers/CallLogContentObserver$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/model/contact/ContactDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/observers/CallLogContentObserver;->a(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/observers/CallLogContentObserver;

.field final synthetic val$missedCallsForNotificationList:Ljava/util/List;

.field final synthetic val$paramsMissedCallIncoming:Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/observers/CallLogContentObserver;Ljava/util/List;Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/callapp/contacts/observers/CallLogContentObserver$6;->this$0:Lcom/callapp/contacts/observers/CallLogContentObserver;

    iput-object p2, p0, Lcom/callapp/contacts/observers/CallLogContentObserver$6;->val$missedCallsForNotificationList:Ljava/util/List;

    iput-object p3, p0, Lcom/callapp/contacts/observers/CallLogContentObserver$6;->val$paramsMissedCallIncoming:Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;

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

    .line 346
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

    if-eqz p2, :cond_1

    .line 347
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->hasAnyPhotoUrl()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 349
    :cond_0
    iget-object p2, p0, Lcom/callapp/contacts/observers/CallLogContentObserver$6;->this$0:Lcom/callapp/contacts/observers/CallLogContentObserver;

    iget-object v0, p0, Lcom/callapp/contacts/observers/CallLogContentObserver$6;->val$missedCallsForNotificationList:Ljava/util/List;

    iget-object v1, p0, Lcom/callapp/contacts/observers/CallLogContentObserver$6;->val$paramsMissedCallIncoming:Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;

    invoke-static {p2, v0, v1, p1}, Lcom/callapp/contacts/observers/CallLogContentObserver;->b(Lcom/callapp/contacts/observers/CallLogContentObserver;Ljava/util/List;Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;Lcom/callapp/contacts/model/contact/ContactData;)V

    :cond_1
    return-void
.end method
