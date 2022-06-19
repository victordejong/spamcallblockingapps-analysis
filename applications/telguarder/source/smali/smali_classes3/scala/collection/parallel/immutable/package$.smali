.class public final Lscala/collection/parallel/immutable/package$;
.super Ljava/lang/Object;
.source "package.scala"


# static fields
.field public static final MODULE$:Lscala/collection/parallel/immutable/package$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/parallel/immutable/package$;

    invoke-direct {v0}, Lscala/collection/parallel/immutable/package$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/parallel/immutable/package$;->MODULE$:Lscala/collection/parallel/immutable/package$;

    return-void
.end method


# virtual methods
.method public repetition(Ljava/lang/Object;I)Lscala/collection/parallel/immutable/Repetition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I)",
            "Lscala/collection/parallel/immutable/Repetition<",
            "TT;>;"
        }
    .end annotation

    .line 44
    new-instance v0, Lscala/collection/parallel/immutable/Repetition;

    invoke-direct {v0, p1, p2}, Lscala/collection/parallel/immutable/Repetition;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method
