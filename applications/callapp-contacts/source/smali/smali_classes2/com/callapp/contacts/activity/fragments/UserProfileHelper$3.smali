.class Lcom/callapp/contacts/activity/fragments/UserProfileHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/event/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/fragments/UserProfileHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/event/Callback<",
        "Lcom/callapp/contacts/model/contact/ContactData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/fragments/UserProfileHelper;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/fragments/UserProfileHelper;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper$3;->a:Lcom/callapp/contacts/activity/fragments/UserProfileHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .line 220
    check-cast p1, Lcom/callapp/contacts/model/contact/ContactData;

    .line 1223
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper$3;->a:Lcom/callapp/contacts/activity/fragments/UserProfileHelper;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->setFullNameIfEmpty(Ljava/lang/String;)V

    .line 1224
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper$3;->a:Lcom/callapp/contacts/activity/fragments/UserProfileHelper;

    invoke-static {v0}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->a(Lcom/callapp/contacts/activity/fragments/UserProfileHelper;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getEmails()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1225
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getEmails()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/common/model/json/JSONEmail;

    .line 1226
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper$3;->a:Lcom/callapp/contacts/activity/fragments/UserProfileHelper;

    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONEmail;->getEmail()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->a(Lcom/callapp/contacts/activity/fragments/UserProfileHelper;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method
