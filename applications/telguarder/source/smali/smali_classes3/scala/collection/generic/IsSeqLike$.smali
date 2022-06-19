.class public final Lscala/collection/generic/IsSeqLike$;
.super Ljava/lang/Object;
.source "IsSeqLike.scala"


# static fields
.field public static final MODULE$:Lscala/collection/generic/IsSeqLike$;


# instance fields
.field private final stringRepr:Lscala/collection/generic/IsSeqLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/generic/IsSeqLike<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/generic/IsSeqLike$;

    invoke-direct {v0}, Lscala/collection/generic/IsSeqLike$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/generic/IsSeqLike$;->MODULE$:Lscala/collection/generic/IsSeqLike$;

    .line 48
    new-instance v0, Lscala/collection/generic/IsSeqLike$$anon$1;

    invoke-direct {v0}, Lscala/collection/generic/IsSeqLike$$anon$1;-><init>()V

    .line 47
    iput-object v0, p0, Lscala/collection/generic/IsSeqLike$;->stringRepr:Lscala/collection/generic/IsSeqLike;

    return-void
.end method


# virtual methods
.method public seqLikeRepr(Lscala/Function1;)Lscala/collection/generic/IsSeqLike;
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
            "Lscala/collection/SeqLike<",
            "TA0;TC;>;>;)",
            "Lscala/collection/generic/IsSeqLike<",
            "TC;>;"
        }
    .end annotation

    .line 54
    new-instance v0, Lscala/collection/generic/IsSeqLike$$anon$2;

    invoke-direct {v0, p1}, Lscala/collection/generic/IsSeqLike$$anon$2;-><init>(Lscala/Function1;)V

    return-object v0
.end method

.method public stringRepr()Lscala/collection/generic/IsSeqLike;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/IsSeqLike<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lscala/collection/generic/IsSeqLike$;->stringRepr:Lscala/collection/generic/IsSeqLike;

    return-object v0
.end method
