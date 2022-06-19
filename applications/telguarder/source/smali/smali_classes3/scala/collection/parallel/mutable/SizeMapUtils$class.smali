.class public abstract Lscala/collection/parallel/mutable/SizeMapUtils$class;
.super Ljava/lang/Object;
.source "package.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/mutable/SizeMapUtils;)V
    .locals 0

    return-void
.end method

.method public static calcNumElems(Lscala/collection/parallel/mutable/SizeMapUtils;IIII)I
    .locals 4

    .line 28
    div-int v0, p1, p4

    .line 31
    div-int v1, p2, p4

    if-ne v0, v1, :cond_0

    .line 38
    invoke-interface {p0, p1, p2}, Lscala/collection/parallel/mutable/SizeMapUtils;->countElems(II)I

    move-result p0

    goto :goto_0

    :cond_0
    sget-object v2, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 41
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    add-int/lit8 v0, v0, 0x1

    mul-int v3, v0, p4

    invoke-virtual {v2, v3, p3}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result p3

    .line 42
    invoke-interface {p0, p1, p3}, Lscala/collection/parallel/mutable/SizeMapUtils;->countElems(II)I

    move-result p1

    mul-int p4, p4, v1

    .line 44
    invoke-interface {p0, p4, p2}, Lscala/collection/parallel/mutable/SizeMapUtils;->countElems(II)I

    move-result p2

    .line 47
    invoke-interface {p0, v0, v1}, Lscala/collection/parallel/mutable/SizeMapUtils;->countBucketSizes(II)I

    move-result p0

    add-int/2addr p1, p0

    add-int p0, p1, p2

    :goto_0
    return p0
.end method
