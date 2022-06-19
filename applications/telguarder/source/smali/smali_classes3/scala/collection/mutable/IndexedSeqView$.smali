.class public final Lscala/collection/mutable/IndexedSeqView$;
.super Ljava/lang/Object;
.source "IndexedSeqView.scala"


# static fields
.field public static final MODULE$:Lscala/collection/mutable/IndexedSeqView$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/IndexedSeqView$;

    invoke-direct {v0}, Lscala/collection/mutable/IndexedSeqView$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/mutable/IndexedSeqView$;->MODULE$:Lscala/collection/mutable/IndexedSeqView$;

    return-void
.end method


# virtual methods
.method public arrCanBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/TraversableView<",
            "*",
            "Ljava/lang/Object;",
            ">;TA;",
            "Lscala/collection/SeqView<",
            "TA;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 115
    new-instance v0, Lscala/collection/mutable/IndexedSeqView$$anon$7;

    invoke-direct {v0}, Lscala/collection/mutable/IndexedSeqView$$anon$7;-><init>()V

    return-object v0
.end method

.method public canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/TraversableView<",
            "*+",
            "Lscala/collection/mutable/Traversable<",
            "*>;>;TA;",
            "Lscala/collection/SeqView<",
            "TA;",
            "Lscala/collection/mutable/Seq<",
            "*>;>;>;"
        }
    .end annotation

    .line 110
    new-instance v0, Lscala/collection/mutable/IndexedSeqView$$anon$6;

    invoke-direct {v0}, Lscala/collection/mutable/IndexedSeqView$$anon$6;-><init>()V

    return-object v0
.end method
