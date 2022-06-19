.class public final enum Lcom/callerid/block/customview/ScrollState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callerid/block/customview/ScrollState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/callerid/block/customview/ScrollState;

.field public static final enum c:Lcom/callerid/block/customview/ScrollState;

.field public static final enum d:Lcom/callerid/block/customview/ScrollState;

.field private static final synthetic e:[Lcom/callerid/block/customview/ScrollState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/callerid/block/customview/ScrollState;

    const-string v1, "STOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callerid/block/customview/ScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callerid/block/customview/ScrollState;->b:Lcom/callerid/block/customview/ScrollState;

    new-instance v1, Lcom/callerid/block/customview/ScrollState;

    const-string v3, "UP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callerid/block/customview/ScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callerid/block/customview/ScrollState;->c:Lcom/callerid/block/customview/ScrollState;

    new-instance v3, Lcom/callerid/block/customview/ScrollState;

    const-string v5, "DOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/callerid/block/customview/ScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/callerid/block/customview/ScrollState;->d:Lcom/callerid/block/customview/ScrollState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/callerid/block/customview/ScrollState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/callerid/block/customview/ScrollState;->e:[Lcom/callerid/block/customview/ScrollState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callerid/block/customview/ScrollState;
    .locals 1

    const-class v0, Lcom/callerid/block/customview/ScrollState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callerid/block/customview/ScrollState;

    return-object p0
.end method

.method public static values()[Lcom/callerid/block/customview/ScrollState;
    .locals 1

    sget-object v0, Lcom/callerid/block/customview/ScrollState;->e:[Lcom/callerid/block/customview/ScrollState;

    invoke-virtual {v0}, [Lcom/callerid/block/customview/ScrollState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callerid/block/customview/ScrollState;

    return-object v0
.end method
