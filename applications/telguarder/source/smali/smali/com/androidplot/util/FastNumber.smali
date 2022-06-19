.class public Lcom/androidplot/util/FastNumber;
.super Ljava/lang/Number;
.source "FastNumber.java"


# instance fields
.field private doublePrimitive:D

.field private floatPrimitive:F

.field private hasDoublePrimitive:Z

.field private hasFloatPrimitive:Z

.field private hasIntPrimitive:Z

.field private intPrimitive:I

.field private final number:Ljava/lang/Number;


# direct methods
.method private constructor <init>(Ljava/lang/Number;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    if-eqz p1, :cond_1

    .line 41
    instance-of v0, p1, Lcom/androidplot/util/FastNumber;

    if-eqz v0, :cond_0

    .line 42
    check-cast p1, Lcom/androidplot/util/FastNumber;

    .line 43
    iget-object v0, p1, Lcom/androidplot/util/FastNumber;->number:Ljava/lang/Number;

    iput-object v0, p0, Lcom/androidplot/util/FastNumber;->number:Ljava/lang/Number;

    .line 44
    iget-boolean v0, p1, Lcom/androidplot/util/FastNumber;->hasDoublePrimitive:Z

    iput-boolean v0, p0, Lcom/androidplot/util/FastNumber;->hasDoublePrimitive:Z

    .line 45
    iget-boolean v0, p1, Lcom/androidplot/util/FastNumber;->hasFloatPrimitive:Z

    iput-boolean v0, p0, Lcom/androidplot/util/FastNumber;->hasFloatPrimitive:Z

    .line 46
    iget-boolean v0, p1, Lcom/androidplot/util/FastNumber;->hasIntPrimitive:Z

    iput-boolean v0, p0, Lcom/androidplot/util/FastNumber;->hasIntPrimitive:Z

    .line 47
    iget-wide v0, p1, Lcom/androidplot/util/FastNumber;->doublePrimitive:D

    iput-wide v0, p0, Lcom/androidplot/util/FastNumber;->doublePrimitive:D

    .line 48
    iget v0, p1, Lcom/androidplot/util/FastNumber;->floatPrimitive:F

    iput v0, p0, Lcom/androidplot/util/FastNumber;->floatPrimitive:F

    .line 49
    iget p1, p1, Lcom/androidplot/util/FastNumber;->intPrimitive:I

    iput p1, p0, Lcom/androidplot/util/FastNumber;->intPrimitive:I

    goto :goto_0

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/androidplot/util/FastNumber;->number:Ljava/lang/Number;

    :goto_0
    return-void

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "number parameter cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static orNull(Ljava/lang/Number;)Lcom/androidplot/util/FastNumber;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 29
    :cond_0
    new-instance v0, Lcom/androidplot/util/FastNumber;

    invoke-direct {v0, p0}, Lcom/androidplot/util/FastNumber;-><init>(Ljava/lang/Number;)V

    return-object v0
.end method


# virtual methods
.method public doubleValue()D
    .locals 2

    .line 81
    iget-boolean v0, p0, Lcom/androidplot/util/FastNumber;->hasDoublePrimitive:Z

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/androidplot/util/FastNumber;->number:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/androidplot/util/FastNumber;->doublePrimitive:D

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/androidplot/util/FastNumber;->hasDoublePrimitive:Z

    .line 85
    :cond_0
    iget-wide v0, p0, Lcom/androidplot/util/FastNumber;->doublePrimitive:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 103
    :cond_1
    check-cast p1, Lcom/androidplot/util/FastNumber;

    .line 105
    iget-object v0, p0, Lcom/androidplot/util/FastNumber;->number:Ljava/lang/Number;

    iget-object p1, p1, Lcom/androidplot/util/FastNumber;->number:Ljava/lang/Number;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public floatValue()F
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/androidplot/util/FastNumber;->hasFloatPrimitive:Z

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/androidplot/util/FastNumber;->number:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/androidplot/util/FastNumber;->floatPrimitive:F

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/androidplot/util/FastNumber;->hasFloatPrimitive:Z

    .line 76
    :cond_0
    iget v0, p0, Lcom/androidplot/util/FastNumber;->floatPrimitive:F

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/androidplot/util/FastNumber;->number:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/androidplot/util/FastNumber;->hasIntPrimitive:Z

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/androidplot/util/FastNumber;->number:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/androidplot/util/FastNumber;->intPrimitive:I

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/androidplot/util/FastNumber;->hasIntPrimitive:Z

    .line 61
    :cond_0
    iget v0, p0, Lcom/androidplot/util/FastNumber;->intPrimitive:I

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/androidplot/util/FastNumber;->number:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 117
    invoke-virtual {p0}, Lcom/androidplot/util/FastNumber;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
