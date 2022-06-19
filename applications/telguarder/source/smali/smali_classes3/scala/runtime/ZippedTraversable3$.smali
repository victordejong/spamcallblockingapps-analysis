.class public final Lscala/runtime/ZippedTraversable3$;
.super Ljava/lang/Object;
.source "Tuple3Zipped.scala"


# static fields
.field public static final MODULE$:Lscala/runtime/ZippedTraversable3$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/runtime/ZippedTraversable3$;

    invoke-direct {v0}, Lscala/runtime/ZippedTraversable3$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/runtime/ZippedTraversable3$;->MODULE$:Lscala/runtime/ZippedTraversable3$;

    return-void
.end method


# virtual methods
.method public zippedTraversable3ToTraversable(Lscala/runtime/ZippedTraversable3;)Lscala/collection/Traversable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<El1:",
            "Ljava/lang/Object;",
            "El2:",
            "Ljava/lang/Object;",
            "El3:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/runtime/ZippedTraversable3<",
            "TEl1;TEl2;TEl3;>;)",
            "Lscala/collection/Traversable<",
            "Lscala/Tuple3<",
            "TEl1;TEl2;TEl3;>;>;"
        }
    .end annotation

    .line 28
    new-instance v0, Lscala/runtime/ZippedTraversable3$$anon$1;

    invoke-direct {v0, p1}, Lscala/runtime/ZippedTraversable3$$anon$1;-><init>(Lscala/runtime/ZippedTraversable3;)V

    return-object v0
.end method
