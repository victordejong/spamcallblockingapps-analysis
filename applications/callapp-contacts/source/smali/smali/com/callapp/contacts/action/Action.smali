.class public abstract Lcom/callapp/contacts/action/Action;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/action/Action$ContextType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, p1, p2, v0}, Lcom/callapp/contacts/action/Action;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "TT;)V"
        }
    .end annotation

    .line 44
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    .line 49
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/callapp/contacts/action/Action;->getDescriptionMessage$469752d4()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    new-instance v2, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/callapp/contacts/action/Action;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".toast"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 52
    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    if-gt v3, v4, :cond_0

    const/4 v3, 0x1

    .line 1039
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v2, 0x0

    .line 1132
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/callapp/contacts/action/Action;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    return-void
.end method

.method public a(Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z
    .locals 0

    .line 78
    sget-object p2, Lcom/callapp/contacts/action/Action$1;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/action/Action$ContextType;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p3, 0x2

    if-eq p1, p3, :cond_0

    const/4 p3, 0x3

    if-eq p1, p3, :cond_0

    const/4 p3, 0x4

    if-eq p1, p3, :cond_0

    const/4 p3, 0x5

    if-eq p1, p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return p2
.end method

.method protected abstract b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "TT;)V"
        }
    .end annotation
.end method

.method protected abstract getDescriptionMessage$469752d4()Ljava/lang/String;
.end method

.method public abstract getKey()Ljava/lang/String;
.end method
