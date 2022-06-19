.class final Lcom/explorestack/protobuf/FieldSet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FieldDescriptorType::",
        "Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite<",
        "TFieldDescriptorType;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/FieldSet;


# instance fields
.field private final fields:Lcom/explorestack/protobuf/SmallSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SmallSortedMap<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private hasLazyField:Z

.field private isImmutable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 102
    new-instance v0, Lcom/explorestack/protobuf/FieldSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/FieldSet;-><init>(Z)V

    sput-object v0, Lcom/explorestack/protobuf/FieldSet;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/FieldSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/explorestack/protobuf/FieldSet;->hasLazyField:Z

    const/16 v0, 0x10

    .line 81
    invoke-static {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/explorestack/protobuf/SmallSortedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 77
    iput-boolean p1, p0, Lcom/explorestack/protobuf/FieldSet;->hasLazyField:Z

    .line 86
    invoke-static {p1}, Lcom/explorestack/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/explorestack/protobuf/SmallSortedMap;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    .line 87
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldSet;->makeImmutable()V

    return-void
.end method

.method private cloneFieldEntry(Ljava/util/Map;Ljava/util/Map$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 201
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    .line 202
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 203
    instance-of v1, p2, Lcom/explorestack/protobuf/LazyField;

    if-eqz v1, :cond_0

    .line 204
    check-cast p2, Lcom/explorestack/protobuf/LazyField;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/LazyField;->getValue()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 206
    :cond_0
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 498
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 499
    check-cast p1, [B

    .line 500
    array-length v0, p1

    new-array v0, v0, [B

    .line 501
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    return-object p1
.end method

.method static computeElementSize(Lcom/explorestack/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I
    .locals 1

    .line 803
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p1

    .line 804
    sget-object v0, Lcom/explorestack/protobuf/WireFormat$FieldType;->GROUP:Lcom/explorestack/protobuf/WireFormat$FieldType;

    if-ne p0, v0, :cond_0

    mul-int/lit8 p1, p1, 0x2

    .line 809
    :cond_0
    invoke-static {p0, p2}, Lcom/explorestack/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method static computeElementSizeNoTag(Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I
    .locals 1

    .line 821
    sget-object v0, Lcom/explorestack/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p0}, Lcom/explorestack/protobuf/WireFormat$FieldType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 880
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 873
    :pswitch_0
    instance-of p0, p1, Lcom/explorestack/protobuf/Internal$EnumLite;

    if-eqz p0, :cond_0

    .line 874
    check-cast p1, Lcom/explorestack/protobuf/Internal$EnumLite;

    invoke-interface {p1}, Lcom/explorestack/protobuf/Internal$EnumLite;->getNumber()I

    move-result p0

    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result p0

    return p0

    .line 876
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result p0

    return p0

    .line 863
    :pswitch_1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result p0

    return p0

    .line 861
    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result p0

    return p0

    .line 859
    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeSFixed64SizeNoTag(J)I

    move-result p0

    return p0

    .line 857
    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeSFixed32SizeNoTag(I)I

    move-result p0

    return p0

    .line 855
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result p0

    return p0

    .line 843
    :pswitch_6
    instance-of p0, p1, Lcom/explorestack/protobuf/ByteString;

    if-eqz p0, :cond_1

    .line 844
    check-cast p1, Lcom/explorestack/protobuf/ByteString;

    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/explorestack/protobuf/ByteString;)I

    move-result p0

    return p0

    .line 846
    :cond_1
    check-cast p1, [B

    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeByteArraySizeNoTag([B)I

    move-result p0

    return p0

    .line 849
    :pswitch_7
    instance-of p0, p1, Lcom/explorestack/protobuf/ByteString;

    if-eqz p0, :cond_2

    .line 850
    check-cast p1, Lcom/explorestack/protobuf/ByteString;

    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/explorestack/protobuf/ByteString;)I

    move-result p0

    return p0

    .line 852
    :cond_2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 866
    :pswitch_8
    instance-of p0, p1, Lcom/explorestack/protobuf/LazyField;

    if-eqz p0, :cond_3

    .line 867
    check-cast p1, Lcom/explorestack/protobuf/LazyField;

    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeLazyFieldSizeNoTag(Lcom/explorestack/protobuf/LazyFieldLite;)I

    move-result p0

    return p0

    .line 869
    :cond_3
    check-cast p1, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lcom/explorestack/protobuf/MessageLite;)I

    move-result p0

    return p0

    .line 841
    :pswitch_9
    check-cast p1, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeGroupSizeNoTag(Lcom/explorestack/protobuf/MessageLite;)I

    move-result p0

    return p0

    .line 839
    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSizeNoTag(Z)I

    move-result p0

    return p0

    .line 837
    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFixed32SizeNoTag(I)I

    move-result p0

    return p0

    .line 835
    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFixed64SizeNoTag(J)I

    move-result p0

    return p0

    .line 833
    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result p0

    return p0

    .line 831
    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result p0

    return p0

    .line 829
    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result p0

    return p0

    .line 827
    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSizeNoTag(F)I

    move-result p0

    return p0

    .line 825
    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeDoubleSizeNoTag(D)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static computeFieldSize(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 885
    invoke-interface {p0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;

    move-result-object v0

    .line 886
    invoke-interface {p0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v1

    .line 887
    invoke-interface {p0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 888
    invoke-interface {p0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 890
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 891
    invoke-static {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_0

    .line 894
    :cond_0
    invoke-static {v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    add-int/2addr p0, v2

    .line 895
    invoke-static {v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 898
    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 899
    invoke-static {v0, v1, p1}, Lcom/explorestack/protobuf/FieldSet;->computeElementSize(Lcom/explorestack/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_1

    :cond_2
    return v2

    .line 904
    :cond_3
    invoke-static {v0, v1, p1}, Lcom/explorestack/protobuf/FieldSet;->computeElementSize(Lcom/explorestack/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static emptySet()Lcom/explorestack/protobuf/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>()",
            "Lcom/explorestack/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 98
    sget-object v0, Lcom/explorestack/protobuf/FieldSet;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/FieldSet;

    return-object v0
.end method

.method private getMessageSetSerializedSize(Ljava/util/Map$Entry;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 775
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    .line 776
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 777
    invoke-interface {v0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;

    move-result-object v2

    sget-object v3, Lcom/explorestack/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/explorestack/protobuf/WireFormat$JavaType;

    if-ne v2, v3, :cond_1

    .line 778
    invoke-interface {v0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 779
    invoke-interface {v0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 780
    instance-of v0, v1, Lcom/explorestack/protobuf/LazyField;

    if-eqz v0, :cond_0

    .line 782
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result p1

    check-cast v1, Lcom/explorestack/protobuf/LazyField;

    .line 781
    invoke-static {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeLazyFieldMessageSetExtensionSize(ILcom/explorestack/protobuf/LazyFieldLite;)I

    move-result p1

    return p1

    .line 785
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result p1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    .line 784
    invoke-static {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSetExtensionSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result p1

    return p1

    .line 788
    :cond_1
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/FieldSet;->computeFieldSize(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method static getWireFormatForFieldType(Lcom/explorestack/protobuf/WireFormat$FieldType;Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x2

    return p0

    .line 483
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/WireFormat$FieldType;->getWireType()I

    move-result p0

    return p0
.end method

.method private isInitialized(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 449
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    .line 450
    invoke-interface {v0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/explorestack/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/explorestack/protobuf/WireFormat$JavaType;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    .line 451
    invoke-interface {v0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 452
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/MessageLite;

    .line 453
    invoke-interface {v0}, Lcom/explorestack/protobuf/MessageLite;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 458
    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 459
    instance-of v0, p1, Lcom/explorestack/protobuf/MessageLite;

    if-eqz v0, :cond_2

    .line 460
    check-cast p1, Lcom/explorestack/protobuf/MessageLite;

    invoke-interface {p1}, Lcom/explorestack/protobuf/MessageLite;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    .line 463
    :cond_2
    instance-of p1, p1, Lcom/explorestack/protobuf/LazyField;

    if-eqz p1, :cond_3

    return v3

    .line 466
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return v3
.end method

.method private mergeFromField(Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 510
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    .line 511
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 512
    instance-of v1, p1, Lcom/explorestack/protobuf/LazyField;

    if-eqz v1, :cond_0

    .line 513
    check-cast p1, Lcom/explorestack/protobuf/LazyField;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/LazyField;->getValue()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p1

    .line 516
    :cond_0
    invoke-interface {v0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 517
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/FieldSet;->getField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 519
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 521
    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 522
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/explorestack/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 524
    :cond_2
    iget-object p1, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 525
    :cond_3
    invoke-interface {v0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/explorestack/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/explorestack/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_5

    .line 526
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/FieldSet;->getField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 528
    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/explorestack/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 531
    :cond_4
    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    .line 533
    invoke-interface {v1}, Lcom/explorestack/protobuf/MessageLite;->toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;

    move-result-object v1

    check-cast p1, Lcom/explorestack/protobuf/MessageLite;

    invoke-interface {v0, v1, p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->internalMergeFrom(Lcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageLite$Builder;

    move-result-object p1

    .line 534
    invoke-interface {p1}, Lcom/explorestack/protobuf/MessageLite$Builder;->build()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p1

    .line 536
    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0, p1}, Lcom/explorestack/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 539
    :cond_5
    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/explorestack/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static newFieldSet()Lcom/explorestack/protobuf/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>()",
            "Lcom/explorestack/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 92
    new-instance v0, Lcom/explorestack/protobuf/FieldSet;

    invoke-direct {v0}, Lcom/explorestack/protobuf/FieldSet;-><init>()V

    return-object v0
.end method

.method public static readPrimitiveField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 560
    sget-object p2, Lcom/explorestack/protobuf/WireFormat$Utf8Validation;->STRICT:Lcom/explorestack/protobuf/WireFormat$Utf8Validation;

    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/WireFormat;->readPrimitiveField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/WireFormat$FieldType;Lcom/explorestack/protobuf/WireFormat$Utf8Validation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 562
    :cond_0
    sget-object p2, Lcom/explorestack/protobuf/WireFormat$Utf8Validation;->LOOSE:Lcom/explorestack/protobuf/WireFormat$Utf8Validation;

    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/WireFormat;->readPrimitiveField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/WireFormat$FieldType;Lcom/explorestack/protobuf/WireFormat$Utf8Validation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static verifyType(Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 2

    .line 377
    invoke-static {p1}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lcom/explorestack/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    invoke-virtual {p0}, Lcom/explorestack/protobuf/WireFormat$FieldType;->getJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/WireFormat$JavaType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    .line 408
    :pswitch_0
    instance-of p0, p1, Lcom/explorestack/protobuf/MessageLite;

    if-nez p0, :cond_1

    instance-of p0, p1, Lcom/explorestack/protobuf/LazyField;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 404
    :pswitch_1
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_1

    instance-of p0, p1, Lcom/explorestack/protobuf/Internal$EnumLite;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 400
    :pswitch_2
    instance-of p0, p1, Lcom/explorestack/protobuf/ByteString;

    if-nez p0, :cond_1

    instance-of p0, p1, [B

    if-eqz p0, :cond_0

    goto :goto_0

    .line 397
    :pswitch_3
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_0

    .line 394
    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_0

    .line 391
    :pswitch_5
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_0

    .line 388
    :pswitch_6
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_0

    .line 385
    :pswitch_7
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_0

    .line 382
    :pswitch_8
    instance-of v0, p1, Ljava/lang/Integer;

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    return-void

    .line 420
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static writeElement(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 622
    sget-object v0, Lcom/explorestack/protobuf/WireFormat$FieldType;->GROUP:Lcom/explorestack/protobuf/WireFormat$FieldType;

    if-ne p1, v0, :cond_0

    .line 623
    check-cast p3, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p0, p2, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeGroup(ILcom/explorestack/protobuf/MessageLite;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 625
    invoke-static {p1, v0}, Lcom/explorestack/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/explorestack/protobuf/WireFormat$FieldType;Z)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeTag(II)V

    .line 626
    invoke-static {p0, p1, p3}, Lcom/explorestack/protobuf/FieldSet;->writeElementNoTag(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    return-void
.end method

.method static writeElementNoTag(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 641
    sget-object v0, Lcom/explorestack/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Lcom/explorestack/protobuf/WireFormat$FieldType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 703
    :pswitch_0
    instance-of p1, p2, Lcom/explorestack/protobuf/Internal$EnumLite;

    if-eqz p1, :cond_0

    .line 704
    check-cast p2, Lcom/explorestack/protobuf/Internal$EnumLite;

    invoke-interface {p2}, Lcom/explorestack/protobuf/Internal$EnumLite;->getNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    return-void

    .line 706
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    goto/16 :goto_0

    .line 699
    :pswitch_1
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeSInt64NoTag(J)V

    return-void

    .line 696
    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeSInt32NoTag(I)V

    return-void

    .line 693
    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeSFixed64NoTag(J)V

    return-void

    .line 690
    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeSFixed32NoTag(I)V

    return-void

    .line 687
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    return-void

    .line 680
    :pswitch_6
    instance-of p1, p2, Lcom/explorestack/protobuf/ByteString;

    if-eqz p1, :cond_1

    .line 681
    check-cast p2, Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/explorestack/protobuf/ByteString;)V

    return-void

    .line 683
    :cond_1
    check-cast p2, [B

    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeByteArrayNoTag([B)V

    return-void

    .line 673
    :pswitch_7
    instance-of p1, p2, Lcom/explorestack/protobuf/ByteString;

    if-eqz p1, :cond_2

    .line 674
    check-cast p2, Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/explorestack/protobuf/ByteString;)V

    return-void

    .line 676
    :cond_2
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeStringNoTag(Ljava/lang/String;)V

    return-void

    .line 670
    :pswitch_8
    check-cast p2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessageNoTag(Lcom/explorestack/protobuf/MessageLite;)V

    return-void

    .line 667
    :pswitch_9
    check-cast p2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeGroupNoTag(Lcom/explorestack/protobuf/MessageLite;)V

    return-void

    .line 664
    :pswitch_a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBoolNoTag(Z)V

    return-void

    .line 661
    :pswitch_b
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    return-void

    .line 658
    :pswitch_c
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    return-void

    .line 655
    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    return-void

    .line 652
    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    return-void

    .line 649
    :pswitch_f
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt64NoTag(J)V

    return-void

    .line 646
    :pswitch_10
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloatNoTag(F)V

    return-void

    .line 643
    :pswitch_11
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeDoubleNoTag(D)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static writeField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite<",
            "*>;",
            "Ljava/lang/Object;",
            "Lcom/explorestack/protobuf/CodedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 716
    invoke-interface {p0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;

    move-result-object v0

    .line 717
    invoke-interface {p0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v1

    .line 718
    invoke-interface {p0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 719
    check-cast p1, Ljava/util/List;

    .line 720
    invoke-interface {p0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    .line 721
    invoke-virtual {p2, v1, p0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 p0, 0x0

    .line 724
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 725
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr p0, v2

    goto :goto_0

    .line 727
    :cond_0
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 729
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 730
    invoke-static {p2, v0, p1}, Lcom/explorestack/protobuf/FieldSet;->writeElementNoTag(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void

    .line 733
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 734
    invoke-static {p2, v0, v1, p1}, Lcom/explorestack/protobuf/FieldSet;->writeElement(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    return-void

    .line 738
    :cond_4
    instance-of p0, p1, Lcom/explorestack/protobuf/LazyField;

    if-eqz p0, :cond_5

    .line 739
    check-cast p1, Lcom/explorestack/protobuf/LazyField;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/LazyField;->getValue()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p0

    invoke-static {p2, v0, v1, p0}, Lcom/explorestack/protobuf/FieldSet;->writeElement(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    return-void

    .line 741
    :cond_5
    invoke-static {p2, v0, v1, p1}, Lcom/explorestack/protobuf/FieldSet;->writeElement(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    return-void
.end method

.method private writeMessageSetTo(Ljava/util/Map$Entry;Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/explorestack/protobuf/CodedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 591
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    .line 592
    invoke-interface {v0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/explorestack/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/explorestack/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_1

    .line 593
    invoke-interface {v0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 594
    invoke-interface {v0}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 595
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 596
    instance-of v1, v0, Lcom/explorestack/protobuf/LazyField;

    if-eqz v1, :cond_0

    .line 597
    check-cast v0, Lcom/explorestack/protobuf/LazyField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/LazyField;->getValue()Lcom/explorestack/protobuf/MessageLite;

    move-result-object v0

    .line 599
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result p1

    check-cast v0, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p2, p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessageSetExtension(ILcom/explorestack/protobuf/MessageLite;)V

    return-void

    .line 601
    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/explorestack/protobuf/FieldSet;->writeField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method


# virtual methods
.method public final addRepeatedField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 350
    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/explorestack/protobuf/FieldSet;->verifyType(Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 357
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/FieldSet;->getField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 361
    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v1, p1, v0}, Lcom/explorestack/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 363
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 366
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 351
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final clear()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->clear()V

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lcom/explorestack/protobuf/FieldSet;->hasLazyField:Z

    return-void
.end method

.method public final clearField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)V"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SmallSortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object p1, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/SmallSortedMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 288
    iput-boolean p1, p0, Lcom/explorestack/protobuf/FieldSet;->hasLazyField:Z

    :cond_0
    return-void
.end method

.method public final clone()Lcom/explorestack/protobuf/FieldSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/FieldSet<",
            "TFieldDescriptorType;>;"
        }
    .end annotation

    .line 158
    invoke-static {}, Lcom/explorestack/protobuf/FieldSet;->newFieldSet()Lcom/explorestack/protobuf/FieldSet;

    move-result-object v0

    const/4 v1, 0x0

    .line 159
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v2, v1}, Lcom/explorestack/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 161
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    .line 162
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/explorestack/protobuf/FieldSet;->setField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 165
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    .line 166
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/explorestack/protobuf/FieldSet;->setField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_1

    .line 168
    :cond_1
    iget-boolean v1, p0, Lcom/explorestack/protobuf/FieldSet;->hasLazyField:Z

    iput-boolean v1, v0, Lcom/explorestack/protobuf/FieldSet;->hasLazyField:Z

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldSet;->clone()Lcom/explorestack/protobuf/FieldSet;

    move-result-object v0

    return-object v0
.end method

.method final descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 227
    iget-boolean v0, p0, Lcom/explorestack/protobuf/FieldSet;->hasLazyField:Z

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Lcom/explorestack/protobuf/LazyField$LazyIterator;

    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/SmallSortedMap;->descendingEntrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyField$LazyIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->descendingEntrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 135
    :cond_0
    instance-of v0, p1, Lcom/explorestack/protobuf/FieldSet;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 139
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/FieldSet;

    .line 140
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    iget-object p1, p1, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SmallSortedMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getAllFields()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 183
    iget-boolean v0, p0, Lcom/explorestack/protobuf/FieldSet;->hasLazyField:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x10

    .line 184
    invoke-static {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/explorestack/protobuf/SmallSortedMap;

    move-result-object v0

    const/4 v1, 0x0

    .line 185
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 186
    iget-object v2, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v2, v1}, Lcom/explorestack/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/explorestack/protobuf/FieldSet;->cloneFieldEntry(Ljava/util/Map;Ljava/util/Map$Entry;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 189
    invoke-direct {p0, v0, v2}, Lcom/explorestack/protobuf/FieldSet;->cloneFieldEntry(Ljava/util/Map;Ljava/util/Map$Entry;)V

    goto :goto_1

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/SmallSortedMap;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->makeImmutable()V

    :cond_2
    return-object v0

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 249
    instance-of v0, p1, Lcom/explorestack/protobuf/LazyField;

    if-eqz v0, :cond_0

    .line 250
    check-cast p1, Lcom/explorestack/protobuf/LazyField;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/LazyField;->getValue()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final getMessageSetSerializedSize()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 765
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 766
    iget-object v2, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v2, v0}, Lcom/explorestack/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/explorestack/protobuf/FieldSet;->getMessageSetSerializedSize(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 769
    invoke-direct {p0, v2}, Lcom/explorestack/protobuf/FieldSet;->getMessageSetSerializedSize(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    return v1
.end method

.method public final getRepeatedField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 309
    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/FieldSet;->getField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 319
    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 317
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 310
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getRepeatedFieldCount(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)I"
        }
    .end annotation

    .line 294
    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/FieldSet;->getField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 303
    :cond_0
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 295
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getSerializedSize()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 752
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 753
    iget-object v2, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v2, v0}, Lcom/explorestack/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 754
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/explorestack/protobuf/FieldSet;->computeFieldSize(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 757
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/explorestack/protobuf/FieldSet;->computeFieldSize(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    return v1
.end method

.method public final hasField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)Z"
        }
    .end annotation

    .line 235
    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 236
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "hasField() can only be called on non-repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final hashCode()I
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->hashCode()I

    move-result v0

    return v0
.end method

.method final isEmpty()Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isImmutable()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/explorestack/protobuf/FieldSet;->isImmutable:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 434
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 435
    iget-object v2, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v2, v1}, Lcom/explorestack/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/explorestack/protobuf/FieldSet;->isInitialized(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 439
    :cond_1
    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 440
    invoke-direct {p0, v2}, Lcom/explorestack/protobuf/FieldSet;->isInitialized(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 215
    iget-boolean v0, p0, Lcom/explorestack/protobuf/FieldSet;->hasLazyField:Z

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Lcom/explorestack/protobuf/LazyField$LazyIterator;

    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyField$LazyIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final makeImmutable()V
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/explorestack/protobuf/FieldSet;->isImmutable:Z

    if-eqz v0, :cond_0

    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->makeImmutable()V

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/explorestack/protobuf/FieldSet;->isImmutable:Z

    return-void
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/FieldSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/FieldSet<",
            "TFieldDescriptorType;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 489
    :goto_0
    iget-object v1, p1, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 490
    iget-object v1, p1, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/explorestack/protobuf/FieldSet;->mergeFromField(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 492
    :cond_0
    iget-object p1, p1, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 493
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/FieldSet;->mergeFromField(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final setField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 260
    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 269
    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 270
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 271
    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/explorestack/protobuf/FieldSet;->verifyType(Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_1

    .line 262
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 275
    :cond_2
    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/explorestack/protobuf/FieldSet;->verifyType(Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 278
    :goto_1
    instance-of v0, p2, Lcom/explorestack/protobuf/LazyField;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 279
    iput-boolean v0, p0, Lcom/explorestack/protobuf/FieldSet;->hasLazyField:Z

    .line 281
    :cond_3
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 330
    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/FieldSet;->getField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    invoke-interface {p1}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/explorestack/protobuf/FieldSet;->verifyType(Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 341
    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 337
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 331
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final writeMessageSetTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 580
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/explorestack/protobuf/FieldSet;->writeMessageSetTo(Ljava/util/Map$Entry;Lcom/explorestack/protobuf/CodedOutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 584
    invoke-direct {p0, v1, p1}, Lcom/explorestack/protobuf/FieldSet;->writeMessageSetTo(Ljava/util/Map$Entry;Lcom/explorestack/protobuf/CodedOutputStream;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 569
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 570
    iget-object v1, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    .line 571
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lcom/explorestack/protobuf/FieldSet;->writeField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/explorestack/protobuf/CodedOutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldSet;->fields:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 574
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lcom/explorestack/protobuf/FieldSet;->writeField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/explorestack/protobuf/CodedOutputStream;)V

    goto :goto_1

    :cond_1
    return-void
.end method
