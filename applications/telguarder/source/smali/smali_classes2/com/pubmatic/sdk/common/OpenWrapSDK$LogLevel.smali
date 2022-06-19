.class public final enum Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/OpenWrapSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum All:Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

.field public static final enum Debug:Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

.field public static final enum Error:Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

.field public static final enum Info:Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

.field public static final enum Off:Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

.field public static final enum Verbose:Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

.field public static final enum Warn:Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

.field private static final synthetic b:[Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;


# instance fields
.field final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    const-string v1, "All"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;->All:Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    new-instance v1, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    const-string v3, "Verbose"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;->Verbose:Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    new-instance v3, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    const-string v5, "Debug"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;->Debug:Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    new-instance v5, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    const-string v7, "Info"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;->Info:Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    new-instance v7, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    const-string v9, "Warn"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;->Warn:Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    new-instance v9, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    const-string v11, "Error"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;->Error:Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    new-instance v11, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    const-string v13, "Off"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;->Off:Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;->b:[Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;
    .locals 1

    const-class v0, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;->b:[Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;

    return-object v0
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;->a:I

    return v0
.end method
