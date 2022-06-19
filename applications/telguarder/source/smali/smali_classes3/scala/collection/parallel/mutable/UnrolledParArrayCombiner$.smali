.class public final Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$;
.super Ljava/lang/Object;
.source "UnrolledParArrayCombiner.scala"


# static fields
.field public static final MODULE$:Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$;

    invoke-direct {v0}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$;->MODULE$:Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$;

    return-void
.end method


# virtual methods
.method public apply()Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/mutable/UnrolledParArrayCombiner<",
            "TT;>;"
        }
    .end annotation

    .line 111
    new-instance v0, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$$anon$1;

    invoke-direct {v0}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$$anon$1;-><init>()V

    return-object v0
.end method
