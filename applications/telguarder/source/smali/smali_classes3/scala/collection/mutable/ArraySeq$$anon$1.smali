.class public final Lscala/collection/mutable/ArraySeq$$anon$1;
.super Lscala/collection/mutable/ArraySeq;
.source "ArraySeq.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/ArraySeq;->clone()Lscala/collection/mutable/ArraySeq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/mutable/ArraySeq<",
        "TA;>;"
    }
.end annotation


# instance fields
.field private final array:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/ArraySeq;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/ArraySeq<",
            "TA;>;)V"
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Lscala/collection/mutable/ArraySeq;->length()I

    move-result p1

    invoke-direct {p0, p1}, Lscala/collection/mutable/ArraySeq;-><init>(I)V

    .line 96
    iput-object p2, p0, Lscala/collection/mutable/ArraySeq$$anon$1;->array:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public array()[Ljava/lang/Object;
    .locals 1

    .line 96
    iget-object v0, p0, Lscala/collection/mutable/ArraySeq$$anon$1;->array:[Ljava/lang/Object;

    return-object v0
.end method
