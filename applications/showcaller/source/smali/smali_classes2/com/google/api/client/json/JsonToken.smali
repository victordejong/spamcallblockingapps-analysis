.class public final enum Lcom/google/api/client/json/JsonToken;
.super Ljava/lang/Enum;
.source "JsonToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/api/client/json/JsonToken;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lcom/google/api/client/json/JsonToken;

.field public static final enum e:Lcom/google/api/client/json/JsonToken;

.field public static final enum f:Lcom/google/api/client/json/JsonToken;

.field public static final enum g:Lcom/google/api/client/json/JsonToken;

.field public static final enum h:Lcom/google/api/client/json/JsonToken;

.field public static final enum i:Lcom/google/api/client/json/JsonToken;

.field public static final enum j:Lcom/google/api/client/json/JsonToken;

.field public static final enum k:Lcom/google/api/client/json/JsonToken;

.field public static final enum l:Lcom/google/api/client/json/JsonToken;

.field public static final enum m:Lcom/google/api/client/json/JsonToken;

.field public static final enum n:Lcom/google/api/client/json/JsonToken;

.field public static final enum o:Lcom/google/api/client/json/JsonToken;

.field private static final synthetic p:[Lcom/google/api/client/json/JsonToken;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/api/client/json/JsonToken;

    const-string v1, "START_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/json/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/json/JsonToken;->d:Lcom/google/api/client/json/JsonToken;

    .line 2
    new-instance v1, Lcom/google/api/client/json/JsonToken;

    const-string v3, "END_ARRAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/api/client/json/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/api/client/json/JsonToken;->e:Lcom/google/api/client/json/JsonToken;

    .line 3
    new-instance v3, Lcom/google/api/client/json/JsonToken;

    const-string v5, "START_OBJECT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/api/client/json/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/api/client/json/JsonToken;->f:Lcom/google/api/client/json/JsonToken;

    .line 4
    new-instance v5, Lcom/google/api/client/json/JsonToken;

    const-string v7, "END_OBJECT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/api/client/json/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/api/client/json/JsonToken;->g:Lcom/google/api/client/json/JsonToken;

    .line 5
    new-instance v7, Lcom/google/api/client/json/JsonToken;

    const-string v9, "FIELD_NAME"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/api/client/json/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/api/client/json/JsonToken;->h:Lcom/google/api/client/json/JsonToken;

    .line 6
    new-instance v9, Lcom/google/api/client/json/JsonToken;

    const-string v11, "VALUE_STRING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/api/client/json/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/api/client/json/JsonToken;->i:Lcom/google/api/client/json/JsonToken;

    .line 7
    new-instance v11, Lcom/google/api/client/json/JsonToken;

    const-string v13, "VALUE_NUMBER_INT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/google/api/client/json/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/api/client/json/JsonToken;->j:Lcom/google/api/client/json/JsonToken;

    .line 8
    new-instance v13, Lcom/google/api/client/json/JsonToken;

    const-string v15, "VALUE_NUMBER_FLOAT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/google/api/client/json/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/google/api/client/json/JsonToken;->k:Lcom/google/api/client/json/JsonToken;

    .line 9
    new-instance v15, Lcom/google/api/client/json/JsonToken;

    const-string v14, "VALUE_TRUE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/google/api/client/json/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/google/api/client/json/JsonToken;->l:Lcom/google/api/client/json/JsonToken;

    .line 10
    new-instance v14, Lcom/google/api/client/json/JsonToken;

    const-string v12, "VALUE_FALSE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/google/api/client/json/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/google/api/client/json/JsonToken;->m:Lcom/google/api/client/json/JsonToken;

    .line 11
    new-instance v12, Lcom/google/api/client/json/JsonToken;

    const-string v10, "VALUE_NULL"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/google/api/client/json/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/google/api/client/json/JsonToken;->n:Lcom/google/api/client/json/JsonToken;

    .line 12
    new-instance v10, Lcom/google/api/client/json/JsonToken;

    const-string v8, "NOT_AVAILABLE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/google/api/client/json/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/google/api/client/json/JsonToken;->o:Lcom/google/api/client/json/JsonToken;

    const/16 v8, 0xc

    new-array v8, v8, [Lcom/google/api/client/json/JsonToken;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    .line 13
    sput-object v8, Lcom/google/api/client/json/JsonToken;->p:[Lcom/google/api/client/json/JsonToken;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/client/json/JsonToken;
    .locals 1

    .line 1
    const-class v0, Lcom/google/api/client/json/JsonToken;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/api/client/json/JsonToken;

    return-object p0
.end method

.method public static values()[Lcom/google/api/client/json/JsonToken;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/client/json/JsonToken;->p:[Lcom/google/api/client/json/JsonToken;

    invoke-virtual {v0}, [Lcom/google/api/client/json/JsonToken;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/client/json/JsonToken;

    return-object v0
.end method
