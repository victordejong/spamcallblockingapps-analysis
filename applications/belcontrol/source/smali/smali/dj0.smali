.class public final enum Ldj0;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldj0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ldj0;

.field public static final enum b:Ldj0;

.field public static final enum c:Ldj0;

.field public static final enum d:Ldj0;

.field public static final enum f:Ldj0;

.field public static final enum g:Ldj0;

.field public static final enum h:Ldj0;

.field public static final enum j:Ldj0;

.field public static final synthetic k:[Ldj0;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Ldj0;

    const-string v1, "REQUESTS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldj0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldj0;->a:Ldj0;

    new-instance v1, Ldj0;

    const-string v3, "INCLUDE_ACCESS_TOKENS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ldj0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldj0;->b:Ldj0;

    new-instance v3, Ldj0;

    const-string v5, "INCLUDE_RAW_RESPONSES"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ldj0;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ldj0;->c:Ldj0;

    new-instance v5, Ldj0;

    const-string v7, "CACHE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ldj0;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ldj0;->d:Ldj0;

    new-instance v7, Ldj0;

    const-string v9, "APP_EVENTS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ldj0;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ldj0;->f:Ldj0;

    new-instance v9, Ldj0;

    const-string v11, "DEVELOPER_ERRORS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ldj0;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ldj0;->g:Ldj0;

    new-instance v11, Ldj0;

    const-string v13, "GRAPH_API_DEBUG_WARNING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ldj0;-><init>(Ljava/lang/String;I)V

    sput-object v11, Ldj0;->h:Ldj0;

    new-instance v13, Ldj0;

    const-string v15, "GRAPH_API_DEBUG_INFO"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Ldj0;-><init>(Ljava/lang/String;I)V

    sput-object v13, Ldj0;->j:Ldj0;

    const/16 v15, 0x8

    new-array v15, v15, [Ldj0;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Ldj0;->k:[Ldj0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldj0;
    .locals 1

    const-class v0, Ldj0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldj0;

    return-object p0
.end method

.method public static values()[Ldj0;
    .locals 1

    sget-object v0, Ldj0;->k:[Ldj0;

    invoke-virtual {v0}, [Ldj0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldj0;

    return-object v0
.end method
