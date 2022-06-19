.class public final Lscala/collection/convert/Wrappers$SetWrapper$$anon$4;
.super Ljava/lang/Object;
.source "Wrappers.scala"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/convert/Wrappers$SetWrapper;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TA;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/convert/Wrappers$SetWrapper;

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
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/convert/Wrappers$SetWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/convert/Wrappers$SetWrapper<",
            "TA;>;)V"
        }
    .end annotation

    .line 114
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/convert/Wrappers$SetWrapper$$anon$4;->$outer:Lscala/collection/convert/Wrappers$SetWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iget-object p1, p1, Lscala/collection/convert/Wrappers$SetWrapper;->scala$collection$convert$Wrappers$SetWrapper$$underlying:Lscala/collection/Set;

    invoke-interface {p1}, Lscala/collection/Set;->iterator()Lscala/collection/Iterator;

    move-result-object p1

    iput-object p1, p0, Lscala/collection/convert/Wrappers$SetWrapper$$anon$4;->ui:Lscala/collection/Iterator;

    .line 116
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    iput-object p1, p0, Lscala/collection/convert/Wrappers$SetWrapper$$anon$4;->prev:Lscala/Option;

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

    .line 116
    iget-object v0, p0, Lscala/collection/convert/Wrappers$SetWrapper$$anon$4;->prev:Lscala/Option;

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

    .line 116
    iput-object p1, p0, Lscala/collection/convert/Wrappers$SetWrapper$$anon$4;->prev:Lscala/Option;

    return-void
.end method

.method private ui()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lscala/collection/convert/Wrappers$SetWrapper$$anon$4;->ui:Lscala/collection/Iterator;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 117
    invoke-direct {p0}, Lscala/collection/convert/Wrappers$SetWrapper$$anon$4;->ui()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Lscala/collection/convert/Wrappers$SetWrapper$$anon$4;->ui()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lscala/Some;

    invoke-direct {v1, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lscala/collection/convert/Wrappers$SetWrapper$$anon$4;->prev_$eq(Lscala/Option;)V

    return-object v0
.end method

.method public remove()V
    .locals 3

    .line 119
    invoke-direct {p0}, Lscala/collection/convert/Wrappers$SetWrapper$$anon$4;->prev()Lscala/Option;

    move-result-object v0

    .line 120
    instance-of v1, v0, Lscala/Some;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/Some;

    .line 121
    iget-object v1, p0, Lscala/collection/convert/Wrappers$SetWrapper$$anon$4;->$outer:Lscala/collection/convert/Wrappers$SetWrapper;

    iget-object v1, v1, Lscala/collection/convert/Wrappers$SetWrapper;->scala$collection$convert$Wrappers$SetWrapper$$underlying:Lscala/collection/Set;

    .line 122
    instance-of v2, v1, Lscala/collection/mutable/Set;

    if-eqz v2, :cond_0

    check-cast v1, Lscala/collection/mutable/Set;

    .line 123
    invoke-virtual {v0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lscala/collection/mutable/Set;->remove(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-direct {p0, v0}, Lscala/collection/convert/Wrappers$SetWrapper$$anon$4;->prev_$eq(Lscala/Option;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 121
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-void

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called at least once before remove"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
