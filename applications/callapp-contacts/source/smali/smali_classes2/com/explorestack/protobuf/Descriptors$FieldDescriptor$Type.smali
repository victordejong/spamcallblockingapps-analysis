.class public final enum Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum BOOL:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum BYTES:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum DOUBLE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum FIXED32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum FIXED64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum FLOAT:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum GROUP:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum INT32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum INT64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum SFIXED32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum SFIXED64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum SINT32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum SINT64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum STRING:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum UINT32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum UINT64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;


# instance fields
.field private javaType:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1216
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->DOUBLE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->DOUBLE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1217
    new-instance v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->FLOAT:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v4, "FLOAT"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->FLOAT:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1218
    new-instance v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v4, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->LONG:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v6, "INT64"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->INT64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1219
    new-instance v4, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v6, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->LONG:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v8, "UINT64"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v4, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->UINT64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1220
    new-instance v6, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v8, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->INT:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v10, "INT32"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v6, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->INT32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1221
    new-instance v8, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v10, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->LONG:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v12, "FIXED64"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v8, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->FIXED64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1222
    new-instance v10, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v12, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->INT:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v14, "FIXED32"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v10, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->FIXED32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1223
    new-instance v12, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v14, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->BOOLEAN:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v15, "BOOL"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v12, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->BOOL:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1224
    new-instance v14, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v15, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->STRING:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v13, "STRING"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v14, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->STRING:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1225
    new-instance v13, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v15, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v11, "GROUP"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v13, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1226
    new-instance v11, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v15, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v9, "MESSAGE"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v15}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v11, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1227
    new-instance v9, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v15, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->BYTE_STRING:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v7, "BYTES"

    const/16 v5, 0xb

    invoke-direct {v9, v7, v5, v15}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v9, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->BYTES:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1228
    new-instance v7, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v15, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->INT:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v5, "UINT32"

    const/16 v3, 0xc

    invoke-direct {v7, v5, v3, v15}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v7, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->UINT32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1229
    new-instance v5, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v15, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v3, "ENUM"

    move-object/from16 v16, v7

    const/16 v7, 0xd

    invoke-direct {v5, v3, v7, v15}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v5, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1230
    new-instance v3, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v15, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->INT:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v7, "SFIXED32"

    move-object/from16 v17, v5

    const/16 v5, 0xe

    invoke-direct {v3, v7, v5, v15}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v3, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->SFIXED32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1231
    new-instance v7, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v15, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->LONG:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v5, "SFIXED64"

    move-object/from16 v18, v3

    const/16 v3, 0xf

    invoke-direct {v7, v5, v3, v15}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v7, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->SFIXED64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1232
    new-instance v5, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v15, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->INT:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v3, "SINT32"

    move-object/from16 v19, v7

    const/16 v7, 0x10

    invoke-direct {v5, v3, v7, v15}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v5, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->SINT32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1233
    new-instance v3, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v15, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->LONG:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v7, "SINT64"

    move-object/from16 v20, v5

    const/16 v5, 0x11

    invoke-direct {v3, v7, v5, v15}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v3, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->SINT64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    const/16 v7, 0x12

    new-array v7, v7, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    const/4 v15, 0x0

    aput-object v0, v7, v15

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v4, v7, v0

    const/4 v0, 0x4

    aput-object v6, v7, v0

    const/4 v0, 0x5

    aput-object v8, v7, v0

    const/4 v0, 0x6

    aput-object v10, v7, v0

    const/4 v0, 0x7

    aput-object v12, v7, v0

    const/16 v0, 0x8

    aput-object v14, v7, v0

    const/16 v0, 0x9

    aput-object v13, v7, v0

    const/16 v0, 0xa

    aput-object v11, v7, v0

    const/16 v0, 0xb

    aput-object v9, v7, v0

    const/16 v0, 0xc

    aput-object v16, v7, v0

    const/16 v0, 0xd

    aput-object v17, v7, v0

    const/16 v0, 0xe

    aput-object v18, v7, v0

    const/16 v0, 0xf

    aput-object v19, v7, v0

    const/16 v0, 0x10

    aput-object v20, v7, v0

    aput-object v3, v7, v5

    .line 1215
    sput-object v7, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->$VALUES:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;",
            ")V"
        }
    .end annotation

    .line 1235
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1236
    iput-object p3, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->javaType:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    return-void
.end method

.method public static valueOf(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;
    .locals 1

    .line 1250
    invoke-static {}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->values()[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->getNumber()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;
    .locals 1

    .line 1215
    const-class v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;
    .locals 1

    .line 1215
    sget-object v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->$VALUES:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    return-object v0
.end method


# virtual methods
.method public final getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;
    .locals 1

    .line 1246
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->javaType:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    return-object v0
.end method

.method public final toProto()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    .locals 1

    .line 1242
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->forNumber(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v0

    return-object v0
.end method
