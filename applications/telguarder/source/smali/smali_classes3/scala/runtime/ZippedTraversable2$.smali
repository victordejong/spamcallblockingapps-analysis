.class public final Lscala/runtime/ZippedTraversable2$;
.super Ljava/lang/Object;
.source "Tuple2Zipped.scala"


# static fields
.field public static final MODULE$:Lscala/runtime/ZippedTraversable2$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/runtime/ZippedTraversable2$;

    invoke-direct {v0}, Lscala/runtime/ZippedTraversable2$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/runtime/ZippedTraversable2$;->MODULE$:Lscala/runtime/ZippedTraversable2$;

    return-void
.end method


# virtual methods
.method public zippedTraversable2ToTraversable(Lscala/runtime/ZippedTraversable2;)Lscala/collection/Traversable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<El1:",
            "Ljava/lang/Object;",
            "El2:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/runtime/ZippedTraversable2<",
            "TEl1;TEl2;>;)",
            "Lscala/collection/Traversable<",
            "Lscala/Tuple2<",
            "TEl1;TEl2;>;>;"
        }
    .end annotation

    .line 30
    new-instance v0, Lscala/runtime/ZippedTraversable2$$anon$1;

    invoke-direct {v0, p1}, Lscala/runtime/ZippedTraversable2$$anon$1;-><init>(Lscala/runtime/ZippedTraversable2;)V

    return-object v0
.end method
