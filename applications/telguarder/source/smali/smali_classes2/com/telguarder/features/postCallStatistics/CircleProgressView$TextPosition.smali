.class public final enum Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;
.super Ljava/lang/Enum;
.source "CircleProgressView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/postCallStatistics/CircleProgressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

.field public static final enum leftDown:Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

.field public static final enum leftUp:Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

.field public static final enum middle:Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

.field public static final enum middleDown:Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

.field public static final enum middleUp:Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

.field public static final enum rightDown:Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

.field public static final enum rightUp:Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 71
    new-instance v0, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

    const-string v1, "leftUp"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;->leftUp:Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

    new-instance v1, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

    const-string v3, "rightUp"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;->rightUp:Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

    new-instance v3, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

    const-string v5, "leftDown"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;->leftDown:Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

    new-instance v5, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

    const-string v7, "rightDown"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;->rightDown:Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

    new-instance v7, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

    const-string v9, "middleUp"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;->middleUp:Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

    new-instance v9, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

    const-string v11, "middleDown"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;->middleDown:Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

    new-instance v11, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

    const-string v13, "middle"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;->middle:Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;->$VALUES:[Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;
    .locals 1

    .line 71
    const-class v0, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

    return-object p0
.end method

.method public static values()[Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;
    .locals 1

    .line 71
    sget-object v0, Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;->$VALUES:[Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

    invoke-virtual {v0}, [Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/telguarder/features/postCallStatistics/CircleProgressView$TextPosition;

    return-object v0
.end method
