.class synthetic Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$1;
.super Ljava/lang/Object;
.source "BaseIndicatorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$github$jdsjlzx$progressindicator$indicators$BaseIndicatorController$AnimStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;->values()[Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$1;->$SwitchMap$com$github$jdsjlzx$progressindicator$indicators$BaseIndicatorController$AnimStatus:[I

    :try_start_0
    sget-object v1, Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;->START:Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$1;->$SwitchMap$com$github$jdsjlzx$progressindicator$indicators$BaseIndicatorController$AnimStatus:[I

    sget-object v1, Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;->END:Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$1;->$SwitchMap$com$github$jdsjlzx$progressindicator$indicators$BaseIndicatorController$AnimStatus:[I

    sget-object v1, Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;->CANCEL:Lcom/github/jdsjlzx/progressindicator/indicators/BaseIndicatorController$AnimStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
