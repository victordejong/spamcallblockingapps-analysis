.class public final enum Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/ActivityListenerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LifecycleState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

.field public static final enum CREATED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

.field public static final enum DESTROYED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

.field public static final enum PAUSED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

.field public static final enum RESUMED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

.field public static final enum STARTED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

.field public static final enum STOPPED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

.field public static final enum UNKNOWN:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->UNKNOWN:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    new-instance v1, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    const-string v3, "CREATED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->CREATED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    new-instance v3, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    const-string v5, "STARTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->STARTED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    new-instance v5, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    const-string v7, "RESUMED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->RESUMED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    new-instance v7, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    const-string v9, "PAUSED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->PAUSED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    new-instance v9, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    const-string v11, "STOPPED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->STOPPED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    new-instance v11, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    const-string v13, "DESTROYED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->DESTROYED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->$VALUES:[Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;
    .locals 1

    const-class v0, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    return-object p0
.end method

.method public static values()[Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->$VALUES:[Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    invoke-virtual {v0}, [Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    return-object v0
.end method
