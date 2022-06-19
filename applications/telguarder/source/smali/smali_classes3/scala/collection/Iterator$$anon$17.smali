.class public final Lscala/collection/Iterator$$anon$17;
.super Lscala/collection/AbstractIterator;
.source "Iterator.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/Iterator;->span(Lscala/Function1;)Lscala/Tuple2;
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
.field private volatile bitmap$0:Z

.field private it:Lscala/collection/BufferedIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/BufferedIterator<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final leading$1:Lscala/collection/Iterator$Leading$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Iterator$Leading$1;"
        }
    .end annotation
.end field

.field private final self$3:Lscala/collection/BufferedIterator;


# direct methods
.method public constructor <init>(Lscala/collection/Iterator;Lscala/collection/BufferedIterator;Lscala/collection/Iterator$Leading$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "TA;>;)V"
        }
    .end annotation

    .line 601
    iput-object p2, p0, Lscala/collection/Iterator$$anon$17;->self$3:Lscala/collection/BufferedIterator;

    iput-object p3, p0, Lscala/collection/Iterator$$anon$17;->leading$1:Lscala/collection/Iterator$Leading$1;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    return-void
.end method

.method private it()Lscala/collection/BufferedIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/BufferedIterator<",
            "TA;>;"
        }
    .end annotation

    .line 602
    iget-boolean v0, p0, Lscala/collection/Iterator$$anon$17;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/collection/Iterator$$anon$17;->it:Lscala/collection/BufferedIterator;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$17;->it$lzycompute()Lscala/collection/BufferedIterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private it$lzycompute()Lscala/collection/BufferedIterator;
    .locals 1

    .line 602
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lscala/collection/Iterator$$anon$17;->bitmap$0:Z

    if-nez v0, :cond_0

    .line 603
    iget-object v0, p0, Lscala/collection/Iterator$$anon$17;->leading$1:Lscala/collection/Iterator$Leading$1;

    invoke-virtual {v0}, Lscala/collection/Iterator$Leading$1;->finish()V

    .line 604
    iget-object v0, p0, Lscala/collection/Iterator$$anon$17;->self$3:Lscala/collection/BufferedIterator;

    .line 602
    iput-object v0, p0, Lscala/collection/Iterator$$anon$17;->it:Lscala/collection/BufferedIterator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lscala/collection/Iterator$$anon$17;->bitmap$0:Z

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-object v0, p0, Lscala/collection/Iterator$$anon$17;->self$3:Lscala/collection/BufferedIterator;

    iput-object v0, p0, Lscala/collection/Iterator$$anon$17;->leading$1:Lscala/collection/Iterator$Leading$1;

    iget-object v0, p0, Lscala/collection/Iterator$$anon$17;->it:Lscala/collection/BufferedIterator;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 606
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$17;->it()Lscala/collection/BufferedIterator;

    move-result-object v0

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

    .line 607
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$17;->it()Lscala/collection/BufferedIterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/BufferedIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "unknown-if-empty iterator"

    return-object v0
.end method
