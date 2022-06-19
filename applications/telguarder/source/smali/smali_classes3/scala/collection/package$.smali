.class public final Lscala/collection/package$;
.super Ljava/lang/Object;
.source "package.scala"


# static fields
.field public static final MODULE$:Lscala/collection/package$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/package$;

    invoke-direct {v0}, Lscala/collection/package$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/package$;->MODULE$:Lscala/collection/package$;

    return-void
.end method


# virtual methods
.method public breakOut(Lscala/collection/generic/CanBuildFrom;)Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<From:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "To:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/runtime/Nothing$;",
            "TT;TTo;>;)",
            "Lscala/collection/generic/CanBuildFrom<",
            "TFrom;TT;TTo;>;"
        }
    .end annotation

    .line 86
    new-instance v0, Lscala/collection/package$$anon$1;

    invoke-direct {v0, p1}, Lscala/collection/package$$anon$1;-><init>(Lscala/collection/generic/CanBuildFrom;)V

    return-object v0
.end method
