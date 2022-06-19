.class Lcom/callapp/contacts/loader/social/BaseSocialLoader$FullNameSearcher;
.super Lcom/callapp/contacts/loader/social/BaseSocialLoader$BaseSearcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/loader/social/BaseSocialLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullNameSearcher"
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

    .line 369
    iput-object p1, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader$FullNameSearcher;->b:Lcom/callapp/contacts/loader/social/BaseSocialLoader;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/loader/social/BaseSocialLoader$BaseSearcher;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/social/BaseSocialLoader$1;)V
    .locals 0

    .line 369
    invoke-direct {p0, p1}, Lcom/callapp/contacts/loader/social/BaseSocialLoader$FullNameSearcher;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 4

    .line 372
    iget-object v0, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader$FullNameSearcher;->b:Lcom/callapp/contacts/loader/social/BaseSocialLoader;

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/model/contact/ContactData;->getNegatives(Lcom/callapp/contacts/model/contact/DataSource;)Ljava/util/Set;

    move-result-object v0

    .line 373
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v1

    .line 374
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->k(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 376
    invoke-virtual {p0, v1, p1, v0, v3}, Lcom/callapp/contacts/loader/social/BaseSocialLoader$FullNameSearcher;->a(Ljava/lang/String;Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Collection;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v3
.end method
