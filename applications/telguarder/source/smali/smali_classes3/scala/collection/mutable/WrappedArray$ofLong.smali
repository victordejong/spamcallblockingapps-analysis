.class public final Lscala/collection/mutable/WrappedArray$ofLong;
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
    name = "ofLong"
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
.field private final array:[J


# direct methods
.method public constructor <init>([J)V
    .locals 0

    .line 159
    iput-object p1, p0, Lscala/collection/mutable/WrappedArray$ofLong;->array:[J

    invoke-direct {p0}, Lscala/collection/mutable/WrappedArray;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(I)J
    .locals 2

    .line 162
    invoke-virtual {p0, p1}, Lscala/collection/mutable/WrappedArray$ofLong;->apply$mcJI$sp(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic apply(I)Ljava/lang/Object;
    .locals 2

    .line 159
    invoke-virtual {p0, p1}, Lscala/collection/mutable/WrappedArray$ofLong;->apply(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 159
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/WrappedArray$ofLong;->apply(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public apply$mcJI$sp(I)J
    .locals 3

    .line 162
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray$ofLong;->array()[J

    move-result-object v0

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public bridge synthetic array()Ljava/lang/Object;
    .locals 1

    .line 159
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray$ofLong;->array()[J

    move-result-object v0

    return-object v0
.end method

.method public array()[J
    .locals 1

    .line 159
    iget-object v0, p0, Lscala/collection/mutable/WrappedArray$ofLong;->array:[J

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

    .line 160
    sget-object v0, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {v0}, Lscala/reflect/ClassTag$;->Long()Lscala/reflect/ClassTag;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 161
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray$ofLong;->array()[J

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public update(IJ)V
    .locals 1

    .line 163
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray$ofLong;->array()[J

    move-result-object v0

    aput-wide p2, v0, p1

    return-void
.end method

.method public bridge synthetic update(ILjava/lang/Object;)V
    .locals 2

    .line 159
    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lscala/collection/mutable/WrappedArray$ofLong;->update(IJ)V

    return-void
.end method
