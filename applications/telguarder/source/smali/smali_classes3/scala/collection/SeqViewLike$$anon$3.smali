.class public final Lscala/collection/SeqViewLike$$anon$3;
.super Lscala/collection/SeqViewLike$AbstractTransformed;
.source "SeqViewLike.scala"

# interfaces
.implements Lscala/collection/SeqViewLike$Mapped;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/SeqViewLike;->newMapped(Lscala/Function1;)Lscala/collection/SeqViewLike$Transformed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/SeqViewLike<",
        "TA;TColl;TThis;>.AbstractTransformed<TB;>;",
        "Lscala/collection/SeqViewLike<",
        "TA;TColl;TThis;>.Mapped<TB;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/SeqViewLike;

.field private final mapping:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "TA;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/SeqViewLike;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SeqViewLike<",
            "TA;TColl;TThis;>;)V"
        }
    .end annotation

    .line 197
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/SeqViewLike$$anon$3;->$outer:Lscala/collection/SeqViewLike;

    iput-object p2, p0, Lscala/collection/SeqViewLike$$anon$3;->mapping:Lscala/Function1;

    invoke-direct {p0, p1}, Lscala/collection/SeqViewLike$AbstractTransformed;-><init>(Lscala/collection/SeqViewLike;)V

    invoke-static {p0}, Lscala/collection/TraversableViewLike$Mapped$class;->$init$(Lscala/collection/TraversableViewLike$Mapped;)V

    invoke-static {p0}, Lscala/collection/IterableViewLike$Mapped$class;->$init$(Lscala/collection/IterableViewLike$Mapped;)V

    invoke-static {p0}, Lscala/collection/SeqViewLike$Mapped$class;->$init$(Lscala/collection/SeqViewLike$Mapped;)V

    return-void
.end method


# virtual methods
.method public apply(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 197
    invoke-static {p0, p1}, Lscala/collection/SeqViewLike$Mapped$class;->apply(Lscala/collection/SeqViewLike$Mapped;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 197
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/SeqViewLike$$anon$3;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public foreach(Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TB;TU;>;)V"
        }
    .end annotation

    .line 197
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$Mapped$class;->foreach(Lscala/collection/TraversableViewLike$Mapped;Lscala/Function1;)V

    return-void
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 197
    invoke-static {p0}, Lscala/collection/IterableViewLike$Mapped$class;->iterator(Lscala/collection/IterableViewLike$Mapped;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 197
    invoke-static {p0}, Lscala/collection/SeqViewLike$Mapped$class;->length(Lscala/collection/SeqViewLike$Mapped;)I

    move-result v0

    return v0
.end method

.method public mapping()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "TA;TB;>;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lscala/collection/SeqViewLike$$anon$3;->mapping:Lscala/Function1;

    return-object v0
.end method

.method public synthetic scala$collection$IterableViewLike$Mapped$$$outer()Lscala/collection/IterableViewLike;
    .locals 1

    .line 61
    iget-object v0, p0, Lscala/collection/SeqViewLike$$anon$3;->$outer:Lscala/collection/SeqViewLike;

    return-object v0
.end method

.method public synthetic scala$collection$SeqViewLike$Mapped$$$outer()Lscala/collection/SeqViewLike;
    .locals 1

    .line 65
    iget-object v0, p0, Lscala/collection/SeqViewLike$$anon$3;->$outer:Lscala/collection/SeqViewLike;

    return-object v0
.end method

.method public synthetic scala$collection$TraversableViewLike$Mapped$$$outer()Lscala/collection/TraversableViewLike;
    .locals 1

    .line 165
    iget-object v0, p0, Lscala/collection/SeqViewLike$$anon$3;->$outer:Lscala/collection/SeqViewLike;

    return-object v0
.end method

.method public final viewIdentifier()Ljava/lang/String;
    .locals 1

    .line 197
    invoke-static {p0}, Lscala/collection/TraversableViewLike$Mapped$class;->viewIdentifier(Lscala/collection/TraversableViewLike$Mapped;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
