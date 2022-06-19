.class final Lcom/bumptech/glide/load/resource/bitmap/k$a;
.super Lcom/bumptech/glide/load/resource/bitmap/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 196
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIII)F
    .locals 0

    .line 201
    div-int/2addr p2, p4

    div-int/2addr p1, p3

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    return p2

    .line 202
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    return p2
.end method

.method public final b(IIII)I
    .locals 0

    .line 208
    sget p1, Lcom/bumptech/glide/load/resource/bitmap/k$g;->b:I

    return p1
.end method
