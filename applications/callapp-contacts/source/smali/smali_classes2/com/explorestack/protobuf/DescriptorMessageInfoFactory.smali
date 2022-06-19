.class final Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/MessageInfoFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;,
        Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;
    }
.end annotation


# static fields
.field private static final GET_DEFAULT_INSTANCE_METHOD_NAME:Ljava/lang/String; = "getDefaultInstance"

.field private static final instance:Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;

.field private static isInitializedCheckAnalyzer:Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;

.field private static final specialFieldNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 63
    new-instance v0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;

    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->instance:Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "cached_size"

    const-string v2, "serialized_size"

    const-string v3, "class"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->specialFieldNames:Ljava/util/Set;

    .line 252
    new-instance v0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;

    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->isInitializedCheckAnalyzer:Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-static {p0}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->snakeCaseToCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0

    .line 61
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method private static bitField(Ljava/lang/Class;I)Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bitField"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method private static buildOneofMember(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;ZLcom/explorestack/protobuf/Internal$EnumVerifier;)Lcom/explorestack/protobuf/FieldInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;",
            "Z",
            "Lcom/explorestack/protobuf/Internal$EnumVerifier;",
            ")",
            "Lcom/explorestack/protobuf/FieldInfo;"
        }
    .end annotation

    .line 451
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingOneof()Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;->getOneof(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/OneofInfo;

    move-result-object v3

    .line 452
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->getFieldType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/FieldType;

    move-result-object v2

    .line 453
    invoke-static {p0, p1, v2}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->getOneofStoredType(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/FieldType;)Ljava/lang/Class;

    move-result-object v4

    .line 455
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v1

    move v5, p3

    move-object v6, p4

    .line 454
    invoke-static/range {v1 .. v6}, Lcom/explorestack/protobuf/FieldInfo;->forOneofMemberField(ILcom/explorestack/protobuf/FieldType;Lcom/explorestack/protobuf/OneofInfo;Ljava/lang/Class;ZLcom/explorestack/protobuf/Internal$EnumVerifier;)Lcom/explorestack/protobuf/FieldInfo;

    move-result-object p0

    return-object p0
.end method

.method private static cachedSizeField(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 580
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->getCachedSizeFieldName(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method private static convert(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/MessageInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/explorestack/protobuf/Descriptors$Descriptor;",
            ")",
            "Lcom/explorestack/protobuf/MessageInfo;"
        }
    .end annotation

    .line 103
    sget-object v0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$Descriptors$FileDescriptor$Syntax:[I

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getSyntax()Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 107
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->convertProto3(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/StructuralMessageInfo;

    move-result-object p0

    return-object p0

    .line 109
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported syntax: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getSyntax()Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 105
    :cond_1
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->convertProto2(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/StructuralMessageInfo;

    move-result-object p0

    return-object p0
.end method

.method private static convertProto2(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/StructuralMessageInfo;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/explorestack/protobuf/Descriptors$Descriptor;",
            ")",
            "Lcom/explorestack/protobuf/StructuralMessageInfo;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 261
    invoke-virtual/range {p1 .. p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v1

    .line 263
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lcom/explorestack/protobuf/StructuralMessageInfo;->newBuilder(I)Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;

    move-result-object v2

    .line 264
    invoke-static/range {p0 .. p0}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->getDefaultInstance(Ljava/lang/Class;)Lcom/explorestack/protobuf/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withDefaultInstance(Ljava/lang/Object;)V

    .line 265
    sget-object v3, Lcom/explorestack/protobuf/ProtoSyntax;->PROTO2:Lcom/explorestack/protobuf/ProtoSyntax;

    invoke-virtual {v2, v3}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withSyntax(Lcom/explorestack/protobuf/ProtoSyntax;)V

    .line 266
    invoke-virtual/range {p1 .. p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withMessageSetWireFormat(Z)V

    .line 268
    new-instance v3, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;-><init>(Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$1;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v8, v4

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v17, 0x1

    .line 277
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_c

    .line 278
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 279
    invoke-virtual {v10}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v11

    invoke-virtual {v11}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v11

    invoke-virtual {v11}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getJavaStringCheckUtf8()Z

    move-result v15

    .line 281
    invoke-virtual {v10}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v11

    sget-object v12, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v11, v12, :cond_0

    .line 282
    new-instance v11, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$1;

    invoke-direct {v11, v10}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$1;-><init>(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    move-object v14, v11

    goto :goto_1

    :cond_0
    move-object v14, v4

    .line 290
    :goto_1
    invoke-virtual {v10}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingOneof()Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 292
    invoke-static {v0, v10, v3, v15, v14}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->buildOneofMember(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;ZLcom/explorestack/protobuf/Internal$EnumVerifier;)Lcom/explorestack/protobuf/FieldInfo;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withField(Lcom/explorestack/protobuf/FieldInfo;)V

    goto/16 :goto_2

    .line 294
    :cond_1
    invoke-static {v0, v10}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->field(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 295
    invoke-virtual {v10}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v12

    .line 296
    invoke-static {v10}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->getFieldType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/FieldType;

    move-result-object v13

    .line 298
    invoke-virtual {v10}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isMapField()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 304
    invoke-virtual {v10}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v13

    const/4 v15, 0x2

    invoke-virtual {v13, v15}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->findFieldByNumber(I)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object v13

    .line 305
    invoke-virtual {v13}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v15

    sget-object v4, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v15, v4, :cond_2

    .line 306
    new-instance v14, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$2;

    invoke-direct {v14, v13}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$2;-><init>(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 318
    :cond_2
    invoke-virtual {v10}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/explorestack/protobuf/SchemaUtil;->getMapDefaultEntry(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 315
    invoke-static {v11, v12, v4, v14}, Lcom/explorestack/protobuf/FieldInfo;->forMapField(Ljava/lang/reflect/Field;ILjava/lang/Object;Lcom/explorestack/protobuf/Internal$EnumVerifier;)Lcom/explorestack/protobuf/FieldInfo;

    move-result-object v4

    .line 314
    invoke-virtual {v2, v4}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withField(Lcom/explorestack/protobuf/FieldInfo;)V

    goto/16 :goto_3

    .line 323
    :cond_3
    invoke-virtual {v10}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v14, :cond_5

    .line 326
    invoke-virtual {v10}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 329
    invoke-static {v0, v10}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->cachedSizeField(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 328
    invoke-static {v11, v12, v13, v14, v4}, Lcom/explorestack/protobuf/FieldInfo;->forPackedFieldWithEnumVerifier(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Lcom/explorestack/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)Lcom/explorestack/protobuf/FieldInfo;

    move-result-object v4

    .line 327
    invoke-virtual {v2, v4}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withField(Lcom/explorestack/protobuf/FieldInfo;)V

    goto/16 :goto_3

    .line 331
    :cond_4
    invoke-static {v11, v12, v13, v14}, Lcom/explorestack/protobuf/FieldInfo;->forFieldWithEnumVerifier(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Lcom/explorestack/protobuf/Internal$EnumVerifier;)Lcom/explorestack/protobuf/FieldInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withField(Lcom/explorestack/protobuf/FieldInfo;)V

    goto/16 :goto_3

    .line 333
    :cond_5
    invoke-virtual {v10}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v4

    sget-object v14, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v4, v14, :cond_6

    .line 336
    invoke-static {v0, v10}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->getTypeForRepeatedMessageField(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Class;

    move-result-object v4

    .line 335
    invoke-static {v11, v12, v13, v4}, Lcom/explorestack/protobuf/FieldInfo;->forRepeatedMessageField(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/Class;)Lcom/explorestack/protobuf/FieldInfo;

    move-result-object v4

    .line 334
    invoke-virtual {v2, v4}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withField(Lcom/explorestack/protobuf/FieldInfo;)V

    goto :goto_3

    .line 338
    :cond_6
    invoke-virtual {v10}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 340
    invoke-static {v0, v10}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->cachedSizeField(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-static {v11, v12, v13, v4}, Lcom/explorestack/protobuf/FieldInfo;->forPackedField(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/reflect/Field;)Lcom/explorestack/protobuf/FieldInfo;

    move-result-object v4

    .line 339
    invoke-virtual {v2, v4}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withField(Lcom/explorestack/protobuf/FieldInfo;)V

    goto :goto_3

    .line 342
    :cond_7
    invoke-static {v11, v12, v13, v15}, Lcom/explorestack/protobuf/FieldInfo;->forField(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Z)Lcom/explorestack/protobuf/FieldInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withField(Lcom/explorestack/protobuf/FieldInfo;)V

    goto :goto_3

    :cond_8
    if-nez v8, :cond_9

    .line 350
    invoke-static {v0, v9}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->bitField(Ljava/lang/Class;I)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 354
    :cond_9
    invoke-virtual {v10}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRequired()Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v10, v11

    move v11, v12

    move-object v12, v13

    move-object v13, v8

    move-object v4, v14

    move/from16 v14, v17

    move-object/from16 v16, v4

    .line 356
    invoke-static/range {v10 .. v16}, Lcom/explorestack/protobuf/FieldInfo;->forProto2RequiredField(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/explorestack/protobuf/Internal$EnumVerifier;)Lcom/explorestack/protobuf/FieldInfo;

    move-result-object v4

    .line 355
    invoke-virtual {v2, v4}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withField(Lcom/explorestack/protobuf/FieldInfo;)V

    goto :goto_2

    :cond_a
    move-object v4, v14

    move-object v10, v11

    move v11, v12

    move-object v12, v13

    move-object v13, v8

    move/from16 v14, v17

    move-object/from16 v16, v4

    .line 360
    invoke-static/range {v10 .. v16}, Lcom/explorestack/protobuf/FieldInfo;->forProto2OptionalField(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/explorestack/protobuf/Internal$EnumVerifier;)Lcom/explorestack/protobuf/FieldInfo;

    move-result-object v4

    .line 359
    invoke-virtual {v2, v4}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withField(Lcom/explorestack/protobuf/FieldInfo;)V

    :goto_2
    shl-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_b

    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x0

    const/16 v17, 0x1

    :cond_b
    :goto_3
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 375
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 376
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_f

    .line 377
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 378
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRequired()Z

    move-result v6

    if-nez v6, :cond_d

    .line 379
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v6

    sget-object v7, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v6, v7, :cond_e

    .line 380
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v6

    invoke-static {v6}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->needsIsInitializedCheck(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 381
    :cond_d
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 384
    :cond_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 385
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v5, v3, :cond_10

    .line 386
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 388
    :cond_10
    invoke-virtual {v2, v1}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withCheckInitialized([I)V

    .line 390
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->build()Lcom/explorestack/protobuf/StructuralMessageInfo;

    move-result-object v0

    return-object v0
.end method

.method private static convertProto3(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/StructuralMessageInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/explorestack/protobuf/Descriptors$Descriptor;",
            ")",
            "Lcom/explorestack/protobuf/StructuralMessageInfo;"
        }
    .end annotation

    .line 395
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object p1

    .line 397
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/explorestack/protobuf/StructuralMessageInfo;->newBuilder(I)Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;

    move-result-object v0

    .line 398
    invoke-static {p0}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->getDefaultInstance(Ljava/lang/Class;)Lcom/explorestack/protobuf/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withDefaultInstance(Ljava/lang/Object;)V

    .line 399
    sget-object v1, Lcom/explorestack/protobuf/ProtoSyntax;->PROTO3:Lcom/explorestack/protobuf/ProtoSyntax;

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withSyntax(Lcom/explorestack/protobuf/ProtoSyntax;)V

    .line 401
    new-instance v1, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;-><init>(Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$1;)V

    const/4 v3, 0x0

    .line 403
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 404
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 405
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingOneof()Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 407
    invoke-static {p0, v4, v1, v6, v2}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->buildOneofMember(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;ZLcom/explorestack/protobuf/Internal$EnumVerifier;)Lcom/explorestack/protobuf/FieldInfo;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withField(Lcom/explorestack/protobuf/FieldInfo;)V

    goto/16 :goto_1

    .line 410
    :cond_0
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isMapField()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 413
    invoke-static {p0, v4}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->field(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 414
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v6

    .line 415
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/explorestack/protobuf/SchemaUtil;->getMapDefaultEntry(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 412
    invoke-static {v5, v6, v4, v2}, Lcom/explorestack/protobuf/FieldInfo;->forMapField(Ljava/lang/reflect/Field;ILjava/lang/Object;Lcom/explorestack/protobuf/Internal$EnumVerifier;)Lcom/explorestack/protobuf/FieldInfo;

    move-result-object v4

    .line 411
    invoke-virtual {v0, v4}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withField(Lcom/explorestack/protobuf/FieldInfo;)V

    goto :goto_1

    .line 419
    :cond_1
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v5

    sget-object v7, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v5, v7, :cond_2

    .line 422
    invoke-static {p0, v4}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->field(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 423
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v6

    .line 424
    invoke-static {v4}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->getFieldType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/FieldType;

    move-result-object v7

    .line 425
    invoke-static {p0, v4}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->getTypeForRepeatedMessageField(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Class;

    move-result-object v4

    .line 421
    invoke-static {v5, v6, v7, v4}, Lcom/explorestack/protobuf/FieldInfo;->forRepeatedMessageField(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/Class;)Lcom/explorestack/protobuf/FieldInfo;

    move-result-object v4

    .line 420
    invoke-virtual {v0, v4}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withField(Lcom/explorestack/protobuf/FieldInfo;)V

    goto :goto_1

    .line 428
    :cond_2
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 431
    invoke-static {p0, v4}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->field(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 432
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v6

    .line 433
    invoke-static {v4}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->getFieldType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/FieldType;

    move-result-object v7

    .line 434
    invoke-static {p0, v4}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->cachedSizeField(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 430
    invoke-static {v5, v6, v7, v4}, Lcom/explorestack/protobuf/FieldInfo;->forPackedField(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/reflect/Field;)Lcom/explorestack/protobuf/FieldInfo;

    move-result-object v4

    .line 429
    invoke-virtual {v0, v4}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withField(Lcom/explorestack/protobuf/FieldInfo;)V

    goto :goto_1

    .line 437
    :cond_3
    invoke-static {p0, v4}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->field(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v7

    invoke-static {v4}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->getFieldType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/FieldType;

    move-result-object v4

    invoke-static {v5, v7, v4, v6}, Lcom/explorestack/protobuf/FieldInfo;->forField(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Z)Lcom/explorestack/protobuf/FieldInfo;

    move-result-object v4

    .line 436
    invoke-virtual {v0, v4}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withField(Lcom/explorestack/protobuf/FieldInfo;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 441
    :cond_4
    invoke-virtual {v0}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->build()Lcom/explorestack/protobuf/StructuralMessageInfo;

    move-result-object p0

    return-object p0
.end method

.method private static descriptorForType(Ljava/lang/Class;)Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/explorestack/protobuf/Descriptors$Descriptor;"
        }
    .end annotation

    .line 99
    invoke-static {p0}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->getDefaultInstance(Ljava/lang/Class;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    invoke-interface {p0}, Lcom/explorestack/protobuf/Message;->getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method private static field(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 576
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->getFieldName(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method private static field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 585
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 587
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in message class "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getCachedSizeFieldName(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/String;
    .locals 1

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->snakeCaseToCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "MemoizedSerializedSize"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultInstance(Ljava/lang/Class;)Lcom/explorestack/protobuf/Message;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/explorestack/protobuf/Message;"
        }
    .end annotation

    :try_start_0
    const-string v0, "getDefaultInstance"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 90
    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 91
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 93
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to get default instance for message class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static getFieldName(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/String;
    .locals 2

    .line 593
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_0

    .line 594
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 595
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object p0

    .line 596
    :goto_0
    sget-object v0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->specialFieldNames:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "__"

    goto :goto_1

    :cond_1
    const-string v0, "_"

    .line 597
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->snakeCaseToCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFieldType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/FieldType;
    .locals 3

    .line 484
    sget-object v0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 567
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported field type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :pswitch_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 563
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->UINT64:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 565
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->UINT64_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->UINT64_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 557
    :pswitch_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 558
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->UINT32:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 560
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->UINT32_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_3
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->UINT32_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 555
    :pswitch_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->STRING_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_4
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->STRING:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 550
    :pswitch_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_5

    .line 551
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->SINT64:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 553
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_6
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->SINT64_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 545
    :pswitch_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_7

    .line 546
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->SINT32:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 548
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->SINT32_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_8
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->SINT32_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 540
    :pswitch_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_9

    .line 541
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->SFIXED64:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 543
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_a

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->SFIXED64_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_a
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->SFIXED64_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 535
    :pswitch_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_b

    .line 536
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->SFIXED32:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 538
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_c

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->SFIXED32_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_c
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->SFIXED32_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 530
    :pswitch_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isMapField()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 531
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->MAP:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 533
    :cond_d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result p0

    if-eqz p0, :cond_e

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->MESSAGE_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_e
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->MESSAGE:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 525
    :pswitch_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_f

    .line 526
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->INT64:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 528
    :cond_f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_10

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->INT64_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_10
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->INT64_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 520
    :pswitch_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_11

    .line 521
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->INT32:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 523
    :cond_11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_12

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->INT32_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_12
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->INT32_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 518
    :pswitch_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result p0

    if-eqz p0, :cond_13

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->GROUP_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_13
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->GROUP:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 513
    :pswitch_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_14

    .line 514
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->FLOAT:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 516
    :cond_14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_15

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->FLOAT_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_15
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->FLOAT_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 508
    :pswitch_c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_16

    .line 509
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->FIXED64:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 511
    :cond_16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_17

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->FIXED64_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_17
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->FIXED64_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 503
    :pswitch_d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_18

    .line 504
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->FIXED32:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 506
    :cond_18
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_19

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->FIXED32_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_19
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->FIXED32_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 498
    :pswitch_e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 499
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->ENUM:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 501
    :cond_1a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_1b

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->ENUM_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_1b
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->ENUM_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 493
    :pswitch_f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 494
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->DOUBLE:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 496
    :cond_1c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_1d

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_1d
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->DOUBLE_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 491
    :pswitch_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result p0

    if-eqz p0, :cond_1e

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->BYTES_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_1e
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->BYTES:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 486
    :pswitch_11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 487
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->BOOL:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 489
    :cond_1f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_20

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->BOOL_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_20
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->BOOL_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

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

.method public static getInstance()Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;
    .locals 1

    .line 71
    sget-object v0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->instance:Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;

    return-object v0
.end method

.method private static getOneofStoredType(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/FieldType;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Lcom/explorestack/protobuf/FieldType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 460
    sget-object v0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$JavaType:[I

    invoke-virtual {p2}, Lcom/explorestack/protobuf/FieldType;->getJavaType()Lcom/explorestack/protobuf/JavaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/JavaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 479
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Invalid type for oneof: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 477
    :pswitch_0
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->getOneofStoredTypeForMessage(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 475
    :pswitch_1
    const-class p0, Ljava/lang/String;

    return-object p0

    .line 473
    :pswitch_2
    const-class p0, Ljava/lang/Long;

    return-object p0

    .line 471
    :pswitch_3
    const-class p0, Ljava/lang/Integer;

    return-object p0

    .line 468
    :pswitch_4
    const-class p0, Ljava/lang/Float;

    return-object p0

    .line 466
    :pswitch_5
    const-class p0, Ljava/lang/Double;

    return-object p0

    .line 464
    :pswitch_6
    const-class p0, Lcom/explorestack/protobuf/ByteString;

    return-object p0

    .line 462
    :pswitch_7
    const-class p0, Ljava/lang/Boolean;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getOneofStoredTypeForMessage(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 635
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object p1

    .line 636
    :goto_0
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->getterForField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 637
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 639
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static getTypeForRepeatedMessageField(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 646
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object p1

    .line 647
    :goto_0
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->getterForField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 648
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 650
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static getterForField(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 656
    invoke-static {p0}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->snakeCaseToCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 659
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static needsIsInitializedCheck(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Z
    .locals 1

    .line 256
    sget-object v0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->isInitializedCheckAnalyzer:Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;->needsIsInitializedCheck(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Z

    move-result p0

    return p0
.end method

.method private static snakeCaseToCamelCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 611
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 612
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5f

    if-ne v5, v6, :cond_0

    :goto_1
    const/4 v4, 0x1

    goto :goto_2

    .line 615
    :cond_0
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 616
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    .line 619
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    if-nez v3, :cond_3

    .line 622
    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 624
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 627
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final isSupported(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 76
    const-class v0, Lcom/explorestack/protobuf/GeneratedMessageV3;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public final messageInfoFor(Ljava/lang/Class;)Lcom/explorestack/protobuf/MessageInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/explorestack/protobuf/MessageInfo;"
        }
    .end annotation

    .line 81
    const-class v0, Lcom/explorestack/protobuf/GeneratedMessageV3;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->descriptorForType(Ljava/lang/Class;)Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->convert(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/MessageInfo;

    move-result-object p1

    return-object p1

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported message type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
