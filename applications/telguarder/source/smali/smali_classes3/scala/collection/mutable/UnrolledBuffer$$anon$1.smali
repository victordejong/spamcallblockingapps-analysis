.class public final Lscala/collection/mutable/UnrolledBuffer$$anon$1;
.super Lscala/collection/AbstractIterator;
.source "UnrolledBuffer.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/UnrolledBuffer;->iterator()Lscala/collection/Iterator;
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
.field private node:Lscala/collection/mutable/UnrolledBuffer$Unrolled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "TT;>;"
        }
    .end annotation
.end field

.field private pos:I


# direct methods
.method public constructor <init>(Lscala/collection/mutable/UnrolledBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "TT;>;)V"
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    const/4 v0, -0x1

    .line 124
    iput v0, p0, Lscala/collection/mutable/UnrolledBuffer$$anon$1;->pos:I

    .line 125
    invoke-virtual {p1}, Lscala/collection/mutable/UnrolledBuffer;->scala$collection$mutable$UnrolledBuffer$$headptr()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object p1

    iput-object p1, p0, Lscala/collection/mutable/UnrolledBuffer$$anon$1;->node:Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    .line 126
    invoke-direct {p0}, Lscala/collection/mutable/UnrolledBuffer$$anon$1;->scan()V

    return-void
.end method

.method private node()Lscala/collection/mutable/UnrolledBuffer$Unrolled;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "TT;>;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lscala/collection/mutable/UnrolledBuffer$$anon$1;->node:Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    return-object v0
.end method

.method private node_$eq(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "TT;>;)V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lscala/collection/mutable/UnrolledBuffer$$anon$1;->node:Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    return-void
.end method

.method private pos()I
    .locals 1

    .line 124
    iget v0, p0, Lscala/collection/mutable/UnrolledBuffer$$anon$1;->pos:I

    return v0
.end method

.method private pos_$eq(I)V
    .locals 0

    .line 124
    iput p1, p0, Lscala/collection/mutable/UnrolledBuffer$$anon$1;->pos:I

    return-void
.end method

.method private scan()V
    .locals 2

    .line 129
    invoke-direct {p0}, Lscala/collection/mutable/UnrolledBuffer$$anon$1;->pos()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lscala/collection/mutable/UnrolledBuffer$$anon$1;->pos_$eq(I)V

    .line 130
    :cond_0
    invoke-direct {p0}, Lscala/collection/mutable/UnrolledBuffer$$anon$1;->pos()I

    move-result v0

    invoke-direct {p0}, Lscala/collection/mutable/UnrolledBuffer$$anon$1;->node()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, v0}, Lscala/collection/mutable/UnrolledBuffer$$anon$1;->pos_$eq(I)V

    .line 132
    invoke-direct {p0}, Lscala/collection/mutable/UnrolledBuffer$$anon$1;->node()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->next()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/mutable/UnrolledBuffer$$anon$1;->node_$eq(Lscala/collection/mutable/UnrolledBuffer$Unrolled;)V

    .line 133
    invoke-direct {p0}, Lscala/collection/mutable/UnrolledBuffer$$anon$1;->node()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 136
    invoke-direct {p0}, Lscala/collection/mutable/UnrolledBuffer$$anon$1;->node()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lscala/collection/mutable/UnrolledBuffer$$anon$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-direct {p0}, Lscala/collection/mutable/UnrolledBuffer$$anon$1;->node()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->array()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0}, Lscala/collection/mutable/UnrolledBuffer$$anon$1;->pos()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 139
    invoke-direct {p0}, Lscala/collection/mutable/UnrolledBuffer$$anon$1;->scan()V

    goto :goto_0

    .line 141
    :cond_0
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method
