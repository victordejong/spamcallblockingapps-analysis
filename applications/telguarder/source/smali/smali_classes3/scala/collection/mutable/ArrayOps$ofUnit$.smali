.class public Lscala/collection/mutable/ArrayOps$ofUnit$;
.super Ljava/lang/Object;
.source "ArrayOps.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/ArrayOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ofUnit$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/ArrayOps$ofUnit$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/ArrayOps$ofUnit$;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayOps$ofUnit$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/mutable/ArrayOps$ofUnit$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofUnit$;

    return-void
.end method


# virtual methods
.method public final apply$extension([Lscala/runtime/BoxedUnit;I)V
    .locals 0

    .line 301
    aget-object p1, p1, p2

    return-void
.end method

.method public final equals$extension([Lscala/runtime/BoxedUnit;Ljava/lang/Object;)Z
    .locals 3

    .line 294
    instance-of v0, p2, Lscala/collection/mutable/ArrayOps$ofUnit;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    check-cast p2, Lscala/collection/mutable/ArrayOps$ofUnit;

    invoke-virtual {p2}, Lscala/collection/mutable/ArrayOps$ofUnit;->repr()[Lscala/runtime/BoxedUnit;

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

.method public final hashCode$extension([Lscala/runtime/BoxedUnit;)I
    .locals 0

    .line 294
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method public final length$extension([Lscala/runtime/BoxedUnit;)I
    .locals 0

    .line 300
    array-length p1, p1

    return p1
.end method

.method public final newBuilder$extension([Lscala/runtime/BoxedUnit;)Lscala/collection/mutable/ArrayBuilder$ofUnit;
    .locals 0

    .line 298
    new-instance p1, Lscala/collection/mutable/ArrayBuilder$ofUnit;

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofUnit;-><init>()V

    return-object p1
.end method

.method public final thisCollection$extension([Lscala/runtime/BoxedUnit;)Lscala/collection/mutable/WrappedArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lscala/runtime/BoxedUnit;",
            ")",
            "Lscala/collection/mutable/WrappedArray<",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .line 296
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofUnit;

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$ofUnit;-><init>([Lscala/runtime/BoxedUnit;)V

    return-object v0
.end method

.method public final toCollection$extension([Lscala/runtime/BoxedUnit;[Lscala/runtime/BoxedUnit;)Lscala/collection/mutable/WrappedArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lscala/runtime/BoxedUnit;",
            "[",
            "Lscala/runtime/BoxedUnit;",
            ")",
            "Lscala/collection/mutable/WrappedArray<",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .line 297
    new-instance p1, Lscala/collection/mutable/WrappedArray$ofUnit;

    invoke-direct {p1, p2}, Lscala/collection/mutable/WrappedArray$ofUnit;-><init>([Lscala/runtime/BoxedUnit;)V

    return-object p1
.end method

.method public final update$extension([Lscala/runtime/BoxedUnit;ILscala/runtime/BoxedUnit;)V
    .locals 0

    .line 302
    aput-object p3, p1, p2

    return-void
.end method
