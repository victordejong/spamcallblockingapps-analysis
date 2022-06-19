.class public final enum Lcom/millennialmedia/internal/SizableStateManager$SizableState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/SizableStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SizableState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/millennialmedia/internal/SizableStateManager$SizableState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/millennialmedia/internal/SizableStateManager$SizableState;

.field public static final enum STATE_COLLAPSED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

.field public static final enum STATE_EXPANDED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

.field public static final enum STATE_RESIZED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

.field public static final enum STATE_UNRESIZED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    const-string v1, "STATE_RESIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/internal/SizableStateManager$SizableState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/SizableStateManager$SizableState;->STATE_RESIZED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    new-instance v1, Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    const-string v3, "STATE_UNRESIZED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/millennialmedia/internal/SizableStateManager$SizableState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/millennialmedia/internal/SizableStateManager$SizableState;->STATE_UNRESIZED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    new-instance v3, Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    const-string v5, "STATE_EXPANDED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/millennialmedia/internal/SizableStateManager$SizableState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/millennialmedia/internal/SizableStateManager$SizableState;->STATE_EXPANDED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    new-instance v5, Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    const-string v7, "STATE_COLLAPSED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/millennialmedia/internal/SizableStateManager$SizableState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/millennialmedia/internal/SizableStateManager$SizableState;->STATE_COLLAPSED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/millennialmedia/internal/SizableStateManager$SizableState;->$VALUES:[Lcom/millennialmedia/internal/SizableStateManager$SizableState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/millennialmedia/internal/SizableStateManager$SizableState;
    .locals 1

    const-class v0, Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    return-object p0
.end method

.method public static values()[Lcom/millennialmedia/internal/SizableStateManager$SizableState;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/SizableStateManager$SizableState;->$VALUES:[Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    invoke-virtual {v0}, [Lcom/millennialmedia/internal/SizableStateManager$SizableState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    return-object v0
.end method
