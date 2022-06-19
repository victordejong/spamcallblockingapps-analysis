.class public Lscala/collection/mutable/ArrayOps$ofByte$;
.super Ljava/lang/Object;
.source "ArrayOps.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/ArrayOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ofByte$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/ArrayOps$ofByte$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/ArrayOps$ofByte$;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayOps$ofByte$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/mutable/ArrayOps$ofByte$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofByte$;

    return-void
.end method


# virtual methods
.method public final apply$extension([BI)B
    .locals 0

    .line 205
    aget-byte p1, p1, p2

    return p1
.end method

.method public final equals$extension([BLjava/lang/Object;)Z
    .locals 3

    .line 198
    instance-of v0, p2, Lscala/collection/mutable/ArrayOps$ofByte;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    check-cast p2, Lscala/collection/mutable/ArrayOps$ofByte;

    invoke-virtual {p2}, Lscala/collection/mutable/ArrayOps$ofByte;->repr()[B

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

.method public final hashCode$extension([B)I
    .locals 0

    .line 198
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method public final length$extension([B)I
    .locals 0

    .line 204
    array-length p1, p1

    return p1
.end method

.method public final newBuilder$extension([B)Lscala/collection/mutable/ArrayBuilder$ofByte;
    .locals 0

    .line 202
    new-instance p1, Lscala/collection/mutable/ArrayBuilder$ofByte;

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofByte;-><init>()V

    return-object p1
.end method

.method public final thisCollection$extension([B)Lscala/collection/mutable/WrappedArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lscala/collection/mutable/WrappedArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofByte;

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$ofByte;-><init>([B)V

    return-object v0
.end method

.method public final toCollection$extension([B[B)Lscala/collection/mutable/WrappedArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Lscala/collection/mutable/WrappedArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 201
    new-instance p1, Lscala/collection/mutable/WrappedArray$ofByte;

    invoke-direct {p1, p2}, Lscala/collection/mutable/WrappedArray$ofByte;-><init>([B)V

    return-object p1
.end method

.method public final update$extension([BIB)V
    .locals 0

    .line 206
    aput-byte p3, p1, p2

    return-void
.end method
