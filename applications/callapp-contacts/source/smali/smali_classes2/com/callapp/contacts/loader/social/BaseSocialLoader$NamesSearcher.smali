.class Lcom/callapp/contacts/loader/social/BaseSocialLoader$NamesSearcher;
.super Lcom/callapp/contacts/loader/social/BaseSocialLoader$BaseSearcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/loader/social/BaseSocialLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NamesSearcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/loader/social/BaseSocialLoader<",
        "TT;>.BaseSearcher;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/callapp/contacts/loader/social/BaseSocialLoader;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader$NamesSearcher;->b:Lcom/callapp/contacts/loader/social/BaseSocialLoader;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/loader/social/BaseSocialLoader$BaseSearcher;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/social/BaseSocialLoader$1;)V
    .locals 0

    .line 384
    invoke-direct {p0, p1}, Lcom/callapp/contacts/loader/social/BaseSocialLoader$NamesSearcher;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 6

    .line 387
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getNames()Ljava/util/Collection;

    move-result-object v0

    .line 388
    iget-object v1, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader$NamesSearcher;->b:Lcom/callapp/contacts/loader/social/BaseSocialLoader;

    invoke-virtual {v1}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/model/contact/ContactData;->getNegatives(Lcom/callapp/contacts/model/contact/DataSource;)Ljava/util/Set;

    move-result-object v1

    .line 389
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v2

    .line 390
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 391
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 392
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 393
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->k(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 394
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 395
    invoke-virtual {p0, v3, p1, v1, v4}, Lcom/callapp/contacts/loader/social/BaseSocialLoader$NamesSearcher;->a(Ljava/lang/String;Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Collection;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    return v4
.end method
