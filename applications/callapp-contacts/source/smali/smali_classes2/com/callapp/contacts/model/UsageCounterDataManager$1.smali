.class final Lcom/callapp/contacts/model/UsageCounterDataManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/model/UsageCounterDataManager;->getUsageCounters()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/callapp/contacts/model/UsageCounterData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$idToUsage:Ljava/util/Map;

.field final synthetic val$result:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/callapp/contacts/model/UsageCounterDataManager$1;->val$result:Ljava/util/Map;

    iput-object p2, p0, Lcom/callapp/contacts/model/UsageCounterDataManager$1;->val$idToUsage:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/callapp/contacts/model/UsageCounterData;)V
    .locals 7

    .line 45
    iget-object v0, p0, Lcom/callapp/contacts/model/UsageCounterDataManager$1;->val$result:Ljava/util/Map;

    iget-object v1, p0, Lcom/callapp/contacts/model/UsageCounterDataManager$1;->val$idToUsage:Ljava/util/Map;

    new-instance v2, Landroid/util/Pair;

    .line 46
    invoke-virtual {p1}, Lcom/callapp/contacts/model/UsageCounterData;->getSocialNetworkId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/callapp/contacts/model/UsageCounterData;->getNetCallType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    .line 47
    invoke-virtual {p1}, Lcom/callapp/contacts/model/UsageCounterData;->getCount()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/UsageCounterData;->getDate()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p1, Lcom/callapp/contacts/model/UsageCounterData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/UsageCounterDataManager$1;->accept(Lcom/callapp/contacts/model/UsageCounterData;)V

    return-void
.end method
