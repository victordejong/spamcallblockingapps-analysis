.class public final Lscala/Predef$SeqCharSequence;
.super Ljava/lang/Object;
.source "Predef.scala"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/Predef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SeqCharSequence"
.end annotation


# instance fields
.field private final __sequenceOfChars:Lscala/collection/IndexedSeq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/IndexedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/IndexedSeq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/IndexedSeq<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 284
    iput-object p1, p0, Lscala/Predef$SeqCharSequence;->__sequenceOfChars:Lscala/collection/IndexedSeq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public __sequenceOfChars()Lscala/collection/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/IndexedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lscala/Predef$SeqCharSequence;->__sequenceOfChars:Lscala/collection/IndexedSeq;

    return-object v0
.end method

.method public charAt(I)C
    .locals 1

    .line 286
    invoke-virtual {p0}, Lscala/Predef$SeqCharSequence;->__sequenceOfChars()Lscala/collection/IndexedSeq;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/IndexedSeq;->apply(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p1

    return p1
.end method

.method public length()I
    .locals 1

    .line 285
    invoke-virtual {p0}, Lscala/Predef$SeqCharSequence;->__sequenceOfChars()Lscala/collection/IndexedSeq;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/IndexedSeq;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    .line 287
    new-instance v0, Lscala/Predef$SeqCharSequence;

    invoke-virtual {p0}, Lscala/Predef$SeqCharSequence;->__sequenceOfChars()Lscala/collection/IndexedSeq;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lscala/collection/IndexedSeq;->slice(II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/IndexedSeq;

    invoke-direct {v0, p1}, Lscala/Predef$SeqCharSequence;-><init>(Lscala/collection/IndexedSeq;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 288
    invoke-virtual {p0}, Lscala/Predef$SeqCharSequence;->__sequenceOfChars()Lscala/collection/IndexedSeq;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lscala/collection/IndexedSeq;->mkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
