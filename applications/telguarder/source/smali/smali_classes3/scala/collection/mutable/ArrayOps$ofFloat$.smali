.class public Lscala/collection/mutable/ArrayOps$ofFloat$;
.super Ljava/lang/Object;
.source "ArrayOps.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/ArrayOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ofFloat$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/ArrayOps$ofFloat$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/ArrayOps$ofFloat$;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayOps$ofFloat$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/mutable/ArrayOps$ofFloat$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofFloat$;

    return-void
.end method


# virtual methods
.method public final apply$extension([FI)F
    .locals 0

    .line 265
    aget p1, p1, p2

    return p1
.end method

.method public final equals$extension([FLjava/lang/Object;)Z
    .locals 3

    .line 258
    instance-of v0, p2, Lscala/collection/mutable/ArrayOps$ofFloat;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    check-cast p2, Lscala/collection/mutable/ArrayOps$ofFloat;

    invoke-virtual {p2}, Lscala/collection/mutable/ArrayOps$ofFloat;->repr()[F

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

.method public final hashCode$extension([F)I
    .locals 0

    .line 258
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method public final length$extension([F)I
    .locals 0

    .line 264
    array-length p1, p1

    return p1
.end method

.method public final newBuilder$extension([F)Lscala/collection/mutable/ArrayBuilder$ofFloat;
    .locals 0

    .line 262
    new-instance p1, Lscala/collection/mutable/ArrayBuilder$ofFloat;

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofFloat;-><init>()V

    return-object p1
.end method

.method public final thisCollection$extension([F)Lscala/collection/mutable/WrappedArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Lscala/collection/mutable/WrappedArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 260
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofFloat;

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$ofFloat;-><init>([F)V

    return-object v0
.end method

.method public final toCollection$extension([F[F)Lscala/collection/mutable/WrappedArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[F)",
            "Lscala/collection/mutable/WrappedArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 261
    new-instance p1, Lscala/collection/mutable/WrappedArray$ofFloat;

    invoke-direct {p1, p2}, Lscala/collection/mutable/WrappedArray$ofFloat;-><init>([F)V

    return-object p1
.end method

.method public final update$extension([FIF)V
    .locals 0

    .line 266
    aput p3, p1, p2

    return-void
.end method
