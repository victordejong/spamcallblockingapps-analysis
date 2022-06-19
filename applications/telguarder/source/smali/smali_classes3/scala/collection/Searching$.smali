.class public final Lscala/collection/Searching$;
.super Ljava/lang/Object;
.source "Searching.scala"


# static fields
.field public static final MODULE$:Lscala/collection/Searching$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/Searching$;

    invoke-direct {v0}, Lscala/collection/Searching$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/Searching$;->MODULE$:Lscala/collection/Searching$;

    return-void
.end method


# virtual methods
.method public search(Ljava/lang/Object;Lscala/collection/generic/IsSeqLike;)Lscala/collection/Searching$SearchImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Repr:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(TRepr;",
            "Lscala/collection/generic/IsSeqLike<",
            "TRepr;>;)",
            "Lscala/collection/Searching$SearchImpl<",
            "Ljava/lang/Object;",
            "TRepr;>;"
        }
    .end annotation

    .line 117
    new-instance v0, Lscala/collection/Searching$SearchImpl;

    invoke-interface {p2}, Lscala/collection/generic/IsSeqLike;->conversion()Lscala/Function1;

    move-result-object p2

    invoke-interface {p2, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/SeqLike;

    invoke-direct {v0, p1}, Lscala/collection/Searching$SearchImpl;-><init>(Lscala/collection/SeqLike;)V

    return-object v0
.end method
