.class public Lscala/collection/parallel/immutable/Repetition$ParIterator$;
.super Ljava/lang/Object;
.source "package.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/immutable/Repetition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParIterator$"
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/immutable/Repetition;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/immutable/Repetition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/immutable/Repetition<",
            "TT;>;)V"
        }
    .end annotation

    .line 26
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/immutable/Repetition$ParIterator$;->$outer:Lscala/collection/parallel/immutable/Repetition;

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

    .line 26
    iget-object v0, p0, Lscala/collection/parallel/immutable/Repetition$ParIterator$;->$outer:Lscala/collection/parallel/immutable/Repetition;

    invoke-virtual {v0}, Lscala/collection/parallel/immutable/Repetition;->length()I

    move-result v0

    return v0
.end method

.method public $lessinit$greater$default$3()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lscala/collection/parallel/immutable/Repetition$ParIterator$;->$outer:Lscala/collection/parallel/immutable/Repetition;

    iget-object v0, v0, Lscala/collection/parallel/immutable/Repetition;->scala$collection$parallel$immutable$Repetition$$elem:Ljava/lang/Object;

    return-object v0
.end method
