.class public final Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/DescriptorProtos$FieldOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;,
        Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;,
        Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage<",
        "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;",
        ">;",
        "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final CTYPE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

.field public static final DEPRECATED_FIELD_NUMBER:I = 0x3

.field public static final JSTYPE_FIELD_NUMBER:I = 0x6

.field public static final LAZY_FIELD_NUMBER:I = 0x5

.field public static final PACKED_FIELD_NUMBER:I = 0x2

.field public static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7

.field public static final WEAK_FIELD_NUMBER:I = 0xa

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private ctype_:I

.field private deprecated_:Z

.field private jstype_:I

.field private lazy_:Z

.field private memoizedIsInitialized:B

.field private packed_:Z

.field private uninterpretedOption_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field

.field private weak_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29335
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    .line 29343
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 27351
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;-><init>()V

    const/4 v0, -0x1

    .line 27988
    iput-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 27352
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->ctype_:I

    .line 27353
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->jstype_:I

    .line 27354
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 27373
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;-><init>()V

    .line 27375
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27379
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_d

    .line 27383
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_b

    const/16 v5, 0x8

    if-eq v4, v5, :cond_9

    const/16 v6, 0x10

    if-eq v4, v6, :cond_8

    const/16 v7, 0x18

    if-eq v4, v7, :cond_7

    const/16 v6, 0x28

    if-eq v4, v6, :cond_6

    const/16 v5, 0x30

    if-eq v4, v5, :cond_4

    const/16 v5, 0x50

    if-eq v4, v5, :cond_3

    const/16 v5, 0x1f3a

    if-eq v4, v5, :cond_1

    .line 27442
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_1
    and-int/lit8 v4, v3, 0x40

    if-nez v4, :cond_2

    .line 27434
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x40

    .line 27437
    :cond_2
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    sget-object v5, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 27438
    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 27437
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27428
    :cond_3
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->bitField0_:I

    .line 27429
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->weak_:Z

    goto :goto_0

    .line 27416
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 27418
    invoke-static {v4}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;->valueOf(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

    move-result-object v5

    if-nez v5, :cond_5

    const/4 v5, 0x6

    .line 27420
    invoke-virtual {v0, v5, v4}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 27422
    :cond_5
    iget v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->bitField0_:I

    .line 27423
    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->jstype_:I

    goto :goto_0

    .line 27411
    :cond_6
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->bitField0_:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->bitField0_:I

    .line 27412
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->lazy_:Z

    goto :goto_0

    .line 27406
    :cond_7
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->bitField0_:I

    or-int/2addr v4, v6

    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->bitField0_:I

    .line 27407
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->deprecated_:Z

    goto/16 :goto_0

    .line 27401
    :cond_8
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->bitField0_:I

    .line 27402
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->packed_:Z

    goto/16 :goto_0

    .line 27389
    :cond_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 27391
    invoke-static {v4}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;->valueOf(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

    move-result-object v5

    if-nez v5, :cond_a

    .line 27393
    invoke-virtual {v0, v2, v4}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 27395
    :cond_a
    iget v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->bitField0_:I

    or-int/2addr v5, v2

    iput v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->bitField0_:I

    .line 27396
    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->ctype_:I
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_b
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 27453
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 27454
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 27451
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x40

    if-eqz p2, :cond_c

    .line 27457
    iget-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    .line 27459
    :cond_c
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 27460
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->makeExtensionsImmutable()V

    .line 27461
    throw p1

    :cond_d
    and-int/lit8 p1, v3, 0x40

    if-eqz p1, :cond_e

    .line 27457
    iget-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    .line 27459
    :cond_e
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 27460
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 27341
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;",
            "*>;)V"
        }
    .end annotation

    .line 27349
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;)V

    const/4 p1, -0x1

    .line 27988
    iput-byte p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 27341
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;)V

    return-void
.end method

.method static synthetic access$19402(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;I)I
    .locals 0

    .line 27341
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->ctype_:I

    return p1
.end method

.method static synthetic access$19502(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;Z)Z
    .locals 0

    .line 27341
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->packed_:Z

    return p1
.end method

.method static synthetic access$19602(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;I)I
    .locals 0

    .line 27341
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->jstype_:I

    return p1
.end method

.method static synthetic access$19702(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;Z)Z
    .locals 0

    .line 27341
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->lazy_:Z

    return p1
.end method

.method static synthetic access$19802(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;Z)Z
    .locals 0

    .line 27341
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->deprecated_:Z

    return p1
.end method

.method static synthetic access$19902(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;Z)Z
    .locals 0

    .line 27341
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->weak_:Z

    return p1
.end method

.method static synthetic access$20000(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;
    .locals 0

    .line 27341
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$20002(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 27341
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$20102(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;I)I
    .locals 0

    .line 27341
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    .line 29339
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 27465
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$18900()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    .line 28244
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    .line 28247
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28217
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 28218
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28224
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 28225
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 28185
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 28191
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28230
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 28231
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28237
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 28238
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28205
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 28206
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28212
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 28213
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 28174
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 28180
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 28195
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 28201
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;",
            ">;"
        }
    .end annotation

    .line 29354
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 28085
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    if-nez v1, :cond_1

    .line 28086
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 28088
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    .line 28090
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hasCtype()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hasCtype()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 28091
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hasCtype()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 28092
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->ctype_:I

    iget v2, p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->ctype_:I

    if-eq v1, v2, :cond_3

    return v3

    .line 28094
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hasPacked()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hasPacked()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 28095
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hasPacked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 28096
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getPacked()Z

    move-result v1

    .line 28097
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getPacked()Z

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    .line 28099
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hasJstype()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hasJstype()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 28100
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hasJstype()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 28101
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->jstype_:I

    iget v2, p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->jstype_:I

    if-eq v1, v2, :cond_7

    return v3

    .line 28103
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hasLazy()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hasLazy()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 28104
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hasLazy()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 28105
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getLazy()Z

    move-result v1

    .line 28106
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getLazy()Z

    move-result v2

    if-eq v1, v2, :cond_9

    return v3

    .line 28108
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hasDeprecated()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hasDeprecated()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 28109
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hasDeprecated()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 28110
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getDeprecated()Z

    move-result v1

    .line 28111
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getDeprecated()Z

    move-result v2

    if-eq v1, v2, :cond_b

    return v3

    .line 28113
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hasWeak()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hasWeak()Z

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    .line 28114
    :cond_c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hasWeak()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 28115
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getWeak()Z

    move-result v1

    .line 28116
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getWeak()Z

    move-result v2

    if-eq v1, v2, :cond_d

    return v3

    .line 28118
    :cond_d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v1

    .line 28119
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v3

    .line 28120
    :cond_e
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object v2, p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v3

    .line 28121
    :cond_f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getExtensionFields()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getExtensionFields()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    return v3

    :cond_10
    return v0
.end method

.method public final getCtype()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;
    .locals 1

    .line 27734
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->ctype_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;->valueOf(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 27735
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;->STRING:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

    :cond_0
    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    .line 29364
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 27341
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 27341
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getDeprecated()Z
    .locals 1

    .line 27907
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->deprecated_:Z

    return v0
.end method

.method public final getJstype()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;
    .locals 1

    .line 27808
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->jstype_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;->valueOf(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 27809
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;->JS_NORMAL:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

    :cond_0
    return-object v0
.end method

.method public final getLazy()Z
    .locals 1

    .line 27878
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->lazy_:Z

    return v0
.end method

.method public final getPacked()Z
    .locals 1

    .line 27766
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->packed_:Z

    return v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;",
            ">;"
        }
    .end annotation

    .line 29359
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .line 28042
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 28046
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 28047
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->ctype_:I

    .line 28048
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 28050
    :goto_0
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    .line 28051
    iget-boolean v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->packed_:Z

    .line 28052
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 28054
    :cond_2
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 28055
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->deprecated_:Z

    .line 28056
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 28058
    :cond_3
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    .line 28059
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->lazy_:Z

    .line 28060
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 28062
    :cond_4
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    .line 28063
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->jstype_:I

    .line 28064
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 28066
    :cond_5
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6

    const/16 v1, 0xa

    .line 28067
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->weak_:Z

    .line 28068
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 28070
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    const/16 v1, 0x3e7

    .line 28071
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    .line 28072
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 28074
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->extensionsSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 28075
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 28076
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->memoizedSize:I

    return v0
.end method

.method public final getUninterpretedOption(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    .line 27974
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    return-object p1
.end method

.method public final getUninterpretedOptionCount()I
    .locals 1

    .line 27964
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getUninterpretedOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .line 27943
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public final getUninterpretedOptionOrBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;
    .locals 1

    .line 27985
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;

    return-object p1
.end method

.method public final getUninterpretedOptionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 27954
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 27367
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getWeak()Z
    .locals 1

    .line 27930
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->weak_:Z

    return v0
.end method

.method public final hasCtype()Z
    .locals 2

    .line 27720
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasDeprecated()Z
    .locals 1

    .line 27894
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasJstype()Z
    .locals 1

    .line 27788
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasLazy()Z
    .locals 1

    .line 27845
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPacked()Z
    .locals 1

    .line 27752
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasWeak()Z
    .locals 1

    .line 27920
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 28128
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 28129
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->memoizedHashCode:I

    return v0

    .line 28132
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 28133
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hasCtype()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 28135
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->ctype_:I

    add-int/2addr v0, v1

    .line 28137
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hasPacked()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 28140
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getPacked()Z

    move-result v1

    .line 28139
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 28142
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hasJstype()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 28144
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->jstype_:I

    add-int/2addr v0, v1

    .line 28146
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hasLazy()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 28149
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getLazy()Z

    move-result v1

    .line 28148
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 28151
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hasDeprecated()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 28154
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getDeprecated()Z

    move-result v1

    .line 28153
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 28156
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hasWeak()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 28159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getWeak()Z

    move-result v1

    .line 28158
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 28161
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getUninterpretedOptionCount()I

    move-result v1

    if-lez v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit16 v0, v0, 0x3e7

    mul-int/lit8 v0, v0, 0x35

    .line 28163
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 28165
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getExtensionFields()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hashFields(ILjava/util/Map;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    .line 28166
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 28167
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 27471
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$19000()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    .line 27472
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 27991
    iget-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 27995
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getUninterpretedOptionCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 27996
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getUninterpretedOption(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v3

    invoke-virtual {v3}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 27997
    iput-byte v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->memoizedIsInitialized:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28001
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->extensionsAreInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    .line 28002
    iput-byte v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->memoizedIsInitialized:B

    return v2

    .line 28005
    :cond_4
    iput-byte v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    .line 28242
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->newBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2

    .line 28258
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 27341
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->newBuilderForType()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 27341
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 27341
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->newBuilderForType()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 27361
    new-instance p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    invoke-direct {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;-><init>()V

    return-object p1
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2

    .line 28251
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    .line 28252
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 27341
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 27341
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28014
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->newExtensionWriter()Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 28015
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 28016
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->ctype_:I

    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 28018
    :cond_0
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 28019
    iget-boolean v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->packed_:Z

    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 28021
    :cond_1
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 28022
    iget-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->deprecated_:Z

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 28024
    :cond_2
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    .line 28025
    iget-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->lazy_:Z

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 28027
    :cond_3
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    const/4 v1, 0x6

    .line 28028
    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->jstype_:I

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 28030
    :cond_4
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    const/16 v1, 0xa

    .line 28031
    iget-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->weak_:Z

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_5
    const/4 v1, 0x0

    .line 28033
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    const/16 v2, 0x3e7

    .line 28034
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    const/high16 v1, 0x20000000

    .line 28036
    invoke-virtual {v0, v1, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/explorestack/protobuf/CodedOutputStream;)V

    .line 28037
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
