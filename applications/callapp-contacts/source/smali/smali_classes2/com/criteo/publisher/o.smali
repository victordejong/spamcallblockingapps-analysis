.class public final enum Lcom/criteo/publisher/o;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/criteo/publisher/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/criteo/publisher/o;

.field public static final enum b:Lcom/criteo/publisher/o;

.field public static final enum c:Lcom/criteo/publisher/o;

.field public static final enum d:Lcom/criteo/publisher/o;

.field public static final enum e:Lcom/criteo/publisher/o;

.field public static final enum f:Lcom/criteo/publisher/o;

.field private static final synthetic g:[Lcom/criteo/publisher/o;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 20
    new-instance v0, Lcom/criteo/publisher/o;

    const-string v1, "VALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/criteo/publisher/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/criteo/publisher/o;->a:Lcom/criteo/publisher/o;

    .line 21
    new-instance v1, Lcom/criteo/publisher/o;

    const-string v3, "INVALID"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/criteo/publisher/o;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/criteo/publisher/o;->b:Lcom/criteo/publisher/o;

    .line 22
    new-instance v3, Lcom/criteo/publisher/o;

    const-string v5, "INVALID_CREATIVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/criteo/publisher/o;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/criteo/publisher/o;->c:Lcom/criteo/publisher/o;

    .line 23
    new-instance v5, Lcom/criteo/publisher/o;

    const-string v7, "CLICK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/criteo/publisher/o;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/criteo/publisher/o;->d:Lcom/criteo/publisher/o;

    .line 24
    new-instance v7, Lcom/criteo/publisher/o;

    const-string v9, "CLOSE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/criteo/publisher/o;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/criteo/publisher/o;->e:Lcom/criteo/publisher/o;

    .line 25
    new-instance v9, Lcom/criteo/publisher/o;

    const-string v11, "OPEN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/criteo/publisher/o;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/criteo/publisher/o;->f:Lcom/criteo/publisher/o;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/criteo/publisher/o;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 19
    sput-object v11, Lcom/criteo/publisher/o;->g:[Lcom/criteo/publisher/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/criteo/publisher/o;
    .locals 1

    .line 19
    const-class v0, Lcom/criteo/publisher/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/criteo/publisher/o;

    return-object p0
.end method

.method public static values()[Lcom/criteo/publisher/o;
    .locals 1

    .line 19
    sget-object v0, Lcom/criteo/publisher/o;->g:[Lcom/criteo/publisher/o;

    invoke-virtual {v0}, [Lcom/criteo/publisher/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/criteo/publisher/o;

    return-object v0
.end method
