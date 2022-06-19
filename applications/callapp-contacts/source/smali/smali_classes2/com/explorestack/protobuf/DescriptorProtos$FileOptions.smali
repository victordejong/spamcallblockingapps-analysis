.class public final Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/DescriptorProtos$FileOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;,
        Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage<",
        "Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;",
        ">;",
        "Lcom/explorestack/protobuf/DescriptorProtos$FileOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final CC_ENABLE_ARENAS_FIELD_NUMBER:I = 0x1f

.field public static final CC_GENERIC_SERVICES_FIELD_NUMBER:I = 0x10

.field public static final CSHARP_NAMESPACE_FIELD_NUMBER:I = 0x25

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

.field public static final DEPRECATED_FIELD_NUMBER:I = 0x17

.field public static final GO_PACKAGE_FIELD_NUMBER:I = 0xb

.field public static final JAVA_GENERATE_EQUALS_AND_HASH_FIELD_NUMBER:I = 0x14

.field public static final JAVA_GENERIC_SERVICES_FIELD_NUMBER:I = 0x11

.field public static final JAVA_MULTIPLE_FILES_FIELD_NUMBER:I = 0xa

.field public static final JAVA_OUTER_CLASSNAME_FIELD_NUMBER:I = 0x8

.field public static final JAVA_PACKAGE_FIELD_NUMBER:I = 0x1

.field public static final JAVA_STRING_CHECK_UTF8_FIELD_NUMBER:I = 0x1b

.field public static final OBJC_CLASS_PREFIX_FIELD_NUMBER:I = 0x24

.field public static final OPTIMIZE_FOR_FIELD_NUMBER:I = 0x9

.field public static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PHP_CLASS_PREFIX_FIELD_NUMBER:I = 0x28

.field public static final PHP_GENERIC_SERVICES_FIELD_NUMBER:I = 0x2a

.field public static final PHP_METADATA_NAMESPACE_FIELD_NUMBER:I = 0x2c

.field public static final PHP_NAMESPACE_FIELD_NUMBER:I = 0x29

.field public static final PY_GENERIC_SERVICES_FIELD_NUMBER:I = 0x12

.field public static final RUBY_PACKAGE_FIELD_NUMBER:I = 0x2d

.field public static final SWIFT_PREFIX_FIELD_NUMBER:I = 0x27

.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private ccEnableArenas_:Z

.field private ccGenericServices_:Z

.field private volatile csharpNamespace_:Ljava/lang/Object;

.field private deprecated_:Z

.field private volatile goPackage_:Ljava/lang/Object;

.field private javaGenerateEqualsAndHash_:Z

.field private javaGenericServices_:Z

.field private javaMultipleFiles_:Z

.field private volatile javaOuterClassname_:Ljava/lang/Object;

.field private volatile javaPackage_:Ljava/lang/Object;

.field private javaStringCheckUtf8_:Z

.field private memoizedIsInitialized:B

.field private volatile objcClassPrefix_:Ljava/lang/Object;

.field private optimizeFor_:I

.field private volatile phpClassPrefix_:Ljava/lang/Object;

.field private phpGenericServices_:Z

.field private volatile phpMetadataNamespace_:Ljava/lang/Object;

.field private volatile phpNamespace_:Ljava/lang/Object;

.field private pyGenericServices_:Z

.field private volatile rubyPackage_:Ljava/lang/Object;

.field private volatile swiftPrefix_:Ljava/lang/Object;

.field private uninterpretedOption_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25345
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    .line 25353
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 21194
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;-><init>()V

    const/4 v0, -0x1

    .line 22439
    iput-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->memoizedIsInitialized:B

    const-string v0, ""

    .line 21195
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 21196
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 21197
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:I

    .line 21198
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 21199
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->objcClassPrefix_:Ljava/lang/Object;

    .line 21200
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->csharpNamespace_:Ljava/lang/Object;

    .line 21201
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->swiftPrefix_:Ljava/lang/Object;

    .line 21202
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpClassPrefix_:Ljava/lang/Object;

    .line 21203
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpNamespace_:Ljava/lang/Object;

    .line 21204
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpMetadataNamespace_:Ljava/lang/Object;

    .line 21205
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->rubyPackage_:Ljava/lang/Object;

    .line 21206
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 21225
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;-><init>()V

    .line 21227
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21231
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    const/high16 v4, 0x100000

    if-nez v1, :cond_4

    .line 21235
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 21367
    invoke-virtual {p0, p1, v0, p2, v5}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    goto/16 :goto_2

    :sswitch_0
    and-int v5, v3, v4

    if-nez v5, :cond_1

    .line 21359
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    or-int/2addr v3, v4

    .line 21362
    :cond_1
    iget-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    sget-object v6, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 21363
    invoke-virtual {p1, v6, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v6

    .line 21362
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21352
    :sswitch_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v5

    .line 21353
    iget v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v7, 0x80000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 21354
    iput-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->rubyPackage_:Ljava/lang/Object;

    goto :goto_0

    .line 21346
    :sswitch_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v5

    .line 21347
    iget v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v7, 0x40000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 21348
    iput-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpMetadataNamespace_:Ljava/lang/Object;

    goto :goto_0

    .line 21341
    :sswitch_3
    iget v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 21342
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpGenericServices_:Z

    goto :goto_0

    .line 21335
    :sswitch_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v5

    .line 21336
    iget v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v7, 0x20000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 21337
    iput-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpNamespace_:Ljava/lang/Object;

    goto :goto_0

    .line 21329
    :sswitch_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v5

    .line 21330
    iget v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v7, 0x10000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 21331
    iput-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpClassPrefix_:Ljava/lang/Object;

    goto :goto_0

    .line 21323
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v5

    .line 21324
    iget v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const v7, 0x8000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 21325
    iput-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->swiftPrefix_:Ljava/lang/Object;

    goto :goto_0

    .line 21317
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v5

    .line 21318
    iget v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x4000

    iput v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 21319
    iput-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->csharpNamespace_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 21311
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v5

    .line 21312
    iget v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x2000

    iput v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 21313
    iput-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->objcClassPrefix_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 21306
    :sswitch_9
    iget v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 21307
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->ccEnableArenas_:Z

    goto/16 :goto_0

    .line 21301
    :sswitch_a
    iget v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 21302
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaStringCheckUtf8_:Z

    goto/16 :goto_0

    .line 21296
    :sswitch_b
    iget v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 21297
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->deprecated_:Z

    goto/16 :goto_0

    .line 21291
    :sswitch_c
    iget v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 21292
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    goto/16 :goto_0

    .line 21286
    :sswitch_d
    iget v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v5, v5, 0x200

    iput v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 21287
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->pyGenericServices_:Z

    goto/16 :goto_0

    .line 21281
    :sswitch_e
    iget v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v5, v5, 0x100

    iput v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 21282
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaGenericServices_:Z

    goto/16 :goto_0

    .line 21276
    :sswitch_f
    iget v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 21277
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->ccGenericServices_:Z

    goto/16 :goto_0

    .line 21270
    :sswitch_10
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v5

    .line 21271
    iget v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 21272
    iput-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 21265
    :sswitch_11
    iget v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 21266
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    goto/16 :goto_0

    .line 21253
    :sswitch_12
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 21255
    invoke-static {v5}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->valueOf(I)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v6

    if-nez v6, :cond_2

    const/16 v6, 0x9

    .line 21257
    invoke-virtual {v0, v6, v5}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 21259
    :cond_2
    iget v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 21260
    iput v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:I

    goto/16 :goto_0

    .line 21247
    :sswitch_13
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v5

    .line 21248
    iget v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 21249
    iput-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 21241
    :sswitch_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v5

    .line 21242
    iget v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/2addr v6, v2

    iput v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 21243
    iput-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_15
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v4, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 21378
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 21379
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 21376
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int p2, v3, v4

    if-eqz p2, :cond_3

    .line 21382
    iget-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    .line 21384
    :cond_3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 21385
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->makeExtensionsImmutable()V

    .line 21386
    throw p1

    :cond_4
    and-int p1, v3, v4

    if-eqz p1, :cond_5

    .line 21382
    iget-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    .line 21384
    :cond_5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 21385
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_15
        0xa -> :sswitch_14
        0x42 -> :sswitch_13
        0x48 -> :sswitch_12
        0x50 -> :sswitch_11
        0x5a -> :sswitch_10
        0x80 -> :sswitch_f
        0x88 -> :sswitch_e
        0x90 -> :sswitch_d
        0xa0 -> :sswitch_c
        0xb8 -> :sswitch_b
        0xd8 -> :sswitch_a
        0xf8 -> :sswitch_9
        0x122 -> :sswitch_8
        0x12a -> :sswitch_7
        0x13a -> :sswitch_6
        0x142 -> :sswitch_5
        0x14a -> :sswitch_4
        0x150 -> :sswitch_3
        0x162 -> :sswitch_2
        0x16a -> :sswitch_1
        0x1f3a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 21184
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;",
            "*>;)V"
        }
    .end annotation

    .line 21192
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;)V

    const/4 p1, -0x1

    .line 22439
    iput-byte p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 21184
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;)V

    return-void
.end method

.method static synthetic access$15400(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 0

    .line 21184
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$15402(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21184
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$15500(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 0

    .line 21184
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$15502(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21184
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$15602(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0

    .line 21184
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    return p1
.end method

.method static synthetic access$15702(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0

    .line 21184
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    return p1
.end method

.method static synthetic access$15802(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0

    .line 21184
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaStringCheckUtf8_:Z

    return p1
.end method

.method static synthetic access$15902(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;I)I
    .locals 0

    .line 21184
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:I

    return p1
.end method

.method static synthetic access$16000(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 0

    .line 21184
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$16002(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21184
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$16102(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0

    .line 21184
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->ccGenericServices_:Z

    return p1
.end method

.method static synthetic access$16202(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0

    .line 21184
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaGenericServices_:Z

    return p1
.end method

.method static synthetic access$16302(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0

    .line 21184
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->pyGenericServices_:Z

    return p1
.end method

.method static synthetic access$16402(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0

    .line 21184
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpGenericServices_:Z

    return p1
.end method

.method static synthetic access$16502(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0

    .line 21184
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->deprecated_:Z

    return p1
.end method

.method static synthetic access$16602(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0

    .line 21184
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->ccEnableArenas_:Z

    return p1
.end method

.method static synthetic access$16700(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 0

    .line 21184
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->objcClassPrefix_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$16702(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21184
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->objcClassPrefix_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$16800(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 0

    .line 21184
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->csharpNamespace_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$16802(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21184
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->csharpNamespace_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$16900(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 0

    .line 21184
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->swiftPrefix_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$16902(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21184
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->swiftPrefix_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$17000(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 0

    .line 21184
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpClassPrefix_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$17002(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21184
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpClassPrefix_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$17100(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 0

    .line 21184
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpNamespace_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$17102(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21184
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpNamespace_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$17200(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 0

    .line 21184
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpMetadataNamespace_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$17202(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21184
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpMetadataNamespace_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$17300(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 0

    .line 21184
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->rubyPackage_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$17302(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21184
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->rubyPackage_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$17400(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;
    .locals 0

    .line 21184
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$17402(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 21184
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$17502(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;I)I
    .locals 0

    .line 21184
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    .line 25349
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 21390
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$14900()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 22915
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 22918
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22888
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 22889
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22895
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 22896
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22856
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22862
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22901
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 22902
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22908
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 22909
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22876
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 22877
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22883
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 22884
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22845
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22851
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22866
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22872
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;",
            ">;"
        }
    .end annotation

    .line 25364
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 22624
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    if-nez v1, :cond_1

    .line 22625
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 22627
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    .line 22629
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 22630
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 22631
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getJavaPackage()Ljava/lang/String;

    move-result-object v1

    .line 22632
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getJavaPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 22634
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 22635
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 22636
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getJavaOuterClassname()Ljava/lang/String;

    move-result-object v1

    .line 22637
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getJavaOuterClassname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 22639
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 22640
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 22641
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getJavaMultipleFiles()Z

    move-result v1

    .line 22642
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getJavaMultipleFiles()Z

    move-result v2

    if-eq v1, v2, :cond_7

    return v3

    .line 22644
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasJavaGenerateEqualsAndHash()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasJavaGenerateEqualsAndHash()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 22645
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasJavaGenerateEqualsAndHash()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 22646
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getJavaGenerateEqualsAndHash()Z

    move-result v1

    .line 22647
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getJavaGenerateEqualsAndHash()Z

    move-result v2

    if-eq v1, v2, :cond_9

    return v3

    .line 22649
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasJavaStringCheckUtf8()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasJavaStringCheckUtf8()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 22650
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasJavaStringCheckUtf8()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 22651
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getJavaStringCheckUtf8()Z

    move-result v1

    .line 22652
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getJavaStringCheckUtf8()Z

    move-result v2

    if-eq v1, v2, :cond_b

    return v3

    .line 22654
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor()Z

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    .line 22655
    :cond_c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 22656
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:I

    iget v2, p1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:I

    if-eq v1, v2, :cond_d

    return v3

    .line 22658
    :cond_d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasGoPackage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasGoPackage()Z

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    .line 22659
    :cond_e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasGoPackage()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 22660
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getGoPackage()Ljava/lang/String;

    move-result-object v1

    .line 22661
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getGoPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v3

    .line 22663
    :cond_f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasCcGenericServices()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasCcGenericServices()Z

    move-result v2

    if-eq v1, v2, :cond_10

    return v3

    .line 22664
    :cond_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasCcGenericServices()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 22665
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getCcGenericServices()Z

    move-result v1

    .line 22666
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getCcGenericServices()Z

    move-result v2

    if-eq v1, v2, :cond_11

    return v3

    .line 22668
    :cond_11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasJavaGenericServices()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasJavaGenericServices()Z

    move-result v2

    if-eq v1, v2, :cond_12

    return v3

    .line 22669
    :cond_12
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasJavaGenericServices()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 22670
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getJavaGenericServices()Z

    move-result v1

    .line 22671
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getJavaGenericServices()Z

    move-result v2

    if-eq v1, v2, :cond_13

    return v3

    .line 22673
    :cond_13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasPyGenericServices()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasPyGenericServices()Z

    move-result v2

    if-eq v1, v2, :cond_14

    return v3

    .line 22674
    :cond_14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasPyGenericServices()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 22675
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getPyGenericServices()Z

    move-result v1

    .line 22676
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getPyGenericServices()Z

    move-result v2

    if-eq v1, v2, :cond_15

    return v3

    .line 22678
    :cond_15
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasPhpGenericServices()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasPhpGenericServices()Z

    move-result v2

    if-eq v1, v2, :cond_16

    return v3

    .line 22679
    :cond_16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasPhpGenericServices()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 22680
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getPhpGenericServices()Z

    move-result v1

    .line 22681
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getPhpGenericServices()Z

    move-result v2

    if-eq v1, v2, :cond_17

    return v3

    .line 22683
    :cond_17
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasDeprecated()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasDeprecated()Z

    move-result v2

    if-eq v1, v2, :cond_18

    return v3

    .line 22684
    :cond_18
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasDeprecated()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 22685
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getDeprecated()Z

    move-result v1

    .line 22686
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getDeprecated()Z

    move-result v2

    if-eq v1, v2, :cond_19

    return v3

    .line 22688
    :cond_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasCcEnableArenas()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasCcEnableArenas()Z

    move-result v2

    if-eq v1, v2, :cond_1a

    return v3

    .line 22689
    :cond_1a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasCcEnableArenas()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 22690
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getCcEnableArenas()Z

    move-result v1

    .line 22691
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getCcEnableArenas()Z

    move-result v2

    if-eq v1, v2, :cond_1b

    return v3

    .line 22693
    :cond_1b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasObjcClassPrefix()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasObjcClassPrefix()Z

    move-result v2

    if-eq v1, v2, :cond_1c

    return v3

    .line 22694
    :cond_1c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasObjcClassPrefix()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 22695
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getObjcClassPrefix()Ljava/lang/String;

    move-result-object v1

    .line 22696
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getObjcClassPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v3

    .line 22698
    :cond_1d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasCsharpNamespace()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasCsharpNamespace()Z

    move-result v2

    if-eq v1, v2, :cond_1e

    return v3

    .line 22699
    :cond_1e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasCsharpNamespace()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 22700
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getCsharpNamespace()Ljava/lang/String;

    move-result-object v1

    .line 22701
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getCsharpNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v3

    .line 22703
    :cond_1f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasSwiftPrefix()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasSwiftPrefix()Z

    move-result v2

    if-eq v1, v2, :cond_20

    return v3

    .line 22704
    :cond_20
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasSwiftPrefix()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 22705
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getSwiftPrefix()Ljava/lang/String;

    move-result-object v1

    .line 22706
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getSwiftPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v3

    .line 22708
    :cond_21
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasPhpClassPrefix()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasPhpClassPrefix()Z

    move-result v2

    if-eq v1, v2, :cond_22

    return v3

    .line 22709
    :cond_22
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasPhpClassPrefix()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 22710
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getPhpClassPrefix()Ljava/lang/String;

    move-result-object v1

    .line 22711
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getPhpClassPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    return v3

    .line 22713
    :cond_23
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasPhpNamespace()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasPhpNamespace()Z

    move-result v2

    if-eq v1, v2, :cond_24

    return v3

    .line 22714
    :cond_24
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasPhpNamespace()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 22715
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getPhpNamespace()Ljava/lang/String;

    move-result-object v1

    .line 22716
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getPhpNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v3

    .line 22718
    :cond_25
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasPhpMetadataNamespace()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasPhpMetadataNamespace()Z

    move-result v2

    if-eq v1, v2, :cond_26

    return v3

    .line 22719
    :cond_26
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasPhpMetadataNamespace()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 22720
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getPhpMetadataNamespace()Ljava/lang/String;

    move-result-object v1

    .line 22721
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getPhpMetadataNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    return v3

    .line 22723
    :cond_27
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasRubyPackage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasRubyPackage()Z

    move-result v2

    if-eq v1, v2, :cond_28

    return v3

    .line 22724
    :cond_28
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasRubyPackage()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 22725
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getRubyPackage()Ljava/lang/String;

    move-result-object v1

    .line 22726
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getRubyPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v3

    .line 22728
    :cond_29
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v1

    .line 22729
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v3

    .line 22730
    :cond_2a
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object v2, p1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v3

    .line 22731
    :cond_2b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getExtensionFields()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getExtensionFields()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    return v3

    :cond_2c
    return v0
.end method

.method public final getCcEnableArenas()Z
    .locals 1

    .line 21965
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->ccEnableArenas_:Z

    return v0
.end method

.method public final getCcGenericServices()Z
    .locals 1

    .line 21866
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->ccGenericServices_:Z

    return v0
.end method

.method public final getCsharpNamespace()Ljava/lang/String;
    .locals 2

    .line 22045
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->csharpNamespace_:Ljava/lang/Object;

    .line 22046
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22047
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 22049
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 22051
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 22052
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22053
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->csharpNamespace_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getCsharpNamespaceBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 22067
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->csharpNamespace_:Ljava/lang/Object;

    .line 22068
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22069
    check-cast v0, Ljava/lang/String;

    .line 22070
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 22072
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->csharpNamespace_:Ljava/lang/Object;

    return-object v0

    .line 22075
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    .line 25374
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 21184
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 21184
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getDeprecated()Z
    .locals 1

    .line 21940
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->deprecated_:Z

    return v0
.end method

.method public final getGoPackage()Ljava/lang/String;
    .locals 2

    .line 21792
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 21793
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21794
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 21796
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 21798
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 21799
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21800
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getGoPackageBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 21818
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 21819
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21820
    check-cast v0, Ljava/lang/String;

    .line 21821
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 21823
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    return-object v0

    .line 21826
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getJavaGenerateEqualsAndHash()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 21711
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    return v0
.end method

.method public final getJavaGenericServices()Z
    .locals 1

    .line 21881
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaGenericServices_:Z

    return v0
.end method

.method public final getJavaMultipleFiles()Z
    .locals 1

    .line 21688
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    return v0
.end method

.method public final getJavaOuterClassname()Ljava/lang/String;
    .locals 2

    .line 21620
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 21621
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21622
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 21624
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 21626
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 21627
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21628
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getJavaOuterClassnameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 21646
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 21647
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21648
    check-cast v0, Ljava/lang/String;

    .line 21649
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 21651
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    return-object v0

    .line 21654
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getJavaPackage()Ljava/lang/String;
    .locals 2

    .line 21555
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 21556
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21557
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 21559
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 21561
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 21562
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21563
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getJavaPackageBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 21580
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 21581
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21582
    check-cast v0, Ljava/lang/String;

    .line 21583
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 21585
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    return-object v0

    .line 21588
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getJavaStringCheckUtf8()Z
    .locals 1

    .line 21744
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaStringCheckUtf8_:Z

    return v0
.end method

.method public final getObjcClassPrefix()Ljava/lang/String;
    .locals 2

    .line 21990
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->objcClassPrefix_:Ljava/lang/Object;

    .line 21991
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21992
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 21994
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 21996
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 21997
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21998
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->objcClassPrefix_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getObjcClassPrefixBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 22013
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->objcClassPrefix_:Ljava/lang/Object;

    .line 22014
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22015
    check-cast v0, Ljava/lang/String;

    .line 22016
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 22018
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->objcClassPrefix_:Ljava/lang/Object;

    return-object v0

    .line 22021
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getOptimizeFor()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    .locals 1

    .line 21760
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->valueOf(I)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 21761
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->SPEED:Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    :cond_0
    return-object v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;",
            ">;"
        }
    .end annotation

    .line 25369
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getPhpClassPrefix()Ljava/lang/String;
    .locals 2

    .line 22164
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpClassPrefix_:Ljava/lang/Object;

    .line 22165
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22166
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 22168
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 22170
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 22171
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22172
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpClassPrefix_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getPhpClassPrefixBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 22187
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpClassPrefix_:Ljava/lang/Object;

    .line 22188
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22189
    check-cast v0, Ljava/lang/String;

    .line 22190
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 22192
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpClassPrefix_:Ljava/lang/Object;

    return-object v0

    .line 22195
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getPhpGenericServices()Z
    .locals 1

    .line 21911
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpGenericServices_:Z

    return v0
.end method

.method public final getPhpMetadataNamespace()Ljava/lang/String;
    .locals 2

    .line 22283
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpMetadataNamespace_:Ljava/lang/Object;

    .line 22284
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22285
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 22287
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 22289
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 22290
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22291
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpMetadataNamespace_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getPhpMetadataNamespaceBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 22307
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpMetadataNamespace_:Ljava/lang/Object;

    .line 22308
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22309
    check-cast v0, Ljava/lang/String;

    .line 22310
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 22312
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpMetadataNamespace_:Ljava/lang/Object;

    return-object v0

    .line 22315
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getPhpNamespace()Ljava/lang/String;
    .locals 2

    .line 22223
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpNamespace_:Ljava/lang/Object;

    .line 22224
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22225
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 22227
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 22229
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 22230
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22231
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpNamespace_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getPhpNamespaceBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 22247
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpNamespace_:Ljava/lang/Object;

    .line 22248
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22249
    check-cast v0, Ljava/lang/String;

    .line 22250
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 22252
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpNamespace_:Ljava/lang/Object;

    return-object v0

    .line 22255
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getPyGenericServices()Z
    .locals 1

    .line 21896
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->pyGenericServices_:Z

    return v0
.end method

.method public final getRubyPackage()Ljava/lang/String;
    .locals 2

    .line 22343
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->rubyPackage_:Ljava/lang/Object;

    .line 22344
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22345
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 22347
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 22349
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 22350
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22351
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->rubyPackage_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getRubyPackageBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 22367
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->rubyPackage_:Ljava/lang/Object;

    .line 22368
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22369
    check-cast v0, Ljava/lang/String;

    .line 22370
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 22372
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->rubyPackage_:Ljava/lang/Object;

    return-object v0

    .line 22375
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 6

    .line 22535
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 22539
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 22540
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 22542
    :goto_0
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/16 v3, 0x8

    if-eqz v1, :cond_2

    .line 22543
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22545
    :cond_2
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_3

    const/16 v1, 0x9

    .line 22546
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:I

    .line 22547
    invoke-static {v1, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 22549
    :cond_3
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    const/16 v1, 0xa

    .line 22550
    iget-boolean v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    .line 22551
    invoke-static {v1, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 22553
    :cond_4
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_5

    const/16 v1, 0xb

    .line 22554
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22556
    :cond_5
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v4, 0x10

    if-eqz v1, :cond_6

    .line 22557
    iget-boolean v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->ccGenericServices_:Z

    .line 22558
    invoke-static {v4, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 22560
    :cond_6
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_7

    const/16 v1, 0x11

    .line 22561
    iget-boolean v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaGenericServices_:Z

    .line 22562
    invoke-static {v1, v5}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 22564
    :cond_7
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_8

    const/16 v1, 0x12

    .line 22565
    iget-boolean v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->pyGenericServices_:Z

    .line 22566
    invoke-static {v1, v5}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 22568
    :cond_8
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_9

    const/16 v1, 0x14

    .line 22569
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    .line 22570
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 22572
    :cond_9
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_a

    const/16 v1, 0x17

    .line 22573
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->deprecated_:Z

    .line 22574
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 22576
    :cond_a
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_b

    const/16 v1, 0x1b

    .line 22577
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaStringCheckUtf8_:Z

    .line 22578
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 22580
    :cond_b
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    const/16 v1, 0x1f

    .line 22581
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->ccEnableArenas_:Z

    .line 22582
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 22584
    :cond_c
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_d

    const/16 v1, 0x24

    .line 22585
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->objcClassPrefix_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22587
    :cond_d
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    const/16 v1, 0x25

    .line 22588
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->csharpNamespace_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22590
    :cond_e
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const v3, 0x8000

    and-int/2addr v1, v3

    if-eqz v1, :cond_f

    const/16 v1, 0x27

    .line 22591
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->swiftPrefix_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22593
    :cond_f
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v3, 0x10000

    and-int/2addr v1, v3

    if-eqz v1, :cond_10

    const/16 v1, 0x28

    .line 22594
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpClassPrefix_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22596
    :cond_10
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v3, 0x20000

    and-int/2addr v1, v3

    if-eqz v1, :cond_11

    const/16 v1, 0x29

    .line 22597
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpNamespace_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22599
    :cond_11
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_12

    const/16 v1, 0x2a

    .line 22600
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpGenericServices_:Z

    .line 22601
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 22603
    :cond_12
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v3, 0x40000

    and-int/2addr v1, v3

    if-eqz v1, :cond_13

    const/16 v1, 0x2c

    .line 22604
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpMetadataNamespace_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22606
    :cond_13
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    if-eqz v1, :cond_14

    const/16 v1, 0x2d

    .line 22607
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->rubyPackage_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22609
    :cond_14
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_15

    const/16 v1, 0x3e7

    .line 22610
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    .line 22611
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 22613
    :cond_15
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->extensionsSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 22614
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 22615
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->memoizedSize:I

    return v0
.end method

.method public final getSwiftPrefix()Ljava/lang/String;
    .locals 2

    .line 22105
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->swiftPrefix_:Ljava/lang/Object;

    .line 22106
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22107
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 22109
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 22111
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 22112
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22113
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->swiftPrefix_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getSwiftPrefixBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 22130
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->swiftPrefix_:Ljava/lang/Object;

    .line 22131
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22132
    check-cast v0, Ljava/lang/String;

    .line 22133
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 22135
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->swiftPrefix_:Ljava/lang/Object;

    return-object v0

    .line 22138
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUninterpretedOption(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    .line 22424
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    return-object p1
.end method

.method public final getUninterpretedOptionCount()I
    .locals 1

    .line 22413
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

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

    .line 22390
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public final getUninterpretedOptionOrBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;
    .locals 1

    .line 22436
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

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

    .line 22402
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 21219
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasCcEnableArenas()Z
    .locals 1

    .line 21954
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasCcGenericServices()Z
    .locals 1

    .line 21848
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasCsharpNamespace()Z
    .locals 1

    .line 22035
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasDeprecated()Z
    .locals 1

    .line 21927
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasGoPackage()Z
    .locals 1

    .line 21778
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasJavaGenerateEqualsAndHash()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 21701
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasJavaGenericServices()Z
    .locals 1

    .line 21875
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasJavaMultipleFiles()Z
    .locals 1

    .line 21673
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasJavaOuterClassname()Z
    .locals 1

    .line 21606
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasJavaPackage()Z
    .locals 2

    .line 21542
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasJavaStringCheckUtf8()Z
    .locals 1

    .line 21729
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasObjcClassPrefix()Z
    .locals 1

    .line 21979
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasOptimizeFor()Z
    .locals 1

    .line 21753
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPhpClassPrefix()Z
    .locals 2

    .line 22153
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPhpGenericServices()Z
    .locals 1

    .line 21905
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPhpMetadataNamespace()Z
    .locals 2

    .line 22271
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPhpNamespace()Z
    .locals 2

    .line 22211
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPyGenericServices()Z
    .locals 1

    .line 21890
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasRubyPackage()Z
    .locals 2

    .line 22331
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasSwiftPrefix()Z
    .locals 2

    .line 22092
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 22738
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 22739
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->memoizedHashCode:I

    return v0

    .line 22742
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 22743
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 22745
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getJavaPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 22747
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 22749
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getJavaOuterClassname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 22751
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 22754
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getJavaMultipleFiles()Z

    move-result v1

    .line 22753
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 22756
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasJavaGenerateEqualsAndHash()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x14

    mul-int/lit8 v0, v0, 0x35

    .line 22759
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getJavaGenerateEqualsAndHash()Z

    move-result v1

    .line 22758
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 22761
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasJavaStringCheckUtf8()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1b

    mul-int/lit8 v0, v0, 0x35

    .line 22764
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getJavaStringCheckUtf8()Z

    move-result v1

    .line 22763
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 22766
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 22768
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:I

    add-int/2addr v0, v1

    .line 22770
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasGoPackage()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 22772
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getGoPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 22774
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasCcGenericServices()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x35

    .line 22777
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getCcGenericServices()Z

    move-result v1

    .line 22776
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 22779
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasJavaGenericServices()Z

    move-result v1

    if-eqz v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x35

    .line 22782
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getJavaGenericServices()Z

    move-result v1

    .line 22781
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 22784
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasPyGenericServices()Z

    move-result v1

    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x12

    mul-int/lit8 v0, v0, 0x35

    .line 22787
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getPyGenericServices()Z

    move-result v1

    .line 22786
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 22789
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasPhpGenericServices()Z

    move-result v1

    if-eqz v1, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2a

    mul-int/lit8 v0, v0, 0x35

    .line 22792
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getPhpGenericServices()Z

    move-result v1

    .line 22791
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 22794
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasDeprecated()Z

    move-result v1

    if-eqz v1, :cond_c

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x17

    mul-int/lit8 v0, v0, 0x35

    .line 22797
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getDeprecated()Z

    move-result v1

    .line 22796
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 22799
    :cond_c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasCcEnableArenas()Z

    move-result v1

    if-eqz v1, :cond_d

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x35

    .line 22802
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getCcEnableArenas()Z

    move-result v1

    .line 22801
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 22804
    :cond_d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasObjcClassPrefix()Z

    move-result v1

    if-eqz v1, :cond_e

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x24

    mul-int/lit8 v0, v0, 0x35

    .line 22806
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getObjcClassPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 22808
    :cond_e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasCsharpNamespace()Z

    move-result v1

    if-eqz v1, :cond_f

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x25

    mul-int/lit8 v0, v0, 0x35

    .line 22810
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getCsharpNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 22812
    :cond_f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasSwiftPrefix()Z

    move-result v1

    if-eqz v1, :cond_10

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x27

    mul-int/lit8 v0, v0, 0x35

    .line 22814
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getSwiftPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 22816
    :cond_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasPhpClassPrefix()Z

    move-result v1

    if-eqz v1, :cond_11

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x28

    mul-int/lit8 v0, v0, 0x35

    .line 22818
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getPhpClassPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 22820
    :cond_11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasPhpNamespace()Z

    move-result v1

    if-eqz v1, :cond_12

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x29

    mul-int/lit8 v0, v0, 0x35

    .line 22822
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getPhpNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 22824
    :cond_12
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasPhpMetadataNamespace()Z

    move-result v1

    if-eqz v1, :cond_13

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2c

    mul-int/lit8 v0, v0, 0x35

    .line 22826
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getPhpMetadataNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 22828
    :cond_13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hasRubyPackage()Z

    move-result v1

    if-eqz v1, :cond_14

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2d

    mul-int/lit8 v0, v0, 0x35

    .line 22830
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getRubyPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 22832
    :cond_14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getUninterpretedOptionCount()I

    move-result v1

    if-lez v1, :cond_15

    mul-int/lit8 v0, v0, 0x25

    add-int/lit16 v0, v0, 0x3e7

    mul-int/lit8 v0, v0, 0x35

    .line 22834
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 22836
    :cond_15
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getExtensionFields()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hashFields(ILjava/util/Map;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    .line 22837
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 22838
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 21396
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$15000()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 21397
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 22442
    iget-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 22446
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getUninterpretedOptionCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 22447
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getUninterpretedOption(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v3

    invoke-virtual {v3}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 22448
    iput-byte v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->memoizedIsInitialized:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22452
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->extensionsAreInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    .line 22453
    iput-byte v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->memoizedIsInitialized:B

    return v2

    .line 22456
    :cond_4
    iput-byte v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 22913
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->newBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .line 22929
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 21184
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->newBuilderForType()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 21184
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 21184
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->newBuilderForType()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 21213
    new-instance p1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    invoke-direct {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;-><init>()V

    return-object p1
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .line 22922
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    .line 22923
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 21184
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 21184
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22465
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->newExtensionWriter()Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 22466
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 22467
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    invoke-static {p1, v2, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 22469
    :cond_0
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    .line 22470
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    invoke-static {p1, v2, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 22472
    :cond_1
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    const/16 v1, 0x9

    .line 22473
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:I

    invoke-virtual {p1, v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 22475
    :cond_2
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    .line 22476
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    invoke-virtual {p1, v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 22478
    :cond_3
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_4

    const/16 v1, 0xb

    .line 22479
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    invoke-static {p1, v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 22481
    :cond_4
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v3, 0x10

    if-eqz v1, :cond_5

    .line 22482
    iget-boolean v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->ccGenericServices_:Z

    invoke-virtual {p1, v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 22484
    :cond_5
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_6

    const/16 v1, 0x11

    .line 22485
    iget-boolean v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaGenericServices_:Z

    invoke-virtual {p1, v1, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 22487
    :cond_6
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_7

    const/16 v1, 0x12

    .line 22488
    iget-boolean v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->pyGenericServices_:Z

    invoke-virtual {p1, v1, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 22490
    :cond_7
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_8

    const/16 v1, 0x14

    .line 22491
    iget-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 22493
    :cond_8
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_9

    const/16 v1, 0x17

    .line 22494
    iget-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->deprecated_:Z

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 22496
    :cond_9
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_a

    const/16 v1, 0x1b

    .line 22497
    iget-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->javaStringCheckUtf8_:Z

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 22499
    :cond_a
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_b

    const/16 v1, 0x1f

    .line 22500
    iget-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->ccEnableArenas_:Z

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 22502
    :cond_b
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_c

    const/16 v1, 0x24

    .line 22503
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->objcClassPrefix_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 22505
    :cond_c
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_d

    const/16 v1, 0x25

    .line 22506
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->csharpNamespace_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 22508
    :cond_d
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_e

    const/16 v1, 0x27

    .line 22509
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->swiftPrefix_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 22511
    :cond_e
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_f

    const/16 v1, 0x28

    .line 22512
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpClassPrefix_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 22514
    :cond_f
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_10

    const/16 v1, 0x29

    .line 22515
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpNamespace_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 22517
    :cond_10
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_11

    const/16 v1, 0x2a

    .line 22518
    iget-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpGenericServices_:Z

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 22520
    :cond_11
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_12

    const/16 v1, 0x2c

    .line 22521
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->phpMetadataNamespace_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 22523
    :cond_12
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-eqz v1, :cond_13

    const/16 v1, 0x2d

    .line 22524
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->rubyPackage_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_13
    const/4 v1, 0x0

    .line 22526
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_14

    const/16 v2, 0x3e7

    .line 22527
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_14
    const/high16 v1, 0x20000000

    .line 22529
    invoke-virtual {v0, v1, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/explorestack/protobuf/CodedOutputStream;)V

    .line 22530
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
