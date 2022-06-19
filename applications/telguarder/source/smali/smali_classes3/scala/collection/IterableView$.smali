.class public final Lscala/collection/IterableView$;
.super Ljava/lang/Object;
.source "IterableView.scala"


# static fields
.field public static final MODULE$:Lscala/collection/IterableView$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/IterableView$;

    invoke-direct {v0}, Lscala/collection/IterableView$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/IterableView$;->MODULE$:Lscala/collection/IterableView$;

    return-void
.end method


# virtual methods
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
            "Lscala/collection/Traversable<",
            "*>;>;TA;",
            "Lscala/collection/IterableView<",
            "TA;",
            "Lscala/collection/Iterable<",
            "*>;>;>;"
        }
    .end annotation

    .line 28
    new-instance v0, Lscala/collection/IterableView$$anon$1;

    invoke-direct {v0}, Lscala/collection/IterableView$$anon$1;-><init>()V

    return-object v0
.end method
