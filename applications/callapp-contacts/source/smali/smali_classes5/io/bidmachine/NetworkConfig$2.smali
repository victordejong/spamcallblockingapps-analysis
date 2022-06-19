.class final Lio/bidmachine/NetworkConfig$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/NetworkConfigParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/NetworkConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/NetworkConfig;


# direct methods
.method constructor <init>(Lio/bidmachine/NetworkConfig;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lio/bidmachine/NetworkConfig$2;->this$0:Lio/bidmachine/NetworkConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs obtainNetworkMediationConfigs([Lio/bidmachine/AdsFormat;)Ljava/util/EnumMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/bidmachine/AdsFormat;",
            ")",
            "Ljava/util/EnumMap<",
            "Lio/bidmachine/AdsFormat;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 73
    array-length v1, p1

    if-lez v1, :cond_8

    .line 74
    array-length v1, p1

    const/4 v2, 0x0

    move-object v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_7

    aget-object v5, p1, v3

    .line 76
    iget-object v6, p0, Lio/bidmachine/NetworkConfig$2;->this$0:Lio/bidmachine/NetworkConfig;

    invoke-static {v6}, Lio/bidmachine/NetworkConfig;->access$100(Lio/bidmachine/NetworkConfig;)Ljava/util/EnumMap;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 77
    iget-object v6, p0, Lio/bidmachine/NetworkConfig$2;->this$0:Lio/bidmachine/NetworkConfig;

    invoke-static {v6}, Lio/bidmachine/NetworkConfig;->access$100(Lio/bidmachine/NetworkConfig;)Ljava/util/EnumMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_3

    move-object v8, v0

    const/4 v7, 0x0

    .line 79
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_4

    .line 81
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    if-eqz v9, :cond_0

    .line 83
    iget-object v10, p0, Lio/bidmachine/NetworkConfig$2;->this$0:Lio/bidmachine/NetworkConfig;

    invoke-static {v10, v9}, Lio/bidmachine/NetworkConfig;->access$200(Lio/bidmachine/NetworkConfig;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    goto :goto_2

    :cond_0
    move-object v9, v0

    :goto_2
    if-eqz v9, :cond_2

    if-nez v8, :cond_1

    .line 87
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 89
    :cond_1
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    move-object v8, v0

    :cond_4
    if-eqz v8, :cond_6

    if-nez v4, :cond_5

    .line 96
    new-instance v4, Ljava/util/EnumMap;

    const-class v6, Lio/bidmachine/AdsFormat;

    invoke-direct {v4, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 98
    :cond_5
    invoke-virtual {v4, v5, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    move-object v0, v4

    :cond_8
    return-object v0
.end method

.method public final obtainNetworkParams()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lio/bidmachine/NetworkConfig$2;->this$0:Lio/bidmachine/NetworkConfig;

    invoke-static {v0}, Lio/bidmachine/NetworkConfig;->access$000(Lio/bidmachine/NetworkConfig;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lio/bidmachine/NetworkConfig$2;->this$0:Lio/bidmachine/NetworkConfig;

    invoke-static {v1}, Lio/bidmachine/NetworkConfig;->access$000(Lio/bidmachine/NetworkConfig;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
