.class public final enum Lcom/androidplot/ui/Anchor;
.super Ljava/lang/Enum;
.source "Anchor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androidplot/ui/Anchor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/ui/Anchor;

.field public static final enum BOTTOM_MIDDLE:Lcom/androidplot/ui/Anchor;

.field public static final enum CENTER:Lcom/androidplot/ui/Anchor;

.field public static final enum LEFT_BOTTOM:Lcom/androidplot/ui/Anchor;

.field public static final enum LEFT_MIDDLE:Lcom/androidplot/ui/Anchor;

.field public static final enum LEFT_TOP:Lcom/androidplot/ui/Anchor;

.field public static final enum RIGHT_BOTTOM:Lcom/androidplot/ui/Anchor;

.field public static final enum RIGHT_MIDDLE:Lcom/androidplot/ui/Anchor;

.field public static final enum RIGHT_TOP:Lcom/androidplot/ui/Anchor;

.field public static final enum TOP_MIDDLE:Lcom/androidplot/ui/Anchor;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 24
    new-instance v0, Lcom/androidplot/ui/Anchor;

    const-string v1, "TOP_MIDDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androidplot/ui/Anchor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/Anchor;->TOP_MIDDLE:Lcom/androidplot/ui/Anchor;

    .line 25
    new-instance v1, Lcom/androidplot/ui/Anchor;

    const-string v3, "LEFT_TOP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/androidplot/ui/Anchor;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/androidplot/ui/Anchor;->LEFT_TOP:Lcom/androidplot/ui/Anchor;

    .line 26
    new-instance v3, Lcom/androidplot/ui/Anchor;

    const-string v5, "LEFT_MIDDLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/androidplot/ui/Anchor;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/androidplot/ui/Anchor;->LEFT_MIDDLE:Lcom/androidplot/ui/Anchor;

    .line 27
    new-instance v5, Lcom/androidplot/ui/Anchor;

    const-string v7, "LEFT_BOTTOM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/androidplot/ui/Anchor;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/androidplot/ui/Anchor;->LEFT_BOTTOM:Lcom/androidplot/ui/Anchor;

    .line 28
    new-instance v7, Lcom/androidplot/ui/Anchor;

    const-string v9, "RIGHT_TOP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/androidplot/ui/Anchor;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/androidplot/ui/Anchor;->RIGHT_TOP:Lcom/androidplot/ui/Anchor;

    .line 29
    new-instance v9, Lcom/androidplot/ui/Anchor;

    const-string v11, "RIGHT_MIDDLE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/androidplot/ui/Anchor;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/androidplot/ui/Anchor;->RIGHT_MIDDLE:Lcom/androidplot/ui/Anchor;

    .line 30
    new-instance v11, Lcom/androidplot/ui/Anchor;

    const-string v13, "RIGHT_BOTTOM"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/androidplot/ui/Anchor;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/androidplot/ui/Anchor;->RIGHT_BOTTOM:Lcom/androidplot/ui/Anchor;

    .line 31
    new-instance v13, Lcom/androidplot/ui/Anchor;

    const-string v15, "BOTTOM_MIDDLE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/androidplot/ui/Anchor;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/androidplot/ui/Anchor;->BOTTOM_MIDDLE:Lcom/androidplot/ui/Anchor;

    .line 32
    new-instance v15, Lcom/androidplot/ui/Anchor;

    const-string v14, "CENTER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/androidplot/ui/Anchor;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/androidplot/ui/Anchor;->CENTER:Lcom/androidplot/ui/Anchor;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/androidplot/ui/Anchor;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 23
    sput-object v14, Lcom/androidplot/ui/Anchor;->$VALUES:[Lcom/androidplot/ui/Anchor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/ui/Anchor;
    .locals 1

    .line 23
    const-class v0, Lcom/androidplot/ui/Anchor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androidplot/ui/Anchor;

    return-object p0
.end method

.method public static values()[Lcom/androidplot/ui/Anchor;
    .locals 1

    .line 23
    sget-object v0, Lcom/androidplot/ui/Anchor;->$VALUES:[Lcom/androidplot/ui/Anchor;

    invoke-virtual {v0}, [Lcom/androidplot/ui/Anchor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/ui/Anchor;

    return-object v0
.end method
