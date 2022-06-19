.class public final Lscala/collection/convert/Wrappers$MapWrapper$$anon$1;
.super Ljava/util/AbstractSet;
.source "Wrappers.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/convert/Wrappers$MapWrapper;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TA;TB;>;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/convert/Wrappers$MapWrapper;


# direct methods
.method public constructor <init>(Lscala/collection/convert/Wrappers$MapWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/convert/Wrappers$MapWrapper<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 180
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1;->$outer:Lscala/collection/convert/Wrappers$MapWrapper;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 183
    new-instance v0, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5;

    invoke-direct {v0, p0}, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1$$anon$5;-><init>(Lscala/collection/convert/Wrappers$MapWrapper$$anon$1;)V

    return-object v0
.end method

.method public synthetic scala$collection$convert$Wrappers$MapWrapper$$anon$$$outer()Lscala/collection/convert/Wrappers$MapWrapper;
    .locals 1

    .line 180
    iget-object v0, p0, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1;->$outer:Lscala/collection/convert/Wrappers$MapWrapper;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 181
    iget-object v0, p0, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1;->$outer:Lscala/collection/convert/Wrappers$MapWrapper;

    invoke-virtual {v0}, Lscala/collection/convert/Wrappers$MapWrapper;->size()I

    move-result v0

    return v0
.end method
