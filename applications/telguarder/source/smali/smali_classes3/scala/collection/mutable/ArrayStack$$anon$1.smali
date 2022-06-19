.class public final Lscala/collection/mutable/ArrayStack$$anon$1;
.super Lscala/collection/AbstractIterator;
.source "ArrayStack.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/ArrayStack;->iterator()Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/mutable/ArrayStack;

.field private currentIndex:I


# direct methods
.method public constructor <init>(Lscala/collection/mutable/ArrayStack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/ArrayStack<",
            "TT;>;)V"
        }
    .end annotation

    .line 227
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/ArrayStack$$anon$1;->$outer:Lscala/collection/mutable/ArrayStack;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    .line 228
    invoke-virtual {p1}, Lscala/collection/mutable/ArrayStack;->scala$collection$mutable$ArrayStack$$index()I

    move-result p1

    iput p1, p0, Lscala/collection/mutable/ArrayStack$$anon$1;->currentIndex:I

    return-void
.end method

.method private currentIndex()I
    .locals 1

    .line 228
    iget v0, p0, Lscala/collection/mutable/ArrayStack$$anon$1;->currentIndex:I

    return v0
.end method

.method private currentIndex_$eq(I)V
    .locals 0

    .line 228
    iput p1, p0, Lscala/collection/mutable/ArrayStack$$anon$1;->currentIndex:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 229
    invoke-direct {p0}, Lscala/collection/mutable/ArrayStack$$anon$1;->currentIndex()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 231
    invoke-direct {p0}, Lscala/collection/mutable/ArrayStack$$anon$1;->currentIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayStack$$anon$1;->currentIndex_$eq(I)V

    .line 232
    iget-object v0, p0, Lscala/collection/mutable/ArrayStack$$anon$1;->$outer:Lscala/collection/mutable/ArrayStack;

    invoke-virtual {v0}, Lscala/collection/mutable/ArrayStack;->scala$collection$mutable$ArrayStack$$table()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayStack$$anon$1;->currentIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
