.class public enum Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

.field public static final enum BOOL:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

.field public static final enum BYTES:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

.field public static final enum DOUBLE:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

.field public static final enum ENUM:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

.field public static final enum FIXED32:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

.field public static final enum FIXED64:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

.field public static final enum FLOAT:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

.field public static final enum GROUP:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

.field public static final enum INT32:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

.field public static final enum INT64:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

.field public static final enum MESSAGE:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

.field public static final enum SFIXED32:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

.field public static final enum SFIXED64:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

.field public static final enum SINT32:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

.field public static final enum SINT64:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

.field public static final enum STRING:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

.field public static final enum UINT32:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

.field public static final enum UINT64:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;


# instance fields
.field private final javaType:Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

.field private final wireType:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 108
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;->DOUBLE:Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/x$b;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->DOUBLE:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    .line 109
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;->FLOAT:Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    const-string v5, "FLOAT"

    const/4 v6, 0x5

    invoke-direct {v1, v5, v4, v2, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/x$b;I)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->FLOAT:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    .line 110
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;->LONG:Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    const-string v7, "INT64"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v5, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/x$b;I)V

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->INT64:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    .line 111
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;->LONG:Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    const-string v9, "UINT64"

    const/4 v10, 0x3

    invoke-direct {v5, v9, v10, v7, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/x$b;I)V

    sput-object v5, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->UINT64:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    .line 112
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;->INT:Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    const-string v11, "INT32"

    const/4 v12, 0x4

    invoke-direct {v7, v11, v12, v9, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/x$b;I)V

    sput-object v7, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->INT32:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    .line 113
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;->LONG:Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    const-string v13, "FIXED64"

    invoke-direct {v9, v13, v6, v11, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/x$b;I)V

    sput-object v9, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->FIXED64:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    .line 114
    new-instance v11, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;->INT:Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    const-string v14, "FIXED32"

    const/4 v15, 0x6

    invoke-direct {v11, v14, v15, v13, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/x$b;I)V

    sput-object v11, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->FIXED32:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    .line 115
    new-instance v13, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    sget-object v14, Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    const-string v15, "BOOL"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/x$b;I)V

    sput-object v13, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->BOOL:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    .line 116
    new-instance v14, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a$1;

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;->STRING:Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    const-string v12, "STRING"

    const/16 v4, 0x8

    invoke-direct {v14, v12, v4, v15, v8}, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a$1;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/x$b;I)V

    sput-object v14, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->STRING:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    .line 119
    new-instance v12, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a$2;

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;->MESSAGE:Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    const-string v4, "GROUP"

    const/16 v6, 0x9

    invoke-direct {v12, v4, v6, v15, v10}, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a$2;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/x$b;I)V

    sput-object v12, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->GROUP:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    .line 122
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a$3;

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;->MESSAGE:Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    const-string v6, "MESSAGE"

    const/16 v10, 0xa

    invoke-direct {v4, v6, v10, v15, v8}, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a$3;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/x$b;I)V

    sput-object v4, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->MESSAGE:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    .line 125
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a$4;

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;->BYTE_STRING:Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    const-string v10, "BYTES"

    const/16 v3, 0xb

    invoke-direct {v6, v10, v3, v15, v8}, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a$4;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/x$b;I)V

    sput-object v6, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->BYTES:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    .line 128
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;->INT:Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    const-string v3, "UINT32"

    const/16 v8, 0xc

    move-object/from16 v16, v6

    const/4 v6, 0x0

    invoke-direct {v10, v3, v8, v15, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/x$b;I)V

    sput-object v10, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->UINT32:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    .line 129
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;->ENUM:Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    const-string v8, "ENUM"

    move-object/from16 v17, v10

    const/16 v10, 0xd

    invoke-direct {v3, v8, v10, v15, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/x$b;I)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->ENUM:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    .line 130
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;->INT:Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    const-string v15, "SFIXED32"

    const/16 v10, 0xe

    move-object/from16 v18, v3

    const/4 v3, 0x5

    invoke-direct {v6, v15, v10, v8, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/x$b;I)V

    sput-object v6, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->SFIXED32:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    .line 131
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;->LONG:Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    const-string v15, "SFIXED64"

    const/16 v10, 0xf

    move-object/from16 v19, v6

    const/4 v6, 0x1

    invoke-direct {v3, v15, v10, v8, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/x$b;I)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->SFIXED64:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    .line 132
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;->INT:Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    const-string v15, "SINT32"

    const/16 v10, 0x10

    move-object/from16 v20, v3

    const/4 v3, 0x0

    invoke-direct {v6, v15, v10, v8, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/x$b;I)V

    sput-object v6, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->SINT32:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    .line 133
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;->LONG:Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    const-string v10, "SINT64"

    move-object/from16 v21, v6

    const/16 v6, 0x11

    invoke-direct {v8, v10, v6, v15, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/x$b;I)V

    sput-object v8, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->SINT64:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    const/16 v10, 0x12

    new-array v10, v10, [Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

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

    .line 107
    sput-object v10, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/x$b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;",
            "I)V"
        }
    .end annotation

    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 136
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->javaType:Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    .line 137
    iput p4, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->wireType:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/x$b;ILkotlin/reflect/jvm/internal/impl/protobuf/x$1;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/x$b;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;
    .locals 1

    .line 107
    const-class v0, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;
    .locals 1

    .line 107
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    invoke-virtual {v0}, [Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    return-object v0
.end method


# virtual methods
.method public getJavaType()Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;
    .locals 1

    .line 143
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->javaType:Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    return-object v0
.end method

.method public getWireType()I
    .locals 1

    .line 144
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->wireType:I

    return v0
.end method

.method public isPackable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
