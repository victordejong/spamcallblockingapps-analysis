.class synthetic Lcom/androidplot/xy/XYStepCalculator$1;
.super Ljava/lang/Object;
.source "XYStepCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/XYStepCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$androidplot$xy$Axis:[I

.field static final synthetic $SwitchMap$com$androidplot$xy$StepMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 60
    invoke-static {}, Lcom/androidplot/xy/StepMode;->values()[Lcom/androidplot/xy/StepMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/androidplot/xy/XYStepCalculator$1;->$SwitchMap$com$androidplot$xy$StepMode:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/androidplot/xy/StepMode;->INCREMENT_BY_VAL:Lcom/androidplot/xy/StepMode;

    invoke-virtual {v2}, Lcom/androidplot/xy/StepMode;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/androidplot/xy/XYStepCalculator$1;->$SwitchMap$com$androidplot$xy$StepMode:[I

    sget-object v3, Lcom/androidplot/xy/StepMode;->INCREMENT_BY_FIT:Lcom/androidplot/xy/StepMode;

    invoke-virtual {v3}, Lcom/androidplot/xy/StepMode;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lcom/androidplot/xy/XYStepCalculator$1;->$SwitchMap$com$androidplot$xy$StepMode:[I

    sget-object v3, Lcom/androidplot/xy/StepMode;->INCREMENT_BY_PIXELS:Lcom/androidplot/xy/StepMode;

    invoke-virtual {v3}, Lcom/androidplot/xy/StepMode;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/androidplot/xy/XYStepCalculator$1;->$SwitchMap$com$androidplot$xy$StepMode:[I

    sget-object v3, Lcom/androidplot/xy/StepMode;->SUBDIVIDE:Lcom/androidplot/xy/StepMode;

    invoke-virtual {v3}, Lcom/androidplot/xy/StepMode;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 39
    :catch_3
    invoke-static {}, Lcom/androidplot/xy/Axis;->values()[Lcom/androidplot/xy/Axis;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/androidplot/xy/XYStepCalculator$1;->$SwitchMap$com$androidplot$xy$Axis:[I

    :try_start_4
    sget-object v3, Lcom/androidplot/xy/Axis;->DOMAIN:Lcom/androidplot/xy/Axis;

    invoke-virtual {v3}, Lcom/androidplot/xy/Axis;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/androidplot/xy/XYStepCalculator$1;->$SwitchMap$com$androidplot$xy$Axis:[I

    sget-object v2, Lcom/androidplot/xy/Axis;->RANGE:Lcom/androidplot/xy/Axis;

    invoke-virtual {v2}, Lcom/androidplot/xy/Axis;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
