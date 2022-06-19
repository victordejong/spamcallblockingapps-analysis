.class final Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$1;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .line 61
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->LINKED_ACCOUNTS_SOURCE:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/contact/DataSource;

    .line 63
    sget-object v2, Lcom/callapp/contacts/model/contact/DataSource;->google:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/callapp/contacts/util/GooglePlayUtils;->isGooglePlayServicesAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    :cond_1
    invoke-static {v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$1;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method
