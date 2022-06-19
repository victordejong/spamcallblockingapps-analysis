.class public final Lscala/collection/generic/IsTraversableLike$$anon$2;
.super Ljava/lang/Object;
.source "IsTraversableLike.scala"

# interfaces
.implements Lscala/collection/generic/IsTraversableLike;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/generic/IsTraversableLike$;->genTraversableLikeRepr(Lscala/Function1;)Lscala/collection/generic/IsTraversableLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/generic/IsTraversableLike<",
        "TC;>;"
    }
.end annotation


# instance fields
.field private final conversion:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "TC;",
            "Lscala/collection/GenTraversableLike<",
            "TA0;TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/Function1;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lscala/collection/generic/IsTraversableLike$$anon$2;->conversion:Lscala/Function1;

    return-void
.end method


# virtual methods
.method public conversion()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "TC;",
            "Lscala/collection/GenTraversableLike<",
            "TA0;TC;>;>;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lscala/collection/generic/IsTraversableLike$$anon$2;->conversion:Lscala/Function1;

    return-object v0
.end method
