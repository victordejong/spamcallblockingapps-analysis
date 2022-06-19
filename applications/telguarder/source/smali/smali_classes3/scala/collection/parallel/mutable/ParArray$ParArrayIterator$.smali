.class public Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$;
.super Ljava/lang/Object;
.source "ParArray.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/mutable/ParArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParArrayIterator$"
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/mutable/ParArray;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>;)V"
        }
    .end annotation

    .line 86
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$;->$outer:Lscala/collection/parallel/mutable/ParArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public $lessinit$greater$default$1()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public $lessinit$greater$default$2()I
    .locals 1

    .line 86
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$;->$outer:Lscala/collection/parallel/mutable/ParArray;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParArray;->length()I

    move-result v0

    return v0
.end method

.method public $lessinit$greater$default$3()[Ljava/lang/Object;
    .locals 1

    .line 86
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$;->$outer:Lscala/collection/parallel/mutable/ParArray;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParArray;->scala$collection$parallel$mutable$ParArray$$array()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
