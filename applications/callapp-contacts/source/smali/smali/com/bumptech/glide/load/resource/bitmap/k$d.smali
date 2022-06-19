.class final Lcom/bumptech/glide/load/resource/bitmap/k$d;
.super Lcom/bumptech/glide/load/resource/bitmap/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 176
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIII)F
    .locals 0

    int-to-float p3, p3

    int-to-float p1, p1

    div-float/2addr p3, p1

    int-to-float p1, p4

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 183
    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public final b(IIII)I
    .locals 0

    .line 189
    sget p1, Lcom/bumptech/glide/load/resource/bitmap/k$g;->b:I

    return p1
.end method
