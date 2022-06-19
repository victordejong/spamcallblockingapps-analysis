.class public Lcom/pubmatic/sdk/common/cache/POBCacheManager$POBPartnerConfigListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/cache/POBCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "POBPartnerConfigListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPartnerConfigFailed(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 0

    return-void
.end method

.method protected onPartnerConfigFetched(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/common/models/POBPartnerInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
