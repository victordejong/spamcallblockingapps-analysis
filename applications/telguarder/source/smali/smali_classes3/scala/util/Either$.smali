.class public final Lscala/util/Either$;
.super Ljava/lang/Object;
.source "Either.scala"


# static fields
.field public static final MODULE$:Lscala/util/Either$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/Either$;

    invoke-direct {v0}, Lscala/util/Either$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/util/Either$;->MODULE$:Lscala/util/Either$;

    return-void
.end method


# virtual methods
.method public MergeableEither(Lscala/util/Either;)Lscala/util/Either;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/util/Either<",
            "TA;TA;>;)",
            "Lscala/util/Either<",
            "TA;TA;>;"
        }
    .end annotation

    return-object p1
.end method

.method public cond(ZLscala/Function0;Lscala/Function0;)Lscala/util/Either;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lscala/Function0<",
            "TB;>;",
            "Lscala/Function0<",
            "TA;>;)",
            "Lscala/util/Either<",
            "TA;TB;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 592
    new-instance p1, Lscala/util/Right;

    invoke-interface {p2}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p2}, Lscala/util/Right;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lscala/util/Left;

    invoke-interface {p3}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p2}, Lscala/util/Left;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object p1
.end method
