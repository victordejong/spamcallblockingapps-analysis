.class public final Lscala/collection/generic/IsTraversableLike$;
.super Ljava/lang/Object;
.source "IsTraversableLike.scala"


# static fields
.field public static final MODULE$:Lscala/collection/generic/IsTraversableLike$;


# instance fields
.field private final stringRepr:Lscala/collection/generic/IsTraversableLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/generic/IsTraversableLike<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/generic/IsTraversableLike$;

    invoke-direct {v0}, Lscala/collection/generic/IsTraversableLike$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/generic/IsTraversableLike$;->MODULE$:Lscala/collection/generic/IsTraversableLike$;

    .line 120
    new-instance v0, Lscala/collection/generic/IsTraversableLike$$anon$1;

    invoke-direct {v0}, Lscala/collection/generic/IsTraversableLike$$anon$1;-><init>()V

    .line 119
    iput-object v0, p0, Lscala/collection/generic/IsTraversableLike$;->stringRepr:Lscala/collection/generic/IsTraversableLike;

    return-void
.end method


# virtual methods
.method public genTraversableLikeRepr(Lscala/Function1;)Lscala/collection/generic/IsTraversableLike;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "A0:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TC;",
            "Lscala/collection/GenTraversableLike<",
            "TA0;TC;>;>;)",
            "Lscala/collection/generic/IsTraversableLike<",
            "TC;>;"
        }
    .end annotation

    .line 126
    new-instance v0, Lscala/collection/generic/IsTraversableLike$$anon$2;

    invoke-direct {v0, p1}, Lscala/collection/generic/IsTraversableLike$$anon$2;-><init>(Lscala/Function1;)V

    return-object v0
.end method

.method public stringRepr()Lscala/collection/generic/IsTraversableLike;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/IsTraversableLike<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lscala/collection/generic/IsTraversableLike$;->stringRepr:Lscala/collection/generic/IsTraversableLike;

    return-object v0
.end method
