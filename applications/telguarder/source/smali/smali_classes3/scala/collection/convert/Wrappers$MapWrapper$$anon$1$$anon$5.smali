.class public final Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5;
.super Ljava/lang/Object;
.source "Wrappers.scala"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/convert/Wrappers$MapWrapper$$anon$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TA;TB;>;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/convert/Wrappers$MapWrapper$$anon$1;

.field private prev:Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Option<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final ui:Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TA;TB;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/convert/Wrappers$MapWrapper$$anon$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/convert/Wrappers$MapWrapper<",
            "TA;TB;>.$anon$1;)V"
        }
    .end annotation

    .line 183
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5;->$outer:Lscala/collection/convert/Wrappers$MapWrapper$$anon$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1;->scala$collection$convert$Wrappers$MapWrapper$$anon$$$outer()Lscala/collection/convert/Wrappers$MapWrapper;

    move-result-object p1

    iget-object p1, p1, Lscala/collection/convert/Wrappers$MapWrapper;->scala$collection$convert$Wrappers$MapWrapper$$underlying:Lscala/collection/Map;

    invoke-interface {p1}, Lscala/collection/Map;->iterator()Lscala/collection/Iterator;

    move-result-object p1

    iput-object p1, p0, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5;->ui:Lscala/collection/Iterator;

    .line 185
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    iput-object p1, p0, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5;->prev:Lscala/Option;

    return-void
.end method

.method private prev()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "TA;>;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5;->prev:Lscala/Option;

    return-object v0
.end method

.method private prev_$eq(Lscala/Option;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "TA;>;)V"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5;->prev:Lscala/Option;

    return-void
.end method

.method private ui()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5;->ui:Lscala/collection/Iterator;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 187
    invoke-direct {p0}, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5;->ui()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 183
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5;->ui()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/Tuple2;

    if-eqz v0, :cond_0

    new-instance v1, Lscala/Tuple2;

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    .line 191
    new-instance v2, Lscala/Some;

    invoke-direct {v2, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5;->prev_$eq(Lscala/Option;)V

    .line 192
    new-instance v2, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5$$anon$6;

    invoke-direct {v2, p0, v0, v1}, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5$$anon$6;-><init>(Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 190
    :cond_0
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public remove()V
    .locals 3

    .line 206
    invoke-direct {p0}, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5;->prev()Lscala/Option;

    move-result-object v0

    .line 207
    instance-of v1, v0, Lscala/Some;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/Some;

    .line 208
    iget-object v1, p0, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5;->$outer:Lscala/collection/convert/Wrappers$MapWrapper$$anon$1;

    invoke-virtual {v1}, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1;->scala$collection$convert$Wrappers$MapWrapper$$anon$$$outer()Lscala/collection/convert/Wrappers$MapWrapper;

    move-result-object v1

    iget-object v1, v1, Lscala/collection/convert/Wrappers$MapWrapper;->scala$collection$convert$Wrappers$MapWrapper$$underlying:Lscala/collection/Map;

    .line 209
    instance-of v2, v1, Lscala/collection/mutable/Map;

    if-eqz v2, :cond_0

    check-cast v1, Lscala/collection/mutable/Map;

    .line 210
    invoke-virtual {v0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lscala/collection/mutable/Map;->remove(Ljava/lang/Object;)Lscala/Option;

    .line 211
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-direct {p0, v0}, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5;->prev_$eq(Lscala/Option;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 208
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-void

    .line 213
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called at least once before remove"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic scala$collection$convert$Wrappers$MapWrapper$$anon$$anon$$$outer()Lscala/collection/convert/Wrappers$MapWrapper$$anon$1;
    .locals 1

    .line 183
    iget-object v0, p0, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5;->$outer:Lscala/collection/convert/Wrappers$MapWrapper$$anon$1;

    return-object v0
.end method
