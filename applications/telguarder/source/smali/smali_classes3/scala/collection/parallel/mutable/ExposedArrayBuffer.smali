.class public Lscala/collection/parallel/mutable/ExposedArrayBuffer;
.super Lscala/collection/mutable/ArrayBuffer;
.source "package.scala"

# interfaces
.implements Lscala/collection/generic/Sizing;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/ArrayBuffer<",
        "TT;>;",
        "Lscala/collection/generic/Sizing;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\t3Q!\u0001\u0002\u0001\u0005)\u0011!#\u0012=q_N,G-\u0011:sCf\u0014UO\u001a4fe*\u00111\u0001B\u0001\u0008[V$\u0018M\u00197f\u0015\t)a!\u0001\u0005qCJ\u000cG\u000e\\3m\u0015\t9\u0001\"\u0001\u0006d_2dWm\u0019;j_:T\u0011!C\u0001\u0006g\u000e\u000cG.Y\u000b\u0003\u0017M\u00192\u0001\u0001\u0007\u001f!\riq\"E\u0007\u0002\u001d)\u00111AB\u0005\u0003!9\u00111\"\u0011:sCf\u0014UO\u001a4feB\u0011!c\u0005\u0007\u0001\t\u0015!\u0002A1\u0001\u0017\u0005\u0005!6\u0001A\t\u0003/m\u0001\"\u0001G\r\u000e\u0003!I!A\u0007\u0005\u0003\u000f9{G\u000f[5oOB\u0011\u0001\u0004H\u0005\u0003;!\u00111!\u00118z!\ty\"%D\u0001!\u0015\t\tc!A\u0004hK:,\'/[2\n\u0005\r\u0002#AB*ju&tw\rC\u0003&\u0001\u0011\u0005a%\u0001\u0004=S:LGO\u0010\u000b\u0002OA\u0019\u0001\u0006A\t\u000e\u0003\tAQA\u000b\u0001\u0005\u0002-\nQ\"\u001b8uKJt\u0017\r\\!se\u0006LX#\u0001\u0017\u0011\u0007ais&\u0003\u0002/\u0011\t)\u0011I\u001d:bsB\u0011\u0001\u0004M\u0005\u0003c!\u0011a!\u00118z%\u00164\u0007\"B\u001a\u0001\t\u0003!\u0014aD:fi&sG/\u001a:oC2\u001c\u0016N_3\u0015\u0005UB\u0004C\u0001\r7\u0013\t9\u0004B\u0001\u0003V]&$\u0008\"B\u001d3\u0001\u0004Q\u0014!A:\u0011\u0005aY\u0014B\u0001\u001f\t\u0005\rIe\u000e\u001e\u0005\u0006}\u0001!\teP\u0001\tg&TX\rS5oiR\u0011Q\u0007\u0011\u0005\u0006\u0003v\u0002\rAO\u0001\u0004Y\u0016t\u0007"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public internalArray()[Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ExposedArrayBuffer;->array()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setInternalSize(I)V
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ExposedArrayBuffer;->size0_$eq(I)V

    return-void
.end method

.method public sizeHint(I)V
    .locals 7

    .line 64
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ExposedArrayBuffer;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 65
    new-array p1, p1, [Ljava/lang/Object;

    .line 66
    sget-object v1, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ExposedArrayBuffer;->array()[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ExposedArrayBuffer;->size0()I

    move-result v6

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ExposedArrayBuffer;->array_$eq([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
