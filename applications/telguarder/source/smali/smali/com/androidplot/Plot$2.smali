.class synthetic Lcom/androidplot/Plot$2;
.super Ljava/lang/Object;
.source "Plot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/Plot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$androidplot$Plot$BorderStyle:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 907
    invoke-static {}, Lcom/androidplot/Plot$BorderStyle;->values()[Lcom/androidplot/Plot$BorderStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/androidplot/Plot$2;->$SwitchMap$com$androidplot$Plot$BorderStyle:[I

    :try_start_0
    sget-object v1, Lcom/androidplot/Plot$BorderStyle;->ROUNDED:Lcom/androidplot/Plot$BorderStyle;

    invoke-virtual {v1}, Lcom/androidplot/Plot$BorderStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/androidplot/Plot$2;->$SwitchMap$com$androidplot$Plot$BorderStyle:[I

    sget-object v1, Lcom/androidplot/Plot$BorderStyle;->SQUARE:Lcom/androidplot/Plot$BorderStyle;

    invoke-virtual {v1}, Lcom/androidplot/Plot$BorderStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
