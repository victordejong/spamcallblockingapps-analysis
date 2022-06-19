.class public final enum Lcom/explorestack/iab/utils/Logger$LogLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/utils/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/iab/utils/Logger$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/iab/utils/Logger$LogLevel;

.field public static final enum debug:Lcom/explorestack/iab/utils/Logger$LogLevel;

.field public static final enum error:Lcom/explorestack/iab/utils/Logger$LogLevel;

.field public static final enum info:Lcom/explorestack/iab/utils/Logger$LogLevel;

.field public static final enum none:Lcom/explorestack/iab/utils/Logger$LogLevel;

.field public static final enum warning:Lcom/explorestack/iab/utils/Logger$LogLevel;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 85
    new-instance v0, Lcom/explorestack/iab/utils/Logger$LogLevel;

    const-string v1, "debug"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/iab/utils/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/iab/utils/Logger$LogLevel;->debug:Lcom/explorestack/iab/utils/Logger$LogLevel;

    .line 86
    new-instance v1, Lcom/explorestack/iab/utils/Logger$LogLevel;

    const-string v4, "info"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/explorestack/iab/utils/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/iab/utils/Logger$LogLevel;->info:Lcom/explorestack/iab/utils/Logger$LogLevel;

    .line 87
    new-instance v4, Lcom/explorestack/iab/utils/Logger$LogLevel;

    const-string v6, "warning"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/explorestack/iab/utils/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/explorestack/iab/utils/Logger$LogLevel;->warning:Lcom/explorestack/iab/utils/Logger$LogLevel;

    .line 88
    new-instance v6, Lcom/explorestack/iab/utils/Logger$LogLevel;

    const-string v8, "error"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/explorestack/iab/utils/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/explorestack/iab/utils/Logger$LogLevel;->error:Lcom/explorestack/iab/utils/Logger$LogLevel;

    .line 89
    new-instance v8, Lcom/explorestack/iab/utils/Logger$LogLevel;

    const-string v10, "none"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/explorestack/iab/utils/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/explorestack/iab/utils/Logger$LogLevel;->none:Lcom/explorestack/iab/utils/Logger$LogLevel;

    new-array v10, v11, [Lcom/explorestack/iab/utils/Logger$LogLevel;

    aput-object v0, v10, v2

    aput-object v1, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    .line 83
    sput-object v10, Lcom/explorestack/iab/utils/Logger$LogLevel;->$VALUES:[Lcom/explorestack/iab/utils/Logger$LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput p3, p0, Lcom/explorestack/iab/utils/Logger$LogLevel;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/iab/utils/Logger$LogLevel;
    .locals 1

    .line 83
    const-class v0, Lcom/explorestack/iab/utils/Logger$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/iab/utils/Logger$LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/iab/utils/Logger$LogLevel;
    .locals 1

    .line 83
    sget-object v0, Lcom/explorestack/iab/utils/Logger$LogLevel;->$VALUES:[Lcom/explorestack/iab/utils/Logger$LogLevel;

    invoke-virtual {v0}, [Lcom/explorestack/iab/utils/Logger$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/iab/utils/Logger$LogLevel;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/explorestack/iab/utils/Logger$LogLevel;->value:I

    return v0
.end method
