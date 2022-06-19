.class public Lscala/collection/mutable/ArrayOps$ofDouble$;
.super Ljava/lang/Object;
.source "ArrayOps.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/ArrayOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ofDouble$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/ArrayOps$ofDouble$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/ArrayOps$ofDouble$;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayOps$ofDouble$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/mutable/ArrayOps$ofDouble$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofDouble$;

    return-void
.end method


# virtual methods
.method public final apply$extension([DI)D
    .locals 2

    .line 277
    aget-wide v0, p1, p2

    return-wide v0
.end method

.method public final equals$extension([DLjava/lang/Object;)Z
    .locals 3

    .line 270
    instance-of v0, p2, Lscala/collection/mutable/ArrayOps$ofDouble;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    check-cast p2, Lscala/collection/mutable/ArrayOps$ofDouble;

    invoke-virtual {p2}, Lscala/collection/mutable/ArrayOps$ofDouble;->repr()[D

    move-result-object p2

    :goto_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public final hashCode$extension([D)I
    .locals 0

    .line 270
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method public final length$extension([D)I
    .locals 0

    .line 276
    array-length p1, p1

    return p1
.end method

.method public final newBuilder$extension([D)Lscala/collection/mutable/ArrayBuilder$ofDouble;
    .locals 0

    .line 274
    new-instance p1, Lscala/collection/mutable/ArrayBuilder$ofDouble;

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofDouble;-><init>()V

    return-object p1
.end method

.method public final thisCollection$extension([D)Lscala/collection/mutable/WrappedArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Lscala/collection/mutable/WrappedArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 272
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofDouble;

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$ofDouble;-><init>([D)V

    return-object v0
.end method

.method public final toCollection$extension([D[D)Lscala/collection/mutable/WrappedArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D[D)",
            "Lscala/collection/mutable/WrappedArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 273
    new-instance p1, Lscala/collection/mutable/WrappedArray$ofDouble;

    invoke-direct {p1, p2}, Lscala/collection/mutable/WrappedArray$ofDouble;-><init>([D)V

    return-object p1
.end method

.method public final update$extension([DID)V
    .locals 0

    .line 278
    aput-wide p3, p1, p2

    return-void
.end method
