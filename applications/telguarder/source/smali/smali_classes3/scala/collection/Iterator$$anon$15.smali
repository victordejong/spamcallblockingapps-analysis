.class public final Lscala/collection/Iterator$$anon$15;
.super Lscala/collection/AbstractIterator;
.source "Iterator.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/Iterator;->scanLeft(Ljava/lang/Object;Lscala/Function2;)Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "TB;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/Iterator;

.field private elem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field

.field private hasNext:Z

.field private final op$1:Lscala/Function2;


# direct methods
.method public constructor <init>(Lscala/collection/Iterator;Ljava/lang/Object;Lscala/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "TA;>;)V"
        }
    .end annotation

    .line 494
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/Iterator$$anon$15;->$outer:Lscala/collection/Iterator;

    iput-object p3, p0, Lscala/collection/Iterator$$anon$15;->op$1:Lscala/Function2;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    const/4 p1, 0x1

    .line 495
    iput-boolean p1, p0, Lscala/collection/Iterator$$anon$15;->hasNext:Z

    .line 496
    iput-object p2, p0, Lscala/collection/Iterator$$anon$15;->elem:Ljava/lang/Object;

    return-void
.end method

.method private elem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lscala/collection/Iterator$$anon$15;->elem:Ljava/lang/Object;

    return-object v0
.end method

.method private elem_$eq(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 496
    iput-object p1, p0, Lscala/collection/Iterator$$anon$15;->elem:Ljava/lang/Object;

    return-void
.end method

.method private hasNext_$eq(Z)V
    .locals 0

    .line 495
    iput-boolean p1, p0, Lscala/collection/Iterator$$anon$15;->hasNext:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 495
    iget-boolean v0, p0, Lscala/collection/Iterator$$anon$15;->hasNext:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 497
    invoke-virtual {p0}, Lscala/collection/Iterator$$anon$15;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$15;->elem()Ljava/lang/Object;

    move-result-object v0

    .line 499
    iget-object v1, p0, Lscala/collection/Iterator$$anon$15;->$outer:Lscala/collection/Iterator;

    invoke-interface {v1}, Lscala/collection/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lscala/collection/Iterator$$anon$15;->op$1:Lscala/Function2;

    invoke-direct {p0}, Lscala/collection/Iterator$$anon$15;->elem()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lscala/collection/Iterator$$anon$15;->$outer:Lscala/collection/Iterator;

    invoke-interface {v3}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lscala/collection/Iterator$$anon$15;->elem_$eq(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 500
    invoke-direct {p0, v1}, Lscala/collection/Iterator$$anon$15;->hasNext_$eq(Z)V

    goto :goto_0

    .line 502
    :cond_1
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method
