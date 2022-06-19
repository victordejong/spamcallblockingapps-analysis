.class public Lscala/collection/parallel/immutable/ParRange$ParRangeIterator$;
.super Ljava/lang/Object;
.source "ParRange.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/immutable/ParRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParRangeIterator$"
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/immutable/ParRange;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/immutable/ParRange;)V
    .locals 0

    .line 49
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/immutable/ParRange$ParRangeIterator$;->$outer:Lscala/collection/parallel/immutable/ParRange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public $lessinit$greater$default$1()Lscala/collection/immutable/Range;
    .locals 1

    .line 49
    iget-object v0, p0, Lscala/collection/parallel/immutable/ParRange$ParRangeIterator$;->$outer:Lscala/collection/parallel/immutable/ParRange;

    invoke-virtual {v0}, Lscala/collection/parallel/immutable/ParRange;->range()Lscala/collection/immutable/Range;

    move-result-object v0

    return-object v0
.end method
