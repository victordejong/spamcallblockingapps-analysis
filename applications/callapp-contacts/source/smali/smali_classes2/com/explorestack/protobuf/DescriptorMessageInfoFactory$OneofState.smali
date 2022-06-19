.class final Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OneofState"
.end annotation


# instance fields
.field private oneofs:[Lcom/explorestack/protobuf/OneofInfo;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/explorestack/protobuf/OneofInfo;

    .line 665
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;->oneofs:[Lcom/explorestack/protobuf/OneofInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$1;)V
    .locals 0

    .line 664
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;-><init>()V

    return-void
.end method

.method private static newInfo(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/OneofInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;",
            ")",
            "Lcom/explorestack/protobuf/OneofInfo;"
        }
    .end annotation

    .line 682
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 684
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Case_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 686
    new-instance v2, Lcom/explorestack/protobuf/OneofInfo;

    .line 687
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getIndex()I

    move-result p1

    invoke-static {p0, v0}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->access$300(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {p0, v1}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->access$300(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-direct {v2, p1, v0, p0}, Lcom/explorestack/protobuf/OneofInfo;-><init>(ILjava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    return-object v2
.end method


# virtual methods
.method final getOneof(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/OneofInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;",
            ")",
            "Lcom/explorestack/protobuf/OneofInfo;"
        }
    .end annotation

    .line 668
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getIndex()I

    move-result v0

    .line 669
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;->oneofs:[Lcom/explorestack/protobuf/OneofInfo;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    .line 671
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/explorestack/protobuf/OneofInfo;

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;->oneofs:[Lcom/explorestack/protobuf/OneofInfo;

    .line 673
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;->oneofs:[Lcom/explorestack/protobuf/OneofInfo;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 675
    invoke-static {p1, p2}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;->newInfo(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/OneofInfo;

    move-result-object v1

    .line 676
    iget-object p1, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;->oneofs:[Lcom/explorestack/protobuf/OneofInfo;

    aput-object v1, p1, v0

    :cond_1
    return-object v1
.end method
