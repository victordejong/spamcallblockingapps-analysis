.class Lcom/pubmatic/sdk/common/cache/POBCacheManager$d;
.super Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBProfileConfigListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/common/cache/POBCacheManager;->requestPartnerConfiguration(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;[Lcom/pubmatic/sdk/common/POBAdSize;Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBPartnerConfigListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Lcom/pubmatic/sdk/common/POBAdSize;

.field final synthetic c:Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBPartnerConfigListener;

.field final synthetic d:I


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/common/cache/POBCacheManager;Ljava/lang/String;[Lcom/pubmatic/sdk/common/POBAdSize;Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBPartnerConfigListener;I)V
    .locals 0

    iput-object p2, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$d;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$d;->b:[Lcom/pubmatic/sdk/common/POBAdSize;

    iput-object p4, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$d;->c:Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBPartnerConfigListener;

    iput p5, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$d;->d:I

    invoke-direct {p0}, Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBProfileConfigListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onError(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$d;->c:Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBPartnerConfigListener;

    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBPartnerConfigListener;->onPartnerConfigFailed(Lcom/pubmatic/sdk/common/POBError;)V

    return-void
.end method

.method protected onSuccess(Lcom/pubmatic/sdk/common/models/POBProfileInfo;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/models/POBProfileInfo;->getPartnerList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;

    iget-object v2, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$d;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$d;->b:[Lcom/pubmatic/sdk/common/POBAdSize;

    invoke-static {v1, v2, v3}, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->build(Lcom/pubmatic/sdk/common/models/POBPartnerInfo;Ljava/lang/String;[Lcom/pubmatic/sdk/common/POBAdSize;)Lcom/pubmatic/sdk/common/models/POBPartnerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->getSlotInfoMappings()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$d;->c:Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBPartnerConfigListener;

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBPartnerConfigListener;->onPartnerConfigFetched(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$d;->c:Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBPartnerConfigListener;

    new-instance v0, Lcom/pubmatic/sdk/common/POBError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No mapping found for adUnit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in ProfileId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$d;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xfa1

    invoke-direct {v0, v2, v1}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBPartnerConfigListener;->onPartnerConfigFailed(Lcom/pubmatic/sdk/common/POBError;)V

    :goto_1
    return-void
.end method
