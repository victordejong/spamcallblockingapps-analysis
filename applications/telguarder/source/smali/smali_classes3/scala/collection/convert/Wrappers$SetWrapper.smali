.class public Lscala/collection/convert/Wrappers$SetWrapper;
.super Ljava/util/AbstractSet;
.source "Wrappers.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/convert/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TA;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/convert/Wrappers;

.field public final scala$collection$convert$Wrappers$SetWrapper$$underlying:Lscala/collection/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Set<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/convert/Wrappers;Lscala/collection/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/convert/Wrappers;",
            "Lscala/collection/Set<",
            "TA;>;)V"
        }
    .end annotation

    .line 106
    iput-object p2, p0, Lscala/collection/convert/Wrappers$SetWrapper;->scala$collection$convert$Wrappers$SetWrapper$$underlying:Lscala/collection/Set;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/convert/Wrappers$SetWrapper;->$outer:Lscala/collection/convert/Wrappers;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 109
    :try_start_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$SetWrapper;->scala$collection$convert$Wrappers$SetWrapper$$underlying:Lscala/collection/Set;

    invoke-interface {v0, p1}, Lscala/collection/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lscala/collection/convert/Wrappers$SetWrapper;->scala$collection$convert$Wrappers$SetWrapper$$underlying:Lscala/collection/Set;

    invoke-interface {v0}, Lscala/collection/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 114
    new-instance v0, Lscala/collection/convert/Wrappers$SetWrapper$$anon$4;

    invoke-direct {v0, p0}, Lscala/collection/convert/Wrappers$SetWrapper$$anon$4;-><init>(Lscala/collection/convert/Wrappers$SetWrapper;)V

    return-object v0
.end method

.method public synthetic scala$collection$convert$Wrappers$SetWrapper$$$outer()Lscala/collection/convert/Wrappers;
    .locals 1

    .line 106
    iget-object v0, p0, Lscala/collection/convert/Wrappers$SetWrapper;->$outer:Lscala/collection/convert/Wrappers;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 113
    iget-object v0, p0, Lscala/collection/convert/Wrappers$SetWrapper;->scala$collection$convert$Wrappers$SetWrapper$$underlying:Lscala/collection/Set;

    invoke-interface {v0}, Lscala/collection/Set;->size()I

    move-result v0

    return v0
.end method
