.class public final Lscala/collection/parallel/mutable/ResizableParArrayCombiner$;
.super Ljava/lang/Object;
.source "ResizableParArrayCombiner.scala"


# static fields
.field public static final MODULE$:Lscala/collection/parallel/mutable/ResizableParArrayCombiner$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$;

    invoke-direct {v0}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$;->MODULE$:Lscala/collection/parallel/mutable/ResizableParArrayCombiner$;

    return-void
.end method


# virtual methods
.method public apply()Lscala/collection/parallel/mutable/ResizableParArrayCombiner;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/mutable/ResizableParArrayCombiner<",
            "TT;>;"
        }
    .end annotation

    .line 93
    new-instance v0, Lscala/collection/mutable/ArrayBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayBuffer;-><init>()V

    new-instance v1, Lscala/collection/parallel/mutable/ExposedArrayBuffer;

    invoke-direct {v1}, Lscala/collection/parallel/mutable/ExposedArrayBuffer;-><init>()V

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$;->apply(Lscala/collection/mutable/ArrayBuffer;)Lscala/collection/parallel/mutable/ResizableParArrayCombiner;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lscala/collection/mutable/ArrayBuffer;)Lscala/collection/parallel/mutable/ResizableParArrayCombiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/mutable/ArrayBuffer<",
            "Lscala/collection/parallel/mutable/ExposedArrayBuffer<",
            "TT;>;>;)",
            "Lscala/collection/parallel/mutable/ResizableParArrayCombiner<",
            "TT;>;"
        }
    .end annotation

    .line 91
    new-instance v0, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$$anon$1;

    invoke-direct {v0, p1}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$$anon$1;-><init>(Lscala/collection/mutable/ArrayBuffer;)V

    return-object v0
.end method
