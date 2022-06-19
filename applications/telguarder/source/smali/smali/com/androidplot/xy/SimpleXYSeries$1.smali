.class synthetic Lcom/androidplot/xy/SimpleXYSeries$1;
.super Ljava/lang/Object;
.source "SimpleXYSeries.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/SimpleXYSeries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$androidplot$xy$SimpleXYSeries$ArrayFormat:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 152
    invoke-static {}, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;->values()[Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/androidplot/xy/SimpleXYSeries$1;->$SwitchMap$com$androidplot$xy$SimpleXYSeries$ArrayFormat:[I

    :try_start_0
    sget-object v1, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;->Y_VALS_ONLY:Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    invoke-virtual {v1}, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/androidplot/xy/SimpleXYSeries$1;->$SwitchMap$com$androidplot$xy$SimpleXYSeries$ArrayFormat:[I

    sget-object v1, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;->XY_VALS_INTERLEAVED:Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    invoke-virtual {v1}, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
