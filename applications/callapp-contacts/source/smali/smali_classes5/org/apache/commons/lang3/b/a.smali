.class public final Lorg/apache/commons/lang3/b/a;
.super Ljava/lang/Number;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/lang3/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 55
    iput p1, p0, Lorg/apache/commons/lang3/b/a;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 66
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lorg/apache/commons/lang3/b/a;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/lang3/b/a;->a:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 119
    iget v0, p0, Lorg/apache/commons/lang3/b/a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang3/b/a;->a:I

    return-void
.end method

.method public final b()I
    .locals 1

    .line 177
    iget v0, p0, Lorg/apache/commons/lang3/b/a;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/lang3/b/a;->a:I

    return v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 29
    check-cast p1, Lorg/apache/commons/lang3/b/a;

    .line 1368
    iget v0, p0, Lorg/apache/commons/lang3/b/a;->a:I

    iget p1, p1, Lorg/apache/commons/lang3/b/a;->a:I

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/a/a;->a(II)I

    move-result p1

    return p1
.end method

.method public final doubleValue()D
    .locals 2

    .line 319
    iget v0, p0, Lorg/apache/commons/lang3/b/a;->a:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 343
    instance-of v0, p1, Lorg/apache/commons/lang3/b/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 344
    iget v0, p0, Lorg/apache/commons/lang3/b/a;->a:I

    check-cast p1, Lorg/apache/commons/lang3/b/a;

    invoke-virtual {p1}, Lorg/apache/commons/lang3/b/a;->intValue()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final floatValue()F
    .locals 1

    .line 309
    iget v0, p0, Lorg/apache/commons/lang3/b/a;->a:I

    int-to-float v0, v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 356
    iget v0, p0, Lorg/apache/commons/lang3/b/a;->a:I

    return v0
.end method

.method public final intValue()I
    .locals 1

    .line 289
    iget v0, p0, Lorg/apache/commons/lang3/b/a;->a:I

    return v0
.end method

.method public final longValue()J
    .locals 2

    .line 299
    iget v0, p0, Lorg/apache/commons/lang3/b/a;->a:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 379
    iget v0, p0, Lorg/apache/commons/lang3/b/a;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
