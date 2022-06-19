.class final Lcom/explorestack/protobuf/ProtobufLists;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static emptyBooleanList()Lcom/explorestack/protobuf/Internal$BooleanList;
    .locals 1

    .line 56
    invoke-static {}, Lcom/explorestack/protobuf/BooleanArrayList;->emptyList()Lcom/explorestack/protobuf/BooleanArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static emptyDoubleList()Lcom/explorestack/protobuf/Internal$DoubleList;
    .locals 1

    .line 88
    invoke-static {}, Lcom/explorestack/protobuf/DoubleArrayList;->emptyList()Lcom/explorestack/protobuf/DoubleArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static emptyFloatList()Lcom/explorestack/protobuf/Internal$FloatList;
    .locals 1

    .line 80
    invoke-static {}, Lcom/explorestack/protobuf/FloatArrayList;->emptyList()Lcom/explorestack/protobuf/FloatArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;
    .locals 1

    .line 64
    invoke-static {}, Lcom/explorestack/protobuf/IntArrayList;->emptyList()Lcom/explorestack/protobuf/IntArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static emptyLongList()Lcom/explorestack/protobuf/Internal$LongList;
    .locals 1

    .line 72
    invoke-static {}, Lcom/explorestack/protobuf/LongArrayList;->emptyList()Lcom/explorestack/protobuf/LongArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static emptyProtobufList()Lcom/explorestack/protobuf/Internal$ProtobufList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/explorestack/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 46
    invoke-static {}, Lcom/explorestack/protobuf/ProtobufArrayList;->emptyList()Lcom/explorestack/protobuf/ProtobufArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static mutableCopy(Lcom/explorestack/protobuf/Internal$ProtobufList;)Lcom/explorestack/protobuf/Internal$ProtobufList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/Internal$ProtobufList<",
            "TE;>;)",
            "Lcom/explorestack/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 50
    invoke-interface {p0}, Lcom/explorestack/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 51
    :goto_0
    invoke-interface {p0, v0}, Lcom/explorestack/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/explorestack/protobuf/Internal$ProtobufList;

    move-result-object p0

    return-object p0
.end method

.method public static newBooleanList()Lcom/explorestack/protobuf/Internal$BooleanList;
    .locals 1

    .line 60
    new-instance v0, Lcom/explorestack/protobuf/BooleanArrayList;

    invoke-direct {v0}, Lcom/explorestack/protobuf/BooleanArrayList;-><init>()V

    return-object v0
.end method

.method public static newDoubleList()Lcom/explorestack/protobuf/Internal$DoubleList;
    .locals 1

    .line 92
    new-instance v0, Lcom/explorestack/protobuf/DoubleArrayList;

    invoke-direct {v0}, Lcom/explorestack/protobuf/DoubleArrayList;-><init>()V

    return-object v0
.end method

.method public static newFloatList()Lcom/explorestack/protobuf/Internal$FloatList;
    .locals 1

    .line 84
    new-instance v0, Lcom/explorestack/protobuf/FloatArrayList;

    invoke-direct {v0}, Lcom/explorestack/protobuf/FloatArrayList;-><init>()V

    return-object v0
.end method

.method public static newIntList()Lcom/explorestack/protobuf/Internal$IntList;
    .locals 1

    .line 68
    new-instance v0, Lcom/explorestack/protobuf/IntArrayList;

    invoke-direct {v0}, Lcom/explorestack/protobuf/IntArrayList;-><init>()V

    return-object v0
.end method

.method public static newLongList()Lcom/explorestack/protobuf/Internal$LongList;
    .locals 1

    .line 76
    new-instance v0, Lcom/explorestack/protobuf/LongArrayList;

    invoke-direct {v0}, Lcom/explorestack/protobuf/LongArrayList;-><init>()V

    return-object v0
.end method
