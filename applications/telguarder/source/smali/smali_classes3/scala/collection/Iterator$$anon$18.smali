.class public final Lscala/collection/Iterator$$anon$18;
.super Lscala/collection/AbstractIterator;
.source "Iterator.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/Iterator;->dropWhile(Lscala/Function1;)Lscala/collection/Iterator;
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
.field private dropped:Z

.field private final p$6:Lscala/Function1;

.field private final self$4:Lscala/collection/BufferedIterator;


# direct methods
.method public constructor <init>(Lscala/collection/Iterator;Lscala/collection/BufferedIterator;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "TA;>;)V"
        }
    .end annotation

    .line 623
    iput-object p2, p0, Lscala/collection/Iterator$$anon$18;->self$4:Lscala/collection/BufferedIterator;

    iput-object p3, p0, Lscala/collection/Iterator$$anon$18;->p$6:Lscala/Function1;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    const/4 p1, 0x0

    .line 624
    iput-boolean p1, p0, Lscala/collection/Iterator$$anon$18;->dropped:Z

    return-void
.end method

.method private dropped()Z
    .locals 1

    .line 624
    iget-boolean v0, p0, Lscala/collection/Iterator$$anon$18;->dropped:Z

    return v0
.end method

.method private dropped_$eq(Z)V
    .locals 0

    .line 624
    iput-boolean p1, p0, Lscala/collection/Iterator$$anon$18;->dropped:Z

    return-void
.end method

.method private skip()V
    .locals 2

    .line 626
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$18;->dropped()Z

    move-result v0

    if-nez v0, :cond_1

    .line 627
    :goto_0
    iget-object v0, p0, Lscala/collection/Iterator$$anon$18;->self$4:Lscala/collection/BufferedIterator;

    invoke-interface {v0}, Lscala/collection/BufferedIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/collection/Iterator$$anon$18;->p$6:Lscala/Function1;

    iget-object v1, p0, Lscala/collection/Iterator$$anon$18;->self$4:Lscala/collection/BufferedIterator;

    invoke-interface {v1}, Lscala/collection/BufferedIterator;->head()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/collection/Iterator$$anon$18;->self$4:Lscala/collection/BufferedIterator;

    invoke-interface {v0}, Lscala/collection/BufferedIterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 628
    invoke-direct {p0, v0}, Lscala/collection/Iterator$$anon$18;->dropped_$eq(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 630
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$18;->skip()V

    iget-object v0, p0, Lscala/collection/Iterator$$anon$18;->self$4:Lscala/collection/BufferedIterator;

    invoke-interface {v0}, Lscala/collection/BufferedIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 631
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$18;->skip()V

    iget-object v0, p0, Lscala/collection/Iterator$$anon$18;->self$4:Lscala/collection/BufferedIterator;

    invoke-interface {v0}, Lscala/collection/BufferedIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
