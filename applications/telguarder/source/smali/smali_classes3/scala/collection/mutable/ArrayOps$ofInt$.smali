.class public Lscala/collection/mutable/ArrayOps$ofInt$;
.super Ljava/lang/Object;
.source "ArrayOps.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/ArrayOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ofInt$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/ArrayOps$ofInt$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/ArrayOps$ofInt$;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayOps$ofInt$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/mutable/ArrayOps$ofInt$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofInt$;

    return-void
.end method


# virtual methods
.method public final apply$extension([II)I
    .locals 0

    .line 241
    aget p1, p1, p2

    return p1
.end method

.method public final equals$extension([ILjava/lang/Object;)Z
    .locals 3

    .line 234
    instance-of v0, p2, Lscala/collection/mutable/ArrayOps$ofInt;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    check-cast p2, Lscala/collection/mutable/ArrayOps$ofInt;

    invoke-virtual {p2}, Lscala/collection/mutable/ArrayOps$ofInt;->repr()[I

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

.method public final hashCode$extension([I)I
    .locals 0

    .line 234
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method public final length$extension([I)I
    .locals 0

    .line 240
    array-length p1, p1

    return p1
.end method

.method public final newBuilder$extension([I)Lscala/collection/mutable/ArrayBuilder$ofInt;
    .locals 0

    .line 238
    new-instance p1, Lscala/collection/mutable/ArrayBuilder$ofInt;

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofInt;-><init>()V

    return-object p1
.end method

.method public final thisCollection$extension([I)Lscala/collection/mutable/WrappedArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Lscala/collection/mutable/WrappedArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 236
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofInt;

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$ofInt;-><init>([I)V

    return-object v0
.end method

.method public final toCollection$extension([I[I)Lscala/collection/mutable/WrappedArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[I)",
            "Lscala/collection/mutable/WrappedArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 237
    new-instance p1, Lscala/collection/mutable/WrappedArray$ofInt;

    invoke-direct {p1, p2}, Lscala/collection/mutable/WrappedArray$ofInt;-><init>([I)V

    return-object p1
.end method

.method public final update$extension([III)V
    .locals 0

    .line 242
    aput p3, p1, p2

    return-void
.end method
