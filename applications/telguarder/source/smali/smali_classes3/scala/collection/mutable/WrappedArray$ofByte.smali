.class public final Lscala/collection/mutable/WrappedArray$ofByte;
.super Lscala/collection/mutable/WrappedArray;
.source "WrappedArray.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/WrappedArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ofByte"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/mutable/WrappedArray<",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final array:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 131
    iput-object p1, p0, Lscala/collection/mutable/WrappedArray$ofByte;->array:[B

    invoke-direct {p0}, Lscala/collection/mutable/WrappedArray;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(I)B
    .locals 1

    .line 134
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray$ofByte;->array()[B

    move-result-object v0

    aget-byte p1, v0, p1

    return p1
.end method

.method public bridge synthetic apply(I)Ljava/lang/Object;
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Lscala/collection/mutable/WrappedArray$ofByte;->apply(I)B

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToByte(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 131
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/WrappedArray$ofByte;->apply(I)B

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToByte(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic array()Ljava/lang/Object;
    .locals 1

    .line 131
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray$ofByte;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public array()[B
    .locals 1

    .line 131
    iget-object v0, p0, Lscala/collection/mutable/WrappedArray$ofByte;->array:[B

    return-object v0
.end method

.method public elemTag()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 132
    sget-object v0, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {v0}, Lscala/reflect/ClassTag$;->Byte()Lscala/reflect/ClassTag;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 133
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray$ofByte;->array()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public update(IB)V
    .locals 1

    .line 135
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray$ofByte;->array()[B

    move-result-object v0

    aput-byte p2, v0, p1

    return-void
.end method

.method public bridge synthetic update(ILjava/lang/Object;)V
    .locals 0

    .line 131
    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToByte(Ljava/lang/Object;)B

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/WrappedArray$ofByte;->update(IB)V

    return-void
.end method
