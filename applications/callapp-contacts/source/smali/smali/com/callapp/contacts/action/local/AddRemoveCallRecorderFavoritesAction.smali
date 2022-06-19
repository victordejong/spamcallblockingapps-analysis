.class public Lcom/callapp/contacts/action/local/AddRemoveCallRecorderFavoritesAction;
.super Lcom/callapp/contacts/action/local/LocalAction;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/callapp/contacts/action/local/LocalAction;-><init>()V

    .line 21
    iput-boolean p1, p0, Lcom/callapp/contacts/action/local/AddRemoveCallRecorderFavoritesAction;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 44
    instance-of p2, p3, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    if-nez p2, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    check-cast p3, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    .line 49
    invoke-virtual {p3}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getStarred()Z

    move-result p2

    .line 50
    iget-boolean p3, p0, Lcom/callapp/contacts/action/local/AddRemoveCallRecorderFavoritesAction;->a:Z

    if-eqz p3, :cond_1

    if-eqz p2, :cond_2

    return v0

    :cond_1
    if-nez p2, :cond_2

    return v0

    .line 60
    :cond_2
    sget-object p2, Lcom/callapp/contacts/action/local/AddRemoveCallRecorderFavoritesAction$1;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/action/Action$ContextType;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    return v0

    :cond_3
    return p2

    :cond_4
    :goto_0
    return v0
.end method

.method public final b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 3

    .line 26
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Actions"

    const-string v1, "Add or remove CallRecorder favorite action"

    const-string v2, "Clicked"

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object p1

    check-cast p3, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-virtual {p1, p3, p2}, Lcom/callapp/contacts/recorder/CallRecorderManager;->a(Lcom/callapp/contacts/model/objectbox/CallRecorder;Lcom/callapp/contacts/model/contact/ContactData;)Z

    return-void
.end method

.method public final getDescriptionMessage$469752d4()Ljava/lang/String;
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/callapp/contacts/action/local/AddRemoveCallRecorderFavoritesAction;->a:Z

    if-eqz v0, :cond_0

    const v0, 0x7f12013e

    goto :goto_0

    :cond_0
    const v0, 0x7f120158

    .line 39
    :goto_0
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/action/local/AddRemoveCallRecorderFavoritesAction;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
