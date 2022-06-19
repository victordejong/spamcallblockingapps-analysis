.class public final Lcom/sinch/metadata/collector/sim/LollipopSimCardInfoCollector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sinch/metadata/collector/MetadataCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sinch/metadata/collector/MetadataCollector<",
        "Ljava/util/List<",
        "+",
        "Lcom/sinch/metadata/model/sim/SimCardInfo;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0014\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0001j\u0002`\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/sinch/metadata/collector/sim/LollipopSimCardInfoCollector;",
        "Lcom/sinch/metadata/collector/MetadataCollector;",
        "",
        "Lcom/sinch/metadata/model/sim/SimCardInfo;",
        "Lcom/sinch/metadata/collector/SimCardInfoCollector;",
        "()V",
        "collect",
        "metadata-collector_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic collect()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/sinch/metadata/collector/sim/LollipopSimCardInfoCollector;->collect()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final collect()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sinch/metadata/model/sim/SimCardInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
