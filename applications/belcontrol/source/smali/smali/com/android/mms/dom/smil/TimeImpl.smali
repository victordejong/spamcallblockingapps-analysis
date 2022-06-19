.class public Lcom/android/mms/dom/smil/TimeImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/w3c/dom/smil/Time;


# static fields
.field public static final ALLOW_ALL:I = 0xff

.field public static final ALLOW_EVENT_VALUE:I = 0x10

.field public static final ALLOW_INDEFINITE_VALUE:I = 0x1

.field public static final ALLOW_MARKER_VALUE:I = 0x20

.field public static final ALLOW_NEGATIVE_VALUE:I = 0x80

.field public static final ALLOW_OFFSET_VALUE:I = 0x2

.field public static final ALLOW_SYNCBASE_VALUE:I = 0x4

.field public static final ALLOW_SYNCTOPREV_VALUE:I = 0x8

.field public static final ALLOW_WALLCLOCK_VALUE:I = 0x40


# instance fields
.field public mResolved:Z

.field public mResolvedOffset:D

.field public mTimeType:S


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "indefinite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-short p1, p0, Lcom/android/mms/dom/smil/TimeImpl;->mTimeType:S

    goto :goto_2

    :cond_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_3

    const-string p2, "+"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x1

    :goto_1
    int-to-float p2, p2

    invoke-static {p1}, Lcom/android/mms/dom/smil/TimeImpl;->parseClockValue(Ljava/lang/String;)F

    move-result p1

    mul-float p2, p2, p1

    float-to-double p1, p2

    const-wide v1, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v1

    iput-wide p1, p0, Lcom/android/mms/dom/smil/TimeImpl;->mResolvedOffset:D

    iput-boolean v0, p0, Lcom/android/mms/dom/smil/TimeImpl;->mResolved:Z

    iput-short v0, p0, Lcom/android/mms/dom/smil/TimeImpl;->mTimeType:S

    :goto_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported time value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static parseClockValue(Ljava/lang/String;)F
    .locals 8

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0, v1, v2}, Lcom/android/mms/dom/smil/TimeImpl;->parseFloat(Ljava/lang/String;IZ)F

    move-result p0

    goto/16 :goto_1

    :cond_0
    const-string v0, "s"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/high16 v3, 0x447a0000    # 1000.0f

    if-eqz v0, :cond_1

    invoke-static {p0, v2, v2}, Lcom/android/mms/dom/smil/TimeImpl;->parseFloat(Ljava/lang/String;IZ)F

    move-result p0

    mul-float p0, p0, v3

    goto/16 :goto_1

    :cond_1
    const-string v0, "min"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x3

    const v5, 0x476a6000    # 60000.0f

    if-eqz v0, :cond_2

    invoke-static {p0, v4, v2}, Lcom/android/mms/dom/smil/TimeImpl;->parseFloat(Ljava/lang/String;IZ)F

    move-result p0

    mul-float p0, p0, v5

    goto :goto_1

    :cond_2
    const-string v0, "h"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x4a5bba00    # 3600000.0f

    invoke-static {p0, v2, v2}, Lcom/android/mms/dom/smil/TimeImpl;->parseFloat(Ljava/lang/String;IZ)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    mul-float p0, p0, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, v0, v2}, Lcom/android/mms/dom/smil/TimeImpl;->parseFloat(Ljava/lang/String;IZ)F

    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    mul-float p0, p0, v3

    return p0

    :catch_0
    :try_start_2
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v3, p0

    const/4 v6, 0x0

    if-ne v3, v1, :cond_4

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    array-length v1, p0

    if-ne v1, v4, :cond_7

    const v1, 0x36ee80

    aget-object v3, p0, v0

    invoke-static {v3, v0, v0}, Lcom/android/mms/dom/smil/TimeImpl;->parseFloat(Ljava/lang/String;IZ)F

    move-result v3

    float-to-int v3, v3

    mul-int v3, v3, v1

    int-to-float v1, v3

    const/4 v3, 0x1

    :goto_0
    aget-object v4, p0, v3

    invoke-static {v4, v0, v0}, Lcom/android/mms/dom/smil/TimeImpl;->parseFloat(Ljava/lang/String;IZ)F

    move-result v4

    float-to-int v4, v4

    if-ltz v4, :cond_6

    const/16 v7, 0x3b

    if-gt v4, v7, :cond_6

    const v7, 0xea60

    mul-int v4, v4, v7

    int-to-float v4, v4

    add-float/2addr v1, v4

    add-int/2addr v3, v2

    aget-object p0, p0, v3

    invoke-static {p0, v0, v2}, Lcom/android/mms/dom/smil/TimeImpl;->parseFloat(Ljava/lang/String;IZ)F

    move-result p0

    cmpl-float v0, p0, v6

    if-ltz v0, :cond_5

    const/high16 v0, 0x42700000    # 60.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_5

    mul-float p0, p0, v5

    add-float/2addr p0, v1

    :goto_1
    return p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static parseFloat(Ljava/lang/String;IZ)F
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "000"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    add-int/lit8 p2, v0, 0x1

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p0, p2

    add-float/2addr p1, p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "int value contains decimal"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-float p1, p0

    :goto_0
    return p1
.end method


# virtual methods
.method public getBaseBegin()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBaseElement()Lorg/w3c/dom/Element;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMarker()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOffset()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getResolved()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/dom/smil/TimeImpl;->mResolved:Z

    return v0
.end method

.method public getResolvedOffset()D
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/dom/smil/TimeImpl;->mResolvedOffset:D

    return-wide v0
.end method

.method public getTimeType()S
    .locals 1

    iget-short v0, p0, Lcom/android/mms/dom/smil/TimeImpl;->mTimeType:S

    return v0
.end method

.method public setBaseBegin(Z)V
    .locals 0

    return-void
.end method

.method public setBaseElement(Lorg/w3c/dom/Element;)V
    .locals 0

    return-void
.end method

.method public setEvent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setMarker(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setOffset(D)V
    .locals 0

    return-void
.end method
