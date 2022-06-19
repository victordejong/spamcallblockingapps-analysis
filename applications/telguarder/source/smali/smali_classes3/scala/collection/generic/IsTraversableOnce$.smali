.class public final Lscala/collection/generic/IsTraversableOnce$;
.super Ljava/lang/Object;
.source "IsTraversableOnce.scala"


# static fields
.field public static final MODULE$:Lscala/collection/generic/IsTraversableOnce$;


# instance fields
.field private final stringRepr:Lscala/collection/generic/IsTraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/generic/IsTraversableOnce<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/generic/IsTraversableOnce$;

    invoke-direct {v0}, Lscala/collection/generic/IsTraversableOnce$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/generic/IsTraversableOnce$;->MODULE$:Lscala/collection/generic/IsTraversableOnce$;

    .line 52
    new-instance v0, Lscala/collection/generic/IsTraversableOnce$$anon$1;

    invoke-direct {v0}, Lscala/collection/generic/IsTraversableOnce$$anon$1;-><init>()V

    .line 51
    iput-object v0, p0, Lscala/collection/generic/IsTraversableOnce$;->stringRepr:Lscala/collection/generic/IsTraversableOnce;

    return-void
.end method


# virtual methods
.method public genTraversableLikeRepr(Lscala/Function1;)Lscala/collection/generic/IsTraversableOnce;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "A0:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TC;",
            "Lscala/collection/GenTraversableOnce<",
            "TA0;>;>;)",
            "Lscala/collection/generic/IsTraversableOnce<",
            "TC;>;"
        }
    .end annotation

    .line 58
    new-instance v0, Lscala/collection/generic/IsTraversableOnce$$anon$2;

    invoke-direct {v0, p1}, Lscala/collection/generic/IsTraversableOnce$$anon$2;-><init>(Lscala/Function1;)V

    return-object v0
.end method

.method public stringRepr()Lscala/collection/generic/IsTraversableOnce;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/IsTraversableOnce<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lscala/collection/generic/IsTraversableOnce$;->stringRepr:Lscala/collection/generic/IsTraversableOnce;

    return-object v0
.end method
