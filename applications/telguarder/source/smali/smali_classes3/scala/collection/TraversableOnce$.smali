.class public final Lscala/collection/TraversableOnce$;
.super Ljava/lang/Object;
.source "TraversableOnce.scala"


# static fields
.field public static final MODULE$:Lscala/collection/TraversableOnce$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/TraversableOnce$;

    invoke-direct {v0}, Lscala/collection/TraversableOnce$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/TraversableOnce$;->MODULE$:Lscala/collection/TraversableOnce$;

    return-void
.end method


# virtual methods
.method public MonadOps(Lscala/collection/TraversableOnce;)Lscala/collection/TraversableOnce$MonadOps;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)",
            "Lscala/collection/TraversableOnce$MonadOps<",
            "TA;>;"
        }
    .end annotation

    .line 469
    new-instance v0, Lscala/collection/TraversableOnce$MonadOps;

    invoke-direct {v0, p1}, Lscala/collection/TraversableOnce$MonadOps;-><init>(Lscala/collection/TraversableOnce;)V

    return-object v0
.end method

.method public OnceCanBuildFrom()Lscala/collection/TraversableOnce$OnceCanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/TraversableOnce$OnceCanBuildFrom<",
            "TA;>;"
        }
    .end annotation

    .line 456
    new-instance v0, Lscala/collection/TraversableOnce$OnceCanBuildFrom;

    invoke-direct {v0}, Lscala/collection/TraversableOnce$OnceCanBuildFrom;-><init>()V

    return-object v0
.end method

.method public alternateImplicit(Lscala/collection/TraversableOnce;)Lscala/collection/TraversableOnce$ForceImplicitAmbiguity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)",
            "Lscala/collection/TraversableOnce$ForceImplicitAmbiguity;"
        }
    .end annotation

    .line 418
    new-instance p1, Lscala/collection/TraversableOnce$ForceImplicitAmbiguity;

    invoke-direct {p1}, Lscala/collection/TraversableOnce$ForceImplicitAmbiguity;-><init>()V

    return-object p1
.end method

.method public flattenTraversableOnce(Lscala/collection/TraversableOnce;Lscala/Function1;)Lscala/collection/TraversableOnce$FlattenOps;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "CC:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/TraversableOnce<",
            "TCC;>;",
            "Lscala/Function1<",
            "TCC;",
            "Lscala/collection/TraversableOnce<",
            "TA;>;>;)",
            "Lscala/collection/TraversableOnce$FlattenOps<",
            "TA;>;"
        }
    .end annotation

    .line 420
    new-instance v0, Lscala/collection/TraversableOnce$FlattenOps;

    invoke-virtual {p0, p1}, Lscala/collection/TraversableOnce$;->MonadOps(Lscala/collection/TraversableOnce;)Lscala/collection/TraversableOnce$MonadOps;

    move-result-object p1

    invoke-virtual {p1, p2}, Lscala/collection/TraversableOnce$MonadOps;->map(Lscala/Function1;)Lscala/collection/TraversableOnce;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/collection/TraversableOnce$FlattenOps;-><init>(Lscala/collection/TraversableOnce;)V

    return-object v0
.end method
