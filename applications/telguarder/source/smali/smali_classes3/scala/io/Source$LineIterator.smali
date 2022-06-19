.class public Lscala/io/Source$LineIterator;
.super Lscala/collection/AbstractIterator;
.source "Source.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/io/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LineIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/io/Source;

.field private volatile bitmap$0:Z

.field private iter:Lscala/collection/BufferedIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/BufferedIterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final sb:Lscala/collection/mutable/StringBuilder;


# direct methods
.method public constructor <init>(Lscala/io/Source;)V
    .locals 0

    .line 203
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/io/Source$LineIterator;->$outer:Lscala/io/Source;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    .line 204
    new-instance p1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {p1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    iput-object p1, p0, Lscala/io/Source$LineIterator;->sb:Lscala/collection/mutable/StringBuilder;

    return-void
.end method

.method private iter$lzycompute()Lscala/collection/BufferedIterator;
    .locals 1

    .line 206
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lscala/io/Source$LineIterator;->bitmap$0:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lscala/io/Source$LineIterator;->scala$io$Source$LineIterator$$$outer()Lscala/io/Source;

    move-result-object v0

    invoke-virtual {v0}, Lscala/io/Source;->iter()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->buffered()Lscala/collection/BufferedIterator;

    move-result-object v0

    iput-object v0, p0, Lscala/io/Source$LineIterator;->iter:Lscala/collection/BufferedIterator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lscala/io/Source$LineIterator;->bitmap$0:Z

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/io/Source$LineIterator;->iter:Lscala/collection/BufferedIterator;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getc()Z
    .locals 5

    .line 208
    invoke-virtual {p0}, Lscala/io/Source$LineIterator;->iter()Lscala/collection/BufferedIterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/BufferedIterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 209
    invoke-virtual {p0}, Lscala/io/Source$LineIterator;->iter()Lscala/collection/BufferedIterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/BufferedIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_0

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const/16 v4, 0xd

    if-ne v0, v4, :cond_2

    .line 212
    invoke-virtual {p0}, Lscala/io/Source$LineIterator;->iter()Lscala/collection/BufferedIterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/BufferedIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lscala/io/Source$LineIterator;->iter()Lscala/collection/BufferedIterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/BufferedIterator;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result v0

    if-ne v0, v3, :cond_1

    .line 213
    invoke-virtual {p0}, Lscala/io/Source$LineIterator;->iter()Lscala/collection/BufferedIterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/BufferedIterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 212
    :cond_1
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 218
    :cond_2
    iget-object v3, p0, Lscala/io/Source$LineIterator;->sb:Lscala/collection/mutable/StringBuilder;

    invoke-virtual {v3, v0}, Lscala/collection/mutable/StringBuilder;->append(C)Lscala/collection/mutable/StringBuilder;

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public hasNext()Z
    .locals 1

    .line 222
    invoke-virtual {p0}, Lscala/io/Source$LineIterator;->iter()Lscala/collection/BufferedIterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/BufferedIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public isNewline(C)Z
    .locals 1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public iter()Lscala/collection/BufferedIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/BufferedIterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 206
    iget-boolean v0, p0, Lscala/io/Source$LineIterator;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/io/Source$LineIterator;->iter:Lscala/collection/BufferedIterator;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lscala/io/Source$LineIterator;->iter$lzycompute()Lscala/collection/BufferedIterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 203
    invoke-virtual {p0}, Lscala/io/Source$LineIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lscala/io/Source$LineIterator;->sb:Lscala/collection/mutable/StringBuilder;

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->clear()V

    .line 225
    :cond_0
    invoke-virtual {p0}, Lscala/io/Source$LineIterator;->getc()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lscala/io/Source$LineIterator;->sb:Lscala/collection/mutable/StringBuilder;

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$io$Source$LineIterator$$$outer()Lscala/io/Source;
    .locals 1

    .line 203
    iget-object v0, p0, Lscala/io/Source$LineIterator;->$outer:Lscala/io/Source;

    return-object v0
.end method
