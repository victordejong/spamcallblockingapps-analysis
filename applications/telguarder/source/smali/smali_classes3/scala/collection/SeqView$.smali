.class public final Lscala/collection/SeqView$;
.super Ljava/lang/Object;
.source "SeqView.scala"


# static fields
.field public static final MODULE$:Lscala/collection/SeqView$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/SeqView$;

    invoke-direct {v0}, Lscala/collection/SeqView$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/SeqView$;->MODULE$:Lscala/collection/SeqView$;

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
            "Lscala/collection/SeqView<",
            "TA;",
            "Lscala/collection/Seq<",
            "*>;>;>;"
        }
    .end annotation

    .line 28
    new-instance v0, Lscala/collection/SeqView$$anon$1;

    invoke-direct {v0}, Lscala/collection/SeqView$$anon$1;-><init>()V

    return-object v0
.end method
