.class public final enum Lcom/verizon/ads/ActivityStateManager$ActivityState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/ActivityStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActivityState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verizon/ads/ActivityStateManager$ActivityState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verizon/ads/ActivityStateManager$ActivityState;

.field public static final enum CREATED:Lcom/verizon/ads/ActivityStateManager$ActivityState;

.field public static final enum DESTROYED:Lcom/verizon/ads/ActivityStateManager$ActivityState;

.field public static final enum PAUSED:Lcom/verizon/ads/ActivityStateManager$ActivityState;

.field public static final enum RESUMED:Lcom/verizon/ads/ActivityStateManager$ActivityState;

.field public static final enum STARTED:Lcom/verizon/ads/ActivityStateManager$ActivityState;

.field public static final enum STOPPED:Lcom/verizon/ads/ActivityStateManager$ActivityState;

.field public static final enum UNKNOWN:Lcom/verizon/ads/ActivityStateManager$ActivityState;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 28
    new-instance v0, Lcom/verizon/ads/ActivityStateManager$ActivityState;

    const-string v1, "CREATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/verizon/ads/ActivityStateManager$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verizon/ads/ActivityStateManager$ActivityState;->CREATED:Lcom/verizon/ads/ActivityStateManager$ActivityState;

    .line 29
    new-instance v1, Lcom/verizon/ads/ActivityStateManager$ActivityState;

    const-string v3, "DESTROYED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/verizon/ads/ActivityStateManager$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/verizon/ads/ActivityStateManager$ActivityState;->DESTROYED:Lcom/verizon/ads/ActivityStateManager$ActivityState;

    .line 30
    new-instance v3, Lcom/verizon/ads/ActivityStateManager$ActivityState;

    const-string v5, "PAUSED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/verizon/ads/ActivityStateManager$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/verizon/ads/ActivityStateManager$ActivityState;->PAUSED:Lcom/verizon/ads/ActivityStateManager$ActivityState;

    .line 31
    new-instance v5, Lcom/verizon/ads/ActivityStateManager$ActivityState;

    const-string v7, "RESUMED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/verizon/ads/ActivityStateManager$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/verizon/ads/ActivityStateManager$ActivityState;->RESUMED:Lcom/verizon/ads/ActivityStateManager$ActivityState;

    .line 32
    new-instance v7, Lcom/verizon/ads/ActivityStateManager$ActivityState;

    const-string v9, "STARTED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/verizon/ads/ActivityStateManager$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/verizon/ads/ActivityStateManager$ActivityState;->STARTED:Lcom/verizon/ads/ActivityStateManager$ActivityState;

    .line 33
    new-instance v9, Lcom/verizon/ads/ActivityStateManager$ActivityState;

    const-string v11, "STOPPED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/verizon/ads/ActivityStateManager$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/verizon/ads/ActivityStateManager$ActivityState;->STOPPED:Lcom/verizon/ads/ActivityStateManager$ActivityState;

    .line 34
    new-instance v11, Lcom/verizon/ads/ActivityStateManager$ActivityState;

    const-string v13, "UNKNOWN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/verizon/ads/ActivityStateManager$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/verizon/ads/ActivityStateManager$ActivityState;->UNKNOWN:Lcom/verizon/ads/ActivityStateManager$ActivityState;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/verizon/ads/ActivityStateManager$ActivityState;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 27
    sput-object v13, Lcom/verizon/ads/ActivityStateManager$ActivityState;->$VALUES:[Lcom/verizon/ads/ActivityStateManager$ActivityState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verizon/ads/ActivityStateManager$ActivityState;
    .locals 1

    .line 27
    const-class v0, Lcom/verizon/ads/ActivityStateManager$ActivityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verizon/ads/ActivityStateManager$ActivityState;

    return-object p0
.end method

.method public static values()[Lcom/verizon/ads/ActivityStateManager$ActivityState;
    .locals 1

    .line 27
    sget-object v0, Lcom/verizon/ads/ActivityStateManager$ActivityState;->$VALUES:[Lcom/verizon/ads/ActivityStateManager$ActivityState;

    invoke-virtual {v0}, [Lcom/verizon/ads/ActivityStateManager$ActivityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verizon/ads/ActivityStateManager$ActivityState;

    return-object v0
.end method
