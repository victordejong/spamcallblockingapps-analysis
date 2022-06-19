.class public final Lscala/collection/TraversableView$;
.super Ljava/lang/Object;
.source "TraversableView.scala"


# static fields
.field public static final MODULE$:Lscala/collection/TraversableView$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/TraversableView$;

    invoke-direct {v0}, Lscala/collection/TraversableView$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/TraversableView$;->MODULE$:Lscala/collection/TraversableView$;

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
            "Lscala/collection/TraversableView<",
            "TA;",
            "Lscala/collection/Traversable<",
            "*>;>;>;"
        }
    .end annotation

    .line 32
    new-instance v0, Lscala/collection/TraversableView$$anon$1;

    invoke-direct {v0}, Lscala/collection/TraversableView$$anon$1;-><init>()V

    return-object v0
.end method
