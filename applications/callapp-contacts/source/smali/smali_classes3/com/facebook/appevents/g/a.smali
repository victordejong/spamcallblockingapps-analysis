.class public final Lcom/facebook/appevents/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[F

.field b:[I

.field c:I


# direct methods
.method public constructor <init>([I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/facebook/appevents/g/a;->b:[I

    .line 31
    invoke-static {p1}, Lcom/facebook/appevents/g/a;->a([I)I

    move-result p1

    iput p1, p0, Lcom/facebook/appevents/g/a;->c:I

    .line 32
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/facebook/appevents/g/a;->a:[F

    return-void
.end method

.method static a([I)I
    .locals 4

    .line 58
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    mul-int v1, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method
