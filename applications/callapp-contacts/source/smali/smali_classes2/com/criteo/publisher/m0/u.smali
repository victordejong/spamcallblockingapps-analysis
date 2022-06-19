.class public final enum Lcom/criteo/publisher/m0/u;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/criteo/publisher/m0/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/criteo/publisher/m0/u;

.field public static final enum b:Lcom/criteo/publisher/m0/u;

.field public static final enum c:Lcom/criteo/publisher/m0/u;

.field public static final enum d:Lcom/criteo/publisher/m0/u;

.field private static final synthetic e:[Lcom/criteo/publisher/m0/u;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 20
    new-instance v0, Lcom/criteo/publisher/m0/u;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/criteo/publisher/m0/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/criteo/publisher/m0/u;->a:Lcom/criteo/publisher/m0/u;

    .line 21
    new-instance v1, Lcom/criteo/publisher/m0/u;

    const-string v3, "LOADED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/criteo/publisher/m0/u;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/criteo/publisher/m0/u;->b:Lcom/criteo/publisher/m0/u;

    .line 22
    new-instance v3, Lcom/criteo/publisher/m0/u;

    const-string v5, "FAILED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/criteo/publisher/m0/u;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/criteo/publisher/m0/u;->c:Lcom/criteo/publisher/m0/u;

    .line 23
    new-instance v5, Lcom/criteo/publisher/m0/u;

    const-string v7, "LOADING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/criteo/publisher/m0/u;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/criteo/publisher/m0/u;->d:Lcom/criteo/publisher/m0/u;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/criteo/publisher/m0/u;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 19
    sput-object v7, Lcom/criteo/publisher/m0/u;->e:[Lcom/criteo/publisher/m0/u;

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

.method public static valueOf(Ljava/lang/String;)Lcom/criteo/publisher/m0/u;
    .locals 1

    .line 19
    const-class v0, Lcom/criteo/publisher/m0/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/criteo/publisher/m0/u;

    return-object p0
.end method

.method public static values()[Lcom/criteo/publisher/m0/u;
    .locals 1

    .line 19
    sget-object v0, Lcom/criteo/publisher/m0/u;->e:[Lcom/criteo/publisher/m0/u;

    invoke-virtual {v0}, [Lcom/criteo/publisher/m0/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/criteo/publisher/m0/u;

    return-object v0
.end method
