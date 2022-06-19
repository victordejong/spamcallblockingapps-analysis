.class public abstract Lcom/callapp/contacts/loader/im/BaseChatLoader;
.super Lcom/callapp/contacts/loader/SimpleContactLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/loader/im/BaseChatLoader$ChatStarter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/callapp/contacts/loader/SimpleContactLoader;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/Collection;Lcom/callapp/contacts/loader/im/BaseChatLoader$ChatStarter;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONIMaddress;",
            ">;",
            "Lcom/callapp/contacts/loader/im/BaseChatLoader$ChatStarter;",
            ")Z"
        }
    .end annotation

    .line 97
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 100
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/common/model/json/JSONIMaddress;

    .line 103
    invoke-virtual {v4}, Lcom/callapp/common/model/json/JSONIMaddress;->getIMAddress()Ljava/lang/String;

    move-result-object v4

    .line 104
    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 105
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v5, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;

    invoke-direct {v5, v4, v3}, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 112
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/callapp/contacts/loader/im/BaseChatLoader$ChatStarter;->a(Landroid/content/Context;Ljava/lang/String;)V

    return v3

    .line 116
    :cond_2
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 117
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 118
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 120
    new-instance v0, Lcom/callapp/contacts/popup/contact/DialogList;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/callapp/contacts/popup/contact/DialogList;-><init>(Ljava/lang/String;)V

    .line 121
    new-instance v1, Lcom/callapp/contacts/popup/contact/AdapterText;

    const v4, 0x7f0d00aa

    invoke-direct {v1, p0, v4, v2}, Lcom/callapp/contacts/popup/contact/AdapterText;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 122
    new-instance v2, Lcom/callapp/contacts/loader/im/BaseChatLoader$1;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/callapp/contacts/loader/im/BaseChatLoader$1;-><init>(Landroid/content/Context;Lcom/callapp/contacts/loader/im/BaseChatLoader$ChatStarter;[Ljava/lang/String;Lcom/callapp/contacts/popup/contact/DialogList;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/popup/contact/AdapterText;->setListener(Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V

    .line 130
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/popup/contact/DialogList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return v3

    :cond_3
    return v1
.end method


# virtual methods
.method protected abstract a(Lcom/callapp/common/model/json/JSONIMaddress;Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/contact/ChatData;
.end method

.method protected abstract a(Lcom/callapp/contacts/model/contact/ContactData;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lcom/callapp/contacts/model/contact/ChatData;",
            ">;"
        }
    .end annotation
.end method

.method public a(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 4

    .line 75
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/im/BaseChatLoader;->getChatField()Lcom/callapp/contacts/model/contact/ContactField;

    move-result-object v0

    .line 76
    iget-object v1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    iget-object p1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 78
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/im/BaseChatLoader;->a(Lcom/callapp/contacts/model/contact/ContactData;)Ljava/util/Collection;

    move-result-object v0

    .line 1055
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/im/BaseChatLoader;->isAppInstalled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    .line 1059
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/im/BaseChatLoader;->getProtocolId()I

    move-result v1

    invoke-virtual {p0}, Lcom/callapp/contacts/loader/im/BaseChatLoader;->getEmailSuffixes()[Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v3}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/contacts/model/contact/ContactData;I[Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 1060
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 1064
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1065
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/common/model/json/JSONIMaddress;

    .line 1066
    invoke-virtual {p0, v3, p1}, Lcom/callapp/contacts/loader/im/BaseChatLoader;->a(Lcom/callapp/common/model/json/JSONIMaddress;Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/contact/ChatData;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_2
    :goto_1
    invoke-static {v0, v2}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 81
    invoke-virtual {p0, p1, v2}, Lcom/callapp/contacts/loader/im/BaseChatLoader;->a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Collection;)V

    if-eqz v2, :cond_3

    .line 83
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/contact/ChatData;

    .line 85
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ChatData;->getPresence()I

    goto :goto_2

    :cond_3
    return-void
.end method

.method protected abstract a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/callapp/contacts/model/contact/ChatData;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract getChatField()Lcom/callapp/contacts/model/contact/ContactField;
.end method

.method protected abstract getEmailSuffixes()[Ljava/lang/String;
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 37
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->imAddresses:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getProtocolId()I
.end method

.method protected abstract isAppInstalled()Z
.end method
