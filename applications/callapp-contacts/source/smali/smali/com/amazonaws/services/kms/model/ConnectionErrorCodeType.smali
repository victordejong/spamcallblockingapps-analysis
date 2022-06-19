.class public final enum Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

.field public static final enum CLUSTER_NOT_FOUND:Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

.field public static final enum INSUFFICIENT_CLOUDHSM_HSMS:Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

.field public static final enum INTERNAL_ERROR:Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

.field public static final enum INVALID_CREDENTIALS:Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

.field public static final enum NETWORK_ERRORS:Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

.field public static final enum SUBNET_NOT_FOUND:Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

.field public static final enum USER_LOCKED_OUT:Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

.field public static final enum USER_LOGGED_IN:Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

.field public static final enum USER_NOT_FOUND:Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

.field private static final enumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 26
    new-instance v0, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

    const-string v1, "INVALID_CREDENTIALS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;->INVALID_CREDENTIALS:Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

    .line 27
    new-instance v3, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

    const-string v4, "CLUSTER_NOT_FOUND"

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5, v4}, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;->CLUSTER_NOT_FOUND:Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

    .line 28
    new-instance v6, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

    const-string v7, "NETWORK_ERRORS"

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8, v7}, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;->NETWORK_ERRORS:Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

    .line 29
    new-instance v9, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

    const-string v10, "INTERNAL_ERROR"

    const/4 v11, 0x3

    invoke-direct {v9, v10, v11, v10}, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;->INTERNAL_ERROR:Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

    .line 30
    new-instance v12, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

    const-string v13, "INSUFFICIENT_CLOUDHSM_HSMS"

    const/4 v14, 0x4

    invoke-direct {v12, v13, v14, v13}, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;->INSUFFICIENT_CLOUDHSM_HSMS:Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

    .line 31
    new-instance v15, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

    const-string v14, "USER_LOCKED_OUT"

    const/4 v11, 0x5

    invoke-direct {v15, v14, v11, v14}, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;->USER_LOCKED_OUT:Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

    .line 32
    new-instance v11, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

    const-string v8, "USER_NOT_FOUND"

    const/4 v5, 0x6

    invoke-direct {v11, v8, v5, v8}, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;->USER_NOT_FOUND:Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

    .line 33
    new-instance v5, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

    const-string v2, "USER_LOGGED_IN"

    move-object/from16 v21, v8

    const/4 v8, 0x7

    invoke-direct {v5, v2, v8, v2}, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;->USER_LOGGED_IN:Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

    .line 34
    new-instance v8, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

    move-object/from16 v22, v2

    const-string v2, "SUBNET_NOT_FOUND"

    move-object/from16 v23, v14

    const/16 v14, 0x8

    invoke-direct {v8, v2, v14, v2}, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;->SUBNET_NOT_FOUND:Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

    const/16 v20, 0x0

    aput-object v0, v14, v20

    const/16 v19, 0x1

    aput-object v3, v14, v19

    const/16 v18, 0x2

    aput-object v6, v14, v18

    const/16 v17, 0x3

    aput-object v9, v14, v17

    const/16 v16, 0x4

    aput-object v12, v14, v16

    const/16 v16, 0x5

    aput-object v15, v14, v16

    const/16 v16, 0x6

    aput-object v11, v14, v16

    const/16 v16, 0x7

    aput-object v5, v14, v16

    const/16 v16, 0x8

    aput-object v8, v14, v16

    .line 24
    sput-object v14, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;->$VALUES:[Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

    .line 49
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 50
    sput-object v14, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;->enumMap:Ljava/util/Map;

    invoke-interface {v14, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-interface {v14, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-interface {v14, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-interface {v14, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-interface {v14, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v23

    .line 55
    invoke-interface {v14, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v21

    .line 56
    invoke-interface {v14, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v22

    .line 57
    invoke-interface {v14, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-interface {v14, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;
    .locals 3

    if-eqz p0, :cond_1

    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    sget-object v0, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;->enumMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

    return-object p0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot create enum from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " value!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value cannot be null or empty!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;
    .locals 1

    .line 24
    const-class v0, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;
    .locals 1

    .line 24
    sget-object v0, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;->$VALUES:[Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

    invoke-virtual {v0}, [Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ConnectionErrorCodeType;->value:Ljava/lang/String;

    return-object v0
.end method
