.class public Lcom/callapp/contacts/loader/social/instagram/InstagramLoader;
.super Lcom/callapp/contacts/loader/social/BaseSocialLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/loader/social/BaseSocialLoader<",
        "Lcom/callapp/contacts/model/contact/social/InstagramData;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 29
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->instagramId:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->genomeData:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->names:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/loader/social/instagram/InstagramLoader;->b:Ljava/util/Set;

    .line 32
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->instagramId:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->instagramData:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->instagramSearchResults:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->names:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->websites:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->isFriend:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->uploadedPhotosUrl:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/loader/social/instagram/InstagramLoader;->c:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/social/SocialData;Lcom/callapp/contacts/model/contact/social/SocialData;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 54
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->updateInstagramId()V

    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/contact/social/InstagramData;",
            ">;"
        }
    .end annotation

    .line 49
    const-class v0, Lcom/callapp/contacts/model/contact/social/InstagramData;

    return-object v0
.end method

.method public getDataSource()Lcom/callapp/contacts/model/contact/DataSource;
    .locals 1

    .line 44
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->instagram:Lcom/callapp/contacts/model/contact/DataSource;

    return-object v0
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/callapp/contacts/loader/social/instagram/InstagramLoader;->b:Ljava/util/Set;

    return-object v0
.end method

.method public getLoadedFields()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 75
    sget-object v0, Lcom/callapp/contacts/loader/social/instagram/InstagramLoader;->c:Ljava/util/EnumSet;

    return-object v0
.end method

.method public bridge synthetic getLoadedFields()Ljava/util/Set;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/social/instagram/InstagramLoader;->getLoadedFields()Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getSocialHelper()Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;
    .locals 1

    .line 69
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getInstagramHelper()Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;

    move-result-object v0

    return-object v0
.end method
