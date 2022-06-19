.class public final Lscala/collection/mutable/WrappedArray$ofUnit;
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
    name = "ofUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/mutable/WrappedArray<",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final array:[Lscala/runtime/BoxedUnit;


# direct methods
.method public constructor <init>([Lscala/runtime/BoxedUnit;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lscala/collection/mutable/WrappedArray$ofUnit;->array:[Lscala/runtime/BoxedUnit;

    invoke-direct {p0}, Lscala/collection/mutable/WrappedArray;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(I)Ljava/lang/Object;
    .locals 0

    .line 187
    invoke-virtual {p0, p1}, Lscala/collection/mutable/WrappedArray$ofUnit;->apply(I)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 187
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/WrappedArray$ofUnit;->apply(I)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public apply(I)V
    .locals 0

    .line 190
    invoke-virtual {p0, p1}, Lscala/collection/mutable/WrappedArray$ofUnit;->apply$mcVI$sp(I)V

    return-void
.end method

.method public apply$mcVI$sp(I)V
    .locals 1

    .line 190
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray$ofUnit;->array()[Lscala/runtime/BoxedUnit;

    move-result-object v0

    aget-object p1, v0, p1

    return-void
.end method

.method public bridge synthetic array()Ljava/lang/Object;
    .locals 1

    .line 187
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray$ofUnit;->array()[Lscala/runtime/BoxedUnit;

    move-result-object v0

    return-object v0
.end method

.method public array()[Lscala/runtime/BoxedUnit;
    .locals 1

    .line 187
    iget-object v0, p0, Lscala/collection/mutable/WrappedArray$ofUnit;->array:[Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public elemTag()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag<",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .line 188
    sget-object v0, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {v0}, Lscala/reflect/ClassTag$;->Unit()Lscala/reflect/ClassTag;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 189
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray$ofUnit;->array()[Lscala/runtime/BoxedUnit;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic update(ILjava/lang/Object;)V
    .locals 0

    .line 187
    check-cast p2, Lscala/runtime/BoxedUnit;

    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/WrappedArray$ofUnit;->update(ILscala/runtime/BoxedUnit;)V

    return-void
.end method

.method public update(ILscala/runtime/BoxedUnit;)V
    .locals 1

    .line 191
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray$ofUnit;->array()[Lscala/runtime/BoxedUnit;

    move-result-object v0

    aput-object p2, v0, p1

    return-void
.end method
