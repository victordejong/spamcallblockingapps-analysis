.class public final enum Lnet/pubnative/lite/sdk/utils/Logger$Level;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/utils/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/pubnative/lite/sdk/utils/Logger$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/pubnative/lite/sdk/utils/Logger$Level;

.field public static final enum debug:Lnet/pubnative/lite/sdk/utils/Logger$Level;

.field public static final enum error:Lnet/pubnative/lite/sdk/utils/Logger$Level;

.field public static final enum info:Lnet/pubnative/lite/sdk/utils/Logger$Level;

.field public static final enum none:Lnet/pubnative/lite/sdk/utils/Logger$Level;

.field public static final enum verbose:Lnet/pubnative/lite/sdk/utils/Logger$Level;

.field public static final enum warning:Lnet/pubnative/lite/sdk/utils/Logger$Level;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 33
    new-instance v0, Lnet/pubnative/lite/sdk/utils/Logger$Level;

    const-string v1, "verbose"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/pubnative/lite/sdk/utils/Logger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/pubnative/lite/sdk/utils/Logger$Level;->verbose:Lnet/pubnative/lite/sdk/utils/Logger$Level;

    .line 34
    new-instance v1, Lnet/pubnative/lite/sdk/utils/Logger$Level;

    const-string v4, "debug"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lnet/pubnative/lite/sdk/utils/Logger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/pubnative/lite/sdk/utils/Logger$Level;->debug:Lnet/pubnative/lite/sdk/utils/Logger$Level;

    .line 35
    new-instance v4, Lnet/pubnative/lite/sdk/utils/Logger$Level;

    const-string v6, "info"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lnet/pubnative/lite/sdk/utils/Logger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/pubnative/lite/sdk/utils/Logger$Level;->info:Lnet/pubnative/lite/sdk/utils/Logger$Level;

    .line 36
    new-instance v6, Lnet/pubnative/lite/sdk/utils/Logger$Level;

    const-string v8, "warning"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lnet/pubnative/lite/sdk/utils/Logger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lnet/pubnative/lite/sdk/utils/Logger$Level;->warning:Lnet/pubnative/lite/sdk/utils/Logger$Level;

    .line 37
    new-instance v8, Lnet/pubnative/lite/sdk/utils/Logger$Level;

    const-string v10, "error"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lnet/pubnative/lite/sdk/utils/Logger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lnet/pubnative/lite/sdk/utils/Logger$Level;->error:Lnet/pubnative/lite/sdk/utils/Logger$Level;

    .line 38
    new-instance v10, Lnet/pubnative/lite/sdk/utils/Logger$Level;

    const-string v12, "none"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lnet/pubnative/lite/sdk/utils/Logger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lnet/pubnative/lite/sdk/utils/Logger$Level;->none:Lnet/pubnative/lite/sdk/utils/Logger$Level;

    new-array v12, v13, [Lnet/pubnative/lite/sdk/utils/Logger$Level;

    aput-object v0, v12, v2

    aput-object v1, v12, v3

    aput-object v4, v12, v5

    aput-object v6, v12, v7

    aput-object v8, v12, v9

    aput-object v10, v12, v11

    .line 32
    sput-object v12, Lnet/pubnative/lite/sdk/utils/Logger$Level;->$VALUES:[Lnet/pubnative/lite/sdk/utils/Logger$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lnet/pubnative/lite/sdk/utils/Logger$Level;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/pubnative/lite/sdk/utils/Logger$Level;
    .locals 1

    .line 32
    const-class v0, Lnet/pubnative/lite/sdk/utils/Logger$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/pubnative/lite/sdk/utils/Logger$Level;

    return-object p0
.end method

.method public static values()[Lnet/pubnative/lite/sdk/utils/Logger$Level;
    .locals 1

    .line 32
    sget-object v0, Lnet/pubnative/lite/sdk/utils/Logger$Level;->$VALUES:[Lnet/pubnative/lite/sdk/utils/Logger$Level;

    invoke-virtual {v0}, [Lnet/pubnative/lite/sdk/utils/Logger$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/pubnative/lite/sdk/utils/Logger$Level;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 47
    iget v0, p0, Lnet/pubnative/lite/sdk/utils/Logger$Level;->mValue:I

    return v0
.end method
