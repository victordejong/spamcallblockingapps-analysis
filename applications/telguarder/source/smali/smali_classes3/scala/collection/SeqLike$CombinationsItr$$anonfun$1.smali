.class public final Lscala/collection/SeqLike$CombinationsItr$$anonfun$1;
.super Lscala/runtime/AbstractFunction2$mcIII$sp;
.source "SeqLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/SeqLike$CombinationsItr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/SeqLike$CombinationsItr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SeqLike<",
            "TA;TRepr;>.CombinationsItr;)V"
        }
    .end annotation

    .line 213
    invoke-direct {p0}, Lscala/runtime/AbstractFunction2$mcIII$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(II)I
    .locals 0

    add-int/2addr p1, p2

    return p1
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 213
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/collection/SeqLike$CombinationsItr$$anonfun$1;->apply(II)I

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public apply$mcIII$sp(II)I
    .locals 0

    add-int/2addr p1, p2

    return p1
.end method
