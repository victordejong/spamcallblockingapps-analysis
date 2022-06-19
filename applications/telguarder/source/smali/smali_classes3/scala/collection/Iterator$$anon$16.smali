.class public final Lscala/collection/Iterator$$anon$16;
.super Lscala/collection/AbstractIterator;
.source "Iterator.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/Iterator;->takeWhile(Lscala/Function1;)Lscala/collection/Iterator;
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
.field private hd:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private hdDefined:Z

.field private final p$3:Lscala/Function1;

.field private tail:Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/Iterator;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "TA;>;)V"
        }
    .end annotation

    .line 530
    iput-object p2, p0, Lscala/collection/Iterator$$anon$16;->p$3:Lscala/Function1;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    const/4 p2, 0x0

    .line 532
    iput-boolean p2, p0, Lscala/collection/Iterator$$anon$16;->hdDefined:Z

    .line 533
    iput-object p1, p0, Lscala/collection/Iterator$$anon$16;->tail:Lscala/collection/Iterator;

    return-void
.end method

.method private hd()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 531
    iget-object v0, p0, Lscala/collection/Iterator$$anon$16;->hd:Ljava/lang/Object;

    return-object v0
.end method

.method private hdDefined()Z
    .locals 1

    .line 532
    iget-boolean v0, p0, Lscala/collection/Iterator$$anon$16;->hdDefined:Z

    return v0
.end method

.method private hdDefined_$eq(Z)V
    .locals 0

    .line 532
    iput-boolean p1, p0, Lscala/collection/Iterator$$anon$16;->hdDefined:Z

    return-void
.end method

.method private hd_$eq(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 531
    iput-object p1, p0, Lscala/collection/Iterator$$anon$16;->hd:Ljava/lang/Object;

    return-void
.end method

.method private tail()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 533
    iget-object v0, p0, Lscala/collection/Iterator$$anon$16;->tail:Lscala/collection/Iterator;

    return-object v0
.end method

.method private tail_$eq(Lscala/collection/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "TA;>;)V"
        }
    .end annotation

    .line 533
    iput-object p1, p0, Lscala/collection/Iterator$$anon$16;->tail:Lscala/collection/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 535
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$16;->hdDefined()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-direct {p0}, Lscala/collection/Iterator$$anon$16;->tail()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$16;->tail()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/Iterator$$anon$16;->hd_$eq(Ljava/lang/Object;)V

    .line 537
    iget-object v0, p0, Lscala/collection/Iterator$$anon$16;->p$3:Lscala/Function1;

    invoke-direct {p0}, Lscala/collection/Iterator$$anon$16;->hd()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lscala/collection/Iterator$$anon$16;->hdDefined_$eq(Z)V

    goto :goto_0

    .line 538
    :cond_0
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/Iterator$$anon$16;->tail_$eq(Lscala/collection/Iterator;)V

    .line 539
    :goto_0
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$16;->hdDefined()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 541
    invoke-virtual {p0}, Lscala/collection/Iterator$$anon$16;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lscala/collection/Iterator$$anon$16;->hdDefined_$eq(Z)V

    invoke-direct {p0}, Lscala/collection/Iterator$$anon$16;->hd()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method
