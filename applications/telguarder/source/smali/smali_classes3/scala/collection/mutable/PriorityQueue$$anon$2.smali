.class public final Lscala/collection/mutable/PriorityQueue$$anon$2;
.super Lscala/collection/AbstractIterator;
.source "PriorityQueue.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/PriorityQueue;->iterator()Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "TA;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/mutable/PriorityQueue;

.field private i:I


# direct methods
.method public constructor <init>(Lscala/collection/mutable/PriorityQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/PriorityQueue<",
            "TA;>;)V"
        }
    .end annotation

    .line 169
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/PriorityQueue$$anon$2;->$outer:Lscala/collection/mutable/PriorityQueue;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    const/4 p1, 0x1

    .line 170
    iput p1, p0, Lscala/collection/mutable/PriorityQueue$$anon$2;->i:I

    return-void
.end method

.method private i()I
    .locals 1

    .line 170
    iget v0, p0, Lscala/collection/mutable/PriorityQueue$$anon$2;->i:I

    return v0
.end method

.method private i_$eq(I)V
    .locals 0

    .line 170
    iput p1, p0, Lscala/collection/mutable/PriorityQueue$$anon$2;->i:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 171
    invoke-direct {p0}, Lscala/collection/mutable/PriorityQueue$$anon$2;->i()I

    move-result v0

    iget-object v1, p0, Lscala/collection/mutable/PriorityQueue$$anon$2;->$outer:Lscala/collection/mutable/PriorityQueue;

    invoke-virtual {v1}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$resarr()Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;->p_size0()I

    move-result v1

    if-ge v0, v1, :cond_0

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
            "()TA;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lscala/collection/mutable/PriorityQueue$$anon$2;->$outer:Lscala/collection/mutable/PriorityQueue;

    invoke-virtual {v0}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$resarr()Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;->p_array()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lscala/collection/mutable/PriorityQueue$$anon$2;->i()I

    move-result v1

    aget-object v0, v0, v1

    .line 174
    invoke-direct {p0}, Lscala/collection/mutable/PriorityQueue$$anon$2;->i()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lscala/collection/mutable/PriorityQueue$$anon$2;->i_$eq(I)V

    .line 175
    iget-object v1, p0, Lscala/collection/mutable/PriorityQueue$$anon$2;->$outer:Lscala/collection/mutable/PriorityQueue;

    invoke-virtual {v1, v0}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$toA(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
