.class public final Lscala/collection/SeqViewLike$$anon$11;
.super Lscala/collection/SeqViewLike$AbstractTransformed;
.source "SeqViewLike.scala"

# interfaces
.implements Lscala/collection/SeqViewLike$Reversed;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/SeqViewLike;->newReversed()Lscala/collection/SeqViewLike$Transformed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/SeqViewLike<",
        "TA;TColl;TThis;>.AbstractTransformed<TA;>;",
        "Lscala/collection/SeqViewLike<",
        "TA;TColl;TThis;>.Reversed;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/SeqViewLike;


# direct methods
.method public constructor <init>(Lscala/collection/SeqViewLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SeqViewLike<",
            "TA;TColl;TThis;>;)V"
        }
    .end annotation

    .line 209
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/SeqViewLike$$anon$11;->$outer:Lscala/collection/SeqViewLike;

    invoke-direct {p0, p1}, Lscala/collection/SeqViewLike$AbstractTransformed;-><init>(Lscala/collection/SeqViewLike;)V

    invoke-static {p0}, Lscala/collection/SeqViewLike$Reversed$class;->$init$(Lscala/collection/SeqViewLike$Reversed;)V

    return-void
.end method


# virtual methods
.method public apply(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation

    .line 209
    invoke-static {p0, p1}, Lscala/collection/SeqViewLike$Reversed$class;->apply(Lscala/collection/SeqViewLike$Reversed;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 209
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/SeqViewLike$$anon$11;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 209
    invoke-static {p0}, Lscala/collection/SeqViewLike$Reversed$class;->iterator(Lscala/collection/SeqViewLike$Reversed;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 209
    invoke-static {p0}, Lscala/collection/SeqViewLike$Reversed$class;->length(Lscala/collection/SeqViewLike$Reversed;)I

    move-result v0

    return v0
.end method

.method public synthetic scala$collection$SeqViewLike$Reversed$$$outer()Lscala/collection/SeqViewLike;
    .locals 1

    .line 145
    iget-object v0, p0, Lscala/collection/SeqViewLike$$anon$11;->$outer:Lscala/collection/SeqViewLike;

    return-object v0
.end method

.method public final viewIdentifier()Ljava/lang/String;
    .locals 1

    .line 209
    invoke-static {p0}, Lscala/collection/SeqViewLike$Reversed$class;->viewIdentifier(Lscala/collection/SeqViewLike$Reversed;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
