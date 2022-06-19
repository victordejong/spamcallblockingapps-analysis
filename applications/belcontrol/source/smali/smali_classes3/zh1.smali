.class public Lzh1;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final NOT_FOUND:I = -0x1


# instance fields
.field public final a:[I

.field public final b:[I

.field public c:I

.field public final d:[I

.field public final e:[I

.field public final f:[Lcom/mopub/nativeads/NativeAd;

.field public g:I


# direct methods
.method public constructor <init>([I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    new-array v1, v0, [I

    iput-object v1, p0, Lzh1;->a:[I

    new-array v2, v0, [I

    iput-object v2, p0, Lzh1;->b:[I

    const/4 v3, 0x0

    iput v3, p0, Lzh1;->c:I

    new-array v4, v0, [I

    iput-object v4, p0, Lzh1;->d:[I

    new-array v4, v0, [I

    iput-object v4, p0, Lzh1;->e:[I

    new-array v4, v0, [Lcom/mopub/nativeads/NativeAd;

    iput-object v4, p0, Lzh1;->f:[Lcom/mopub/nativeads/NativeAd;

    iput v3, p0, Lzh1;->g:I

    array-length v4, p1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lzh1;->c:I

    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lzh1;->c:I

    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static a([IIII)I
    .locals 2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-gt p1, p2, :cond_2

    add-int v0, p1, p2

    ushr-int/lit8 v0, v0, 0x1

    aget v1, p0, v0

    if-ge v1, p3, :cond_0

    add-int/lit8 v0, v0, 0x1

    move p1, v0

    goto :goto_0

    :cond_0
    if-le v1, p3, :cond_1

    add-int/lit8 v0, v0, -0x1

    move p2, v0

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    not-int p0, p1

    return p0
.end method

.method public static b([III)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lzh1;->a([IIII)I

    move-result p1

    if-gez p1, :cond_0

    not-int p0, p1

    return p0

    :cond_0
    aget p2, p0, p1

    :goto_0
    if-ltz p1, :cond_1

    aget v0, p0, p1

    if-ne v0, p2, :cond_1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public static c([III)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lzh1;->a([IIII)I

    move-result p2

    if-gez p2, :cond_0

    not-int p0, p2

    return p0

    :cond_0
    aget v0, p0, p2

    :goto_0
    if-ge p2, p1, :cond_1

    aget v1, p0, p2

    if-ne v1, v0, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method public static f()Lzh1;
    .locals 2

    new-instance v0, Lzh1;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lzh1;-><init>([I)V

    return-object v0
.end method

.method public static g(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)Lzh1;
    .locals 6

    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;->e()I

    move-result p0

    const v1, 0x7fffffff

    if-ne p0, v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0xc8

    :goto_0
    new-array v2, v1, [I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v3

    add-int/lit8 v5, v3, 0x1

    aput v4, v2, v3

    move v3, v5

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v3, v1, :cond_2

    add-int/2addr v4, p0

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v0, v3, 0x1

    aput v4, v2, v3

    move v3, v0

    goto :goto_2

    :cond_2
    new-instance p0, Lzh1;

    invoke-direct {p0, v2}, Lzh1;-><init>([I)V

    return-object p0
.end method


# virtual methods
.method public d()V
    .locals 3

    iget v0, p0, Lzh1;->g:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lzh1;->e:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Lzh1;->e(II)I

    return-void
.end method

.method public e(II)I
    .locals 10

    iget v0, p0, Lzh1;->g:I

    new-array v1, v0, [I

    new-array v0, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lzh1;->g:I

    if-ge v3, v5, :cond_2

    iget-object v5, p0, Lzh1;->d:[I

    aget v6, v5, v3

    iget-object v7, p0, Lzh1;->e:[I

    aget v8, v7, v3

    if-gt p1, v8, :cond_0

    if-ge v8, p2, :cond_0

    aput v6, v1, v4

    sub-int/2addr v8, v4

    aput v8, v0, v4

    iget-object v5, p0, Lzh1;->f:[Lcom/mopub/nativeads/NativeAd;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/mopub/nativeads/NativeAd;->destroy()V

    iget-object v5, p0, Lzh1;->f:[Lcom/mopub/nativeads/NativeAd;

    const/4 v6, 0x0

    aput-object v6, v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    if-lez v4, :cond_1

    sub-int v9, v3, v4

    aput v6, v5, v9

    sub-int/2addr v8, v4

    aput v8, v7, v9

    iget-object v5, p0, Lzh1;->f:[Lcom/mopub/nativeads/NativeAd;

    aget-object v6, v5, v3

    aput-object v6, v5, v9

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    return v2

    :cond_3
    aget p1, v0, v2

    iget-object p2, p0, Lzh1;->b:[I

    iget v3, p0, Lzh1;->c:I

    invoke-static {p2, v3, p1}, Lzh1;->b([III)I

    move-result p1

    iget p2, p0, Lzh1;->c:I

    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-lt p2, p1, :cond_4

    iget-object v3, p0, Lzh1;->a:[I

    add-int v5, p2, v4

    aget v6, v3, p2

    aput v6, v3, v5

    iget-object v3, p0, Lzh1;->b:[I

    aget v6, v3, p2

    sub-int/2addr v6, v4

    aput v6, v3, v5

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-ge v2, v4, :cond_5

    iget-object p2, p0, Lzh1;->a:[I

    add-int v3, p1, v2

    aget v5, v1, v2

    aput v5, p2, v3

    iget-object p2, p0, Lzh1;->b:[I

    aget v5, v0, v2

    aput v5, p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    iget p1, p0, Lzh1;->c:I

    add-int/2addr p1, v4

    iput p1, p0, Lzh1;->c:I

    iget p1, p0, Lzh1;->g:I

    sub-int/2addr p1, v4

    iput p1, p0, Lzh1;->g:I

    return v4
.end method

.method public h(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lzh1;->i(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public i(I)I
    .locals 2

    iget-object v0, p0, Lzh1;->d:[I

    iget v1, p0, Lzh1;->g:I

    invoke-static {v0, v1, p1}, Lzh1;->c([III)I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method public j(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lzh1;->k(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p1, 0x1

    :goto_0
    return v0
.end method

.method public k(I)I
    .locals 3

    iget-object v0, p0, Lzh1;->e:[I

    iget v1, p0, Lzh1;->g:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lzh1;->a([IIII)I

    move-result v0

    if-gez v0, :cond_0

    not-int v0, v0

    sub-int/2addr p1, v0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public l(I)Lcom/mopub/nativeads/NativeAd;
    .locals 3

    iget-object v0, p0, Lzh1;->e:[I

    iget v1, p0, Lzh1;->g:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lzh1;->a([IIII)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lzh1;->f:[Lcom/mopub/nativeads/NativeAd;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public m()[I
    .locals 4

    iget v0, p0, Lzh1;->g:I

    new-array v1, v0, [I

    iget-object v2, p0, Lzh1;->e:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public n(I)V
    .locals 3

    iget-object v0, p0, Lzh1;->a:[I

    iget v1, p0, Lzh1;->c:I

    invoke-static {v0, v1, p1}, Lzh1;->b([III)I

    move-result v0

    :goto_0
    iget v1, p0, Lzh1;->c:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lzh1;->a:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    iget-object v1, p0, Lzh1;->b:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lzh1;->d:[I

    iget v1, p0, Lzh1;->g:I

    invoke-static {v0, v1, p1}, Lzh1;->b([III)I

    move-result p1

    :goto_1
    iget v0, p0, Lzh1;->g:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lzh1;->d:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    iget-object v0, p0, Lzh1;->e:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public o(I)Z
    .locals 3

    iget-object v0, p0, Lzh1;->e:[I

    iget v1, p0, Lzh1;->g:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lzh1;->a([IIII)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public p(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lzh1;->s(I)V

    invoke-virtual {p0, p2}, Lzh1;->n(I)V

    return-void
.end method

.method public q(I)I
    .locals 2

    iget-object v0, p0, Lzh1;->b:[I

    iget v1, p0, Lzh1;->c:I

    invoke-static {v0, v1, p1}, Lzh1;->c([III)I

    move-result p1

    iget v0, p0, Lzh1;->c:I

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lzh1;->b:[I

    aget p1, v0, p1

    return p1
.end method

.method public r(ILcom/mopub/nativeads/NativeAd;)V
    .locals 7

    iget-object v0, p0, Lzh1;->b:[I

    iget v1, p0, Lzh1;->c:I

    invoke-static {v0, v1, p1}, Lzh1;->b([III)I

    move-result v0

    iget v1, p0, Lzh1;->c:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lzh1;->b:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lzh1;->a:[I

    aget v1, v1, v0

    iget-object v3, p0, Lzh1;->d:[I

    iget v4, p0, Lzh1;->g:I

    invoke-static {v3, v4, v1}, Lzh1;->c([III)I

    move-result v3

    iget v4, p0, Lzh1;->g:I

    if-ge v3, v4, :cond_1

    sub-int/2addr v4, v3

    iget-object v5, p0, Lzh1;->d:[I

    add-int/lit8 v6, v3, 0x1

    invoke-static {v5, v3, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lzh1;->e:[I

    invoke-static {v5, v3, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lzh1;->f:[Lcom/mopub/nativeads/NativeAd;

    invoke-static {v5, v3, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v4, p0, Lzh1;->d:[I

    aput v1, v4, v3

    iget-object v1, p0, Lzh1;->e:[I

    aput p1, v1, v3

    iget-object p1, p0, Lzh1;->f:[Lcom/mopub/nativeads/NativeAd;

    aput-object p2, p1, v3

    iget p1, p0, Lzh1;->g:I

    add-int/2addr p1, v2

    iput p1, p0, Lzh1;->g:I

    iget p1, p0, Lzh1;->c:I

    sub-int/2addr p1, v0

    sub-int/2addr p1, v2

    iget-object p2, p0, Lzh1;->b:[I

    add-int/lit8 v1, v0, 0x1

    invoke-static {p2, v1, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lzh1;->a:[I

    invoke-static {p2, v1, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lzh1;->c:I

    sub-int/2addr p1, v2

    iput p1, p0, Lzh1;->c:I

    :goto_0
    iget p1, p0, Lzh1;->c:I

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lzh1;->b:[I

    aget p2, p1, v0

    add-int/2addr p2, v2

    aput p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v3, v2

    :goto_1
    iget p1, p0, Lzh1;->g:I

    if-ge v3, p1, :cond_3

    iget-object p1, p0, Lzh1;->e:[I

    aget p2, p1, v3

    add-int/2addr p2, v2

    aput p2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    :goto_2
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, v2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "Attempted to insert an ad at an invalid position"

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public s(I)V
    .locals 3

    iget-object v0, p0, Lzh1;->a:[I

    iget v1, p0, Lzh1;->c:I

    invoke-static {v0, v1, p1}, Lzh1;->c([III)I

    move-result v0

    :goto_0
    iget v1, p0, Lzh1;->c:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lzh1;->a:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    iget-object v1, p0, Lzh1;->b:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lzh1;->d:[I

    iget v1, p0, Lzh1;->g:I

    invoke-static {v0, v1, p1}, Lzh1;->c([III)I

    move-result p1

    :goto_1
    iget v0, p0, Lzh1;->g:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lzh1;->d:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    iget-object v0, p0, Lzh1;->e:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public t(I)Z
    .locals 3

    iget-object v0, p0, Lzh1;->b:[I

    iget v1, p0, Lzh1;->c:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lzh1;->a([IIII)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
