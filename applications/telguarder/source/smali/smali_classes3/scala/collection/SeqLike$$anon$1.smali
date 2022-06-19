.class public final Lscala/collection/SeqLike$$anon$1;
.super Lscala/collection/mutable/HashMap;
.source "SeqLike.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/SeqLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/mutable/HashMap<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/SeqLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SeqLike;",
            ")V"
        }
    .end annotation

    .line 492
    invoke-direct {p0}, Lscala/collection/mutable/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public default(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic default(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 492
    invoke-virtual {p0, p1}, Lscala/collection/SeqLike$$anon$1;->default(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
