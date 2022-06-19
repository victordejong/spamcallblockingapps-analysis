.class public enum Lcom/explorestack/protobuf/WireFormat$FieldType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/WireFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "FieldType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/WireFormat$FieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/WireFormat$FieldType;

.field public static final enum BOOL:Lcom/explorestack/protobuf/WireFormat$FieldType;

.field public static final enum BYTES:Lcom/explorestack/protobuf/WireFormat$FieldType;

.field public static final enum DOUBLE:Lcom/explorestack/protobuf/WireFormat$FieldType;

.field public static final enum ENUM:Lcom/explorestack/protobuf/WireFormat$FieldType;

.field public static final enum FIXED32:Lcom/explorestack/protobuf/WireFormat$FieldType;

.field public static final enum FIXED64:Lcom/explorestack/protobuf/WireFormat$FieldType;

.field public static final enum FLOAT:Lcom/explorestack/protobuf/WireFormat$FieldType;

.field public static final enum GROUP:Lcom/explorestack/protobuf/WireFormat$FieldType;

.field public static final enum INT32:Lcom/explorestack/protobuf/WireFormat$FieldType;

.field public static final enum INT64:Lcom/explorestack/protobuf/WireFormat$FieldType;

.field public static final enum MESSAGE:Lcom/explorestack/protobuf/WireFormat$FieldType;

.field public static final enum SFIXED32:Lcom/explorestack/protobuf/WireFormat$FieldType;

.field public static final enum SFIXED64:Lcom/explorestack/protobuf/WireFormat$FieldType;

.field public static final enum SINT32:Lcom/explorestack/protobuf/WireFormat$FieldType;

.field public static final enum SINT64:Lcom/explorestack/protobuf/WireFormat$FieldType;

.field public static final enum STRING:Lcom/explorestack/protobuf/WireFormat$FieldType;

.field public static final enum UINT32:Lcom/explorestack/protobuf/WireFormat$FieldType;

.field public static final enum UINT64:Lcom/explorestack/protobuf/WireFormat$FieldType;


# instance fields
.field private final javaType:Lcom/explorestack/protobuf/WireFormat$JavaType;

.field private final wireType:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 112
    new-instance v0, Lcom/explorestack/protobuf/WireFormat$FieldType;

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$JavaType;->DOUBLE:Lcom/explorestack/protobuf/WireFormat$JavaType;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/explorestack/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/explorestack/protobuf/WireFormat$FieldType;->DOUBLE:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 113
    new-instance v1, Lcom/explorestack/protobuf/WireFormat$FieldType;

    sget-object v2, Lcom/explorestack/protobuf/WireFormat$JavaType;->FLOAT:Lcom/explorestack/protobuf/WireFormat$JavaType;

    const-string v5, "FLOAT"

    const/4 v6, 0x5

    invoke-direct {v1, v5, v4, v2, v6}, Lcom/explorestack/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/WireFormat$JavaType;I)V

    sput-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->FLOAT:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 114
    new-instance v2, Lcom/explorestack/protobuf/WireFormat$FieldType;

    sget-object v5, Lcom/explorestack/protobuf/WireFormat$JavaType;->LONG:Lcom/explorestack/protobuf/WireFormat$JavaType;

    const-string v7, "INT64"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v5, v3}, Lcom/explorestack/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/WireFormat$JavaType;I)V

    sput-object v2, Lcom/explorestack/protobuf/WireFormat$FieldType;->INT64:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 115
    new-instance v5, Lcom/explorestack/protobuf/WireFormat$FieldType;

    sget-object v7, Lcom/explorestack/protobuf/WireFormat$JavaType;->LONG:Lcom/explorestack/protobuf/WireFormat$JavaType;

    const-string v9, "UINT64"

    const/4 v10, 0x3

    invoke-direct {v5, v9, v10, v7, v3}, Lcom/explorestack/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/WireFormat$JavaType;I)V

    sput-object v5, Lcom/explorestack/protobuf/WireFormat$FieldType;->UINT64:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 116
    new-instance v7, Lcom/explorestack/protobuf/WireFormat$FieldType;

    sget-object v9, Lcom/explorestack/protobuf/WireFormat$JavaType;->INT:Lcom/explorestack/protobuf/WireFormat$JavaType;

    const-string v11, "INT32"

    const/4 v12, 0x4

    invoke-direct {v7, v11, v12, v9, v3}, Lcom/explorestack/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/WireFormat$JavaType;I)V

    sput-object v7, Lcom/explorestack/protobuf/WireFormat$FieldType;->INT32:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 117
    new-instance v9, Lcom/explorestack/protobuf/WireFormat$FieldType;

    sget-object v11, Lcom/explorestack/protobuf/WireFormat$JavaType;->LONG:Lcom/explorestack/protobuf/WireFormat$JavaType;

    const-string v13, "FIXED64"

    invoke-direct {v9, v13, v6, v11, v4}, Lcom/explorestack/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/WireFormat$JavaType;I)V

    sput-object v9, Lcom/explorestack/protobuf/WireFormat$FieldType;->FIXED64:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 118
    new-instance v11, Lcom/explorestack/protobuf/WireFormat$FieldType;

    sget-object v13, Lcom/explorestack/protobuf/WireFormat$JavaType;->INT:Lcom/explorestack/protobuf/WireFormat$JavaType;

    const-string v14, "FIXED32"

    const/4 v15, 0x6

    invoke-direct {v11, v14, v15, v13, v6}, Lcom/explorestack/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/WireFormat$JavaType;I)V

    sput-object v11, Lcom/explorestack/protobuf/WireFormat$FieldType;->FIXED32:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 119
    new-instance v13, Lcom/explorestack/protobuf/WireFormat$FieldType;

    sget-object v14, Lcom/explorestack/protobuf/WireFormat$JavaType;->BOOLEAN:Lcom/explorestack/protobuf/WireFormat$JavaType;

    const-string v15, "BOOL"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14, v3}, Lcom/explorestack/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/WireFormat$JavaType;I)V

    sput-object v13, Lcom/explorestack/protobuf/WireFormat$FieldType;->BOOL:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 120
    new-instance v14, Lcom/explorestack/protobuf/WireFormat$FieldType$1;

    sget-object v15, Lcom/explorestack/protobuf/WireFormat$JavaType;->STRING:Lcom/explorestack/protobuf/WireFormat$JavaType;

    const-string v12, "STRING"

    const/16 v4, 0x8

    invoke-direct {v14, v12, v4, v15, v8}, Lcom/explorestack/protobuf/WireFormat$FieldType$1;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/WireFormat$JavaType;I)V

    sput-object v14, Lcom/explorestack/protobuf/WireFormat$FieldType;->STRING:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 126
    new-instance v12, Lcom/explorestack/protobuf/WireFormat$FieldType$2;

    sget-object v15, Lcom/explorestack/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/explorestack/protobuf/WireFormat$JavaType;

    const-string v4, "GROUP"

    const/16 v6, 0x9

    invoke-direct {v12, v4, v6, v15, v10}, Lcom/explorestack/protobuf/WireFormat$FieldType$2;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/WireFormat$JavaType;I)V

    sput-object v12, Lcom/explorestack/protobuf/WireFormat$FieldType;->GROUP:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 132
    new-instance v4, Lcom/explorestack/protobuf/WireFormat$FieldType$3;

    sget-object v15, Lcom/explorestack/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/explorestack/protobuf/WireFormat$JavaType;

    const-string v6, "MESSAGE"

    const/16 v10, 0xa

    invoke-direct {v4, v6, v10, v15, v8}, Lcom/explorestack/protobuf/WireFormat$FieldType$3;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/WireFormat$JavaType;I)V

    sput-object v4, Lcom/explorestack/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 138
    new-instance v6, Lcom/explorestack/protobuf/WireFormat$FieldType$4;

    sget-object v15, Lcom/explorestack/protobuf/WireFormat$JavaType;->BYTE_STRING:Lcom/explorestack/protobuf/WireFormat$JavaType;

    const-string v10, "BYTES"

    const/16 v3, 0xb

    invoke-direct {v6, v10, v3, v15, v8}, Lcom/explorestack/protobuf/WireFormat$FieldType$4;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/WireFormat$JavaType;I)V

    sput-object v6, Lcom/explorestack/protobuf/WireFormat$FieldType;->BYTES:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 144
    new-instance v10, Lcom/explorestack/protobuf/WireFormat$FieldType;

    sget-object v15, Lcom/explorestack/protobuf/WireFormat$JavaType;->INT:Lcom/explorestack/protobuf/WireFormat$JavaType;

    const-string v3, "UINT32"

    const/16 v8, 0xc

    move-object/from16 v16, v6

    const/4 v6, 0x0

    invoke-direct {v10, v3, v8, v15, v6}, Lcom/explorestack/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/WireFormat$JavaType;I)V

    sput-object v10, Lcom/explorestack/protobuf/WireFormat$FieldType;->UINT32:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 145
    new-instance v3, Lcom/explorestack/protobuf/WireFormat$FieldType;

    sget-object v15, Lcom/explorestack/protobuf/WireFormat$JavaType;->ENUM:Lcom/explorestack/protobuf/WireFormat$JavaType;

    const-string v8, "ENUM"

    move-object/from16 v17, v10

    const/16 v10, 0xd

    invoke-direct {v3, v8, v10, v15, v6}, Lcom/explorestack/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/WireFormat$JavaType;I)V

    sput-object v3, Lcom/explorestack/protobuf/WireFormat$FieldType;->ENUM:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 146
    new-instance v6, Lcom/explorestack/protobuf/WireFormat$FieldType;

    sget-object v8, Lcom/explorestack/protobuf/WireFormat$JavaType;->INT:Lcom/explorestack/protobuf/WireFormat$JavaType;

    const-string v15, "SFIXED32"

    const/16 v10, 0xe

    move-object/from16 v18, v3

    const/4 v3, 0x5

    invoke-direct {v6, v15, v10, v8, v3}, Lcom/explorestack/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/WireFormat$JavaType;I)V

    sput-object v6, Lcom/explorestack/protobuf/WireFormat$FieldType;->SFIXED32:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 147
    new-instance v3, Lcom/explorestack/protobuf/WireFormat$FieldType;

    sget-object v8, Lcom/explorestack/protobuf/WireFormat$JavaType;->LONG:Lcom/explorestack/protobuf/WireFormat$JavaType;

    const-string v15, "SFIXED64"

    const/16 v10, 0xf

    move-object/from16 v19, v6

    const/4 v6, 0x1

    invoke-direct {v3, v15, v10, v8, v6}, Lcom/explorestack/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/WireFormat$JavaType;I)V

    sput-object v3, Lcom/explorestack/protobuf/WireFormat$FieldType;->SFIXED64:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 148
    new-instance v6, Lcom/explorestack/protobuf/WireFormat$FieldType;

    sget-object v8, Lcom/explorestack/protobuf/WireFormat$JavaType;->INT:Lcom/explorestack/protobuf/WireFormat$JavaType;

    const-string v15, "SINT32"

    const/16 v10, 0x10

    move-object/from16 v20, v3

    const/4 v3, 0x0

    invoke-direct {v6, v15, v10, v8, v3}, Lcom/explorestack/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/WireFormat$JavaType;I)V

    sput-object v6, Lcom/explorestack/protobuf/WireFormat$FieldType;->SINT32:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 149
    new-instance v8, Lcom/explorestack/protobuf/WireFormat$FieldType;

    sget-object v15, Lcom/explorestack/protobuf/WireFormat$JavaType;->LONG:Lcom/explorestack/protobuf/WireFormat$JavaType;

    const-string v10, "SINT64"

    move-object/from16 v21, v6

    const/16 v6, 0x11

    invoke-direct {v8, v10, v6, v15, v3}, Lcom/explorestack/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/WireFormat$JavaType;I)V

    sput-object v8, Lcom/explorestack/protobuf/WireFormat$FieldType;->SINT64:Lcom/explorestack/protobuf/WireFormat$FieldType;

    const/16 v10, 0x12

    new-array v10, v10, [Lcom/explorestack/protobuf/WireFormat$FieldType;

    aput-object v0, v10, v3

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    aput-object v2, v10, v0

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v14, v10, v0

    const/16 v0, 0x9

    aput-object v12, v10, v0

    const/16 v0, 0xa

    aput-object v4, v10, v0

    const/16 v0, 0xb

    aput-object v16, v10, v0

    const/16 v0, 0xc

    aput-object v17, v10, v0

    const/16 v0, 0xd

    aput-object v18, v10, v0

    const/16 v0, 0xe

    aput-object v19, v10, v0

    const/16 v0, 0xf

    aput-object v20, v10, v0

    const/16 v0, 0x10

    aput-object v21, v10, v0

    aput-object v8, v10, v6

    .line 111
    sput-object v10, Lcom/explorestack/protobuf/WireFormat$FieldType;->$VALUES:[Lcom/explorestack/protobuf/WireFormat$FieldType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/explorestack/protobuf/WireFormat$JavaType;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/WireFormat$JavaType;",
            "I)V"
        }
    .end annotation

    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 152
    iput-object p3, p0, Lcom/explorestack/protobuf/WireFormat$FieldType;->javaType:Lcom/explorestack/protobuf/WireFormat$JavaType;

    .line 153
    iput p4, p0, Lcom/explorestack/protobuf/WireFormat$FieldType;->wireType:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/explorestack/protobuf/WireFormat$JavaType;ILcom/explorestack/protobuf/WireFormat$1;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/WireFormat$JavaType;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/WireFormat$FieldType;
    .locals 1

    .line 111
    const-class v0, Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/WireFormat$FieldType;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/WireFormat$FieldType;
    .locals 1

    .line 111
    sget-object v0, Lcom/explorestack/protobuf/WireFormat$FieldType;->$VALUES:[Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/WireFormat$FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/WireFormat$FieldType;

    return-object v0
.end method


# virtual methods
.method public getJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/explorestack/protobuf/WireFormat$FieldType;->javaType:Lcom/explorestack/protobuf/WireFormat$JavaType;

    return-object v0
.end method

.method public getWireType()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/explorestack/protobuf/WireFormat$FieldType;->wireType:I

    return v0
.end method

.method public isPackable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
