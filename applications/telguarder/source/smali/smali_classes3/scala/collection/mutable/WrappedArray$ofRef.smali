.class public final Lscala/collection/mutable/WrappedArray$ofRef;
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
    name = "ofRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/WrappedArray<",
        "TT;>;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private volatile bitmap$0:Z

.field private elemTag:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lscala/collection/mutable/WrappedArray$ofRef;->array:[Ljava/lang/Object;

    invoke-direct {p0}, Lscala/collection/mutable/WrappedArray;-><init>()V

    return-void
.end method

.method private elemTag$lzycompute()Lscala/reflect/ClassTag;
    .locals 3

    .line 125
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lscala/collection/mutable/WrappedArray$ofRef;->bitmap$0:Z

    if-nez v0, :cond_0

    sget-object v0, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray$ofRef;->array()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/runtime/ScalaRunTime$;->arrayElementClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v0

    iput-object v0, p0, Lscala/collection/mutable/WrappedArray$ofRef;->elemTag:Lscala/reflect/ClassTag;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lscala/collection/mutable/WrappedArray$ofRef;->bitmap$0:Z

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/mutable/WrappedArray$ofRef;->elemTag:Lscala/reflect/ClassTag;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public apply(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray$ofRef;->array()[Ljava/lang/Object;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 124
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/WrappedArray$ofRef;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic array()Ljava/lang/Object;
    .locals 1

    .line 124
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray$ofRef;->array()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public array()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lscala/collection/mutable/WrappedArray$ofRef;->array:[Ljava/lang/Object;

    return-object v0
.end method

.method public elemTag()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag<",
            "TT;>;"
        }
    .end annotation

    .line 125
    iget-boolean v0, p0, Lscala/collection/mutable/WrappedArray$ofRef;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/collection/mutable/WrappedArray$ofRef;->elemTag:Lscala/reflect/ClassTag;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lscala/collection/mutable/WrappedArray$ofRef;->elemTag$lzycompute()Lscala/reflect/ClassTag;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public length()I
    .locals 1

    .line 126
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray$ofRef;->array()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public update(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray$ofRef;->array()[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, p1

    return-void
.end method
