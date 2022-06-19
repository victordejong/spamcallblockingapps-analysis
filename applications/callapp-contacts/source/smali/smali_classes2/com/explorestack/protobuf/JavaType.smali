.class public final enum Lcom/explorestack/protobuf/JavaType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/JavaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/JavaType;

.field public static final enum BOOLEAN:Lcom/explorestack/protobuf/JavaType;

.field public static final enum BYTE_STRING:Lcom/explorestack/protobuf/JavaType;

.field public static final enum DOUBLE:Lcom/explorestack/protobuf/JavaType;

.field public static final enum ENUM:Lcom/explorestack/protobuf/JavaType;

.field public static final enum FLOAT:Lcom/explorestack/protobuf/JavaType;

.field public static final enum INT:Lcom/explorestack/protobuf/JavaType;

.field public static final enum LONG:Lcom/explorestack/protobuf/JavaType;

.field public static final enum MESSAGE:Lcom/explorestack/protobuf/JavaType;

.field public static final enum STRING:Lcom/explorestack/protobuf/JavaType;

.field public static final enum VOID:Lcom/explorestack/protobuf/JavaType;


# instance fields
.field private final boxedType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final defaultDefault:Ljava/lang/Object;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 36
    new-instance v6, Lcom/explorestack/protobuf/JavaType;

    const-class v3, Ljava/lang/Void;

    const-class v4, Ljava/lang/Void;

    const-string v1, "VOID"

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/explorestack/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v6, Lcom/explorestack/protobuf/JavaType;->VOID:Lcom/explorestack/protobuf/JavaType;

    .line 37
    new-instance v0, Lcom/explorestack/protobuf/JavaType;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v11, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v8, "INT"

    const/4 v9, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/explorestack/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/explorestack/protobuf/JavaType;->INT:Lcom/explorestack/protobuf/JavaType;

    .line 38
    new-instance v2, Lcom/explorestack/protobuf/JavaType;

    sget-object v16, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v17, Ljava/lang/Long;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v14, "LONG"

    const/4 v15, 0x2

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lcom/explorestack/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v2, Lcom/explorestack/protobuf/JavaType;->LONG:Lcom/explorestack/protobuf/JavaType;

    .line 39
    new-instance v3, Lcom/explorestack/protobuf/JavaType;

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v11, Ljava/lang/Float;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const-string v8, "FLOAT"

    const/4 v9, 0x3

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/explorestack/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v3, Lcom/explorestack/protobuf/JavaType;->FLOAT:Lcom/explorestack/protobuf/JavaType;

    .line 40
    new-instance v4, Lcom/explorestack/protobuf/JavaType;

    sget-object v16, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v17, Ljava/lang/Double;

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    const-string v14, "DOUBLE"

    const/4 v15, 0x4

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lcom/explorestack/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v4, Lcom/explorestack/protobuf/JavaType;->DOUBLE:Lcom/explorestack/protobuf/JavaType;

    .line 41
    new-instance v5, Lcom/explorestack/protobuf/JavaType;

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v11, Ljava/lang/Boolean;

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v8, "BOOLEAN"

    const/4 v9, 0x5

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/explorestack/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v5, Lcom/explorestack/protobuf/JavaType;->BOOLEAN:Lcom/explorestack/protobuf/JavaType;

    .line 42
    new-instance v7, Lcom/explorestack/protobuf/JavaType;

    const-class v16, Ljava/lang/String;

    const-class v17, Ljava/lang/String;

    const-string v14, "STRING"

    const/4 v15, 0x6

    const-string v18, ""

    move-object v13, v7

    invoke-direct/range {v13 .. v18}, Lcom/explorestack/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v7, Lcom/explorestack/protobuf/JavaType;->STRING:Lcom/explorestack/protobuf/JavaType;

    .line 43
    new-instance v14, Lcom/explorestack/protobuf/JavaType;

    const-class v11, Lcom/explorestack/protobuf/ByteString;

    const-class v12, Lcom/explorestack/protobuf/ByteString;

    sget-object v13, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    const-string v9, "BYTE_STRING"

    const/4 v10, 0x7

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lcom/explorestack/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v14, Lcom/explorestack/protobuf/JavaType;->BYTE_STRING:Lcom/explorestack/protobuf/JavaType;

    .line 44
    new-instance v8, Lcom/explorestack/protobuf/JavaType;

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v19, Ljava/lang/Integer;

    const-string v16, "ENUM"

    const/16 v17, 0x8

    const/16 v20, 0x0

    move-object v15, v8

    invoke-direct/range {v15 .. v20}, Lcom/explorestack/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v8, Lcom/explorestack/protobuf/JavaType;->ENUM:Lcom/explorestack/protobuf/JavaType;

    .line 45
    new-instance v9, Lcom/explorestack/protobuf/JavaType;

    const-class v24, Ljava/lang/Object;

    const-class v25, Ljava/lang/Object;

    const-string v22, "MESSAGE"

    const/16 v23, 0x9

    const/16 v26, 0x0

    move-object/from16 v21, v9

    invoke-direct/range {v21 .. v26}, Lcom/explorestack/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v9, Lcom/explorestack/protobuf/JavaType;->MESSAGE:Lcom/explorestack/protobuf/JavaType;

    const/16 v10, 0xa

    new-array v10, v10, [Lcom/explorestack/protobuf/JavaType;

    aput-object v6, v10, v1

    const/4 v1, 0x1

    aput-object v0, v10, v1

    const/4 v0, 0x2

    aput-object v2, v10, v0

    const/4 v0, 0x3

    aput-object v3, v10, v0

    const/4 v0, 0x4

    aput-object v4, v10, v0

    const/4 v0, 0x5

    aput-object v5, v10, v0

    const/4 v0, 0x6

    aput-object v7, v10, v0

    const/4 v0, 0x7

    aput-object v14, v10, v0

    const/16 v0, 0x8

    aput-object v8, v10, v0

    const/16 v0, 0x9

    aput-object v9, v10, v0

    .line 34
    sput-object v10, Lcom/explorestack/protobuf/JavaType;->$VALUES:[Lcom/explorestack/protobuf/JavaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, Lcom/explorestack/protobuf/JavaType;->type:Ljava/lang/Class;

    .line 53
    iput-object p4, p0, Lcom/explorestack/protobuf/JavaType;->boxedType:Ljava/lang/Class;

    .line 54
    iput-object p5, p0, Lcom/explorestack/protobuf/JavaType;->defaultDefault:Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/JavaType;
    .locals 1

    .line 34
    const-class v0, Lcom/explorestack/protobuf/JavaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/JavaType;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/JavaType;
    .locals 1

    .line 34
    sget-object v0, Lcom/explorestack/protobuf/JavaType;->$VALUES:[Lcom/explorestack/protobuf/JavaType;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/JavaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/JavaType;

    return-object v0
.end method


# virtual methods
.method public final getBoxedType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/explorestack/protobuf/JavaType;->boxedType:Ljava/lang/Class;

    return-object v0
.end method

.method public final getDefaultDefault()Ljava/lang/Object;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/explorestack/protobuf/JavaType;->defaultDefault:Ljava/lang/Object;

    return-object v0
.end method

.method public final getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/explorestack/protobuf/JavaType;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public final isValidType(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/explorestack/protobuf/JavaType;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method
