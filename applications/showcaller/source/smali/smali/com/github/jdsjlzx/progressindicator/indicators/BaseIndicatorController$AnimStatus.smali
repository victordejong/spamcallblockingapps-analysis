.class public final enum Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;
.super Ljava/lang/Enum;
.source "BaseIndicatorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;

.field public static final enum CANCEL:Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;

.field public static final enum END:Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;

.field public static final enum START:Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;->START:Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;

    new-instance v1, Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;

    const-string v3, "END"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;->END:Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;

    new-instance v3, Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;

    const-string v5, "CANCEL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;->CANCEL:Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;->$VALUES:[Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;

    return-object p0
.end method

.method public static values()[Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;->$VALUES:[Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;

    invoke-virtual {v0}, [Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;

    return-object v0
.end method
