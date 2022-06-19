.class public final Lscala/collection/$plus$colon$;
.super Ljava/lang/Object;
.source "SeqExtractors.scala"


# static fields
.field public static final MODULE$:Lscala/collection/$plus$colon$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/$plus$colon$;

    invoke-direct {v0}, Lscala/collection/$plus$colon$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/$plus$colon$;->MODULE$:Lscala/collection/$plus$colon$;

    return-void
.end method


# virtual methods
.method public unapply(Lscala/collection/SeqLike;)Lscala/Option;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Coll::",
            "Lscala/collection/SeqLike<",
            "TT;TColl;>;>(TColl;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "TT;TColl;>;>;"
        }
    .end annotation

    .line 8
    invoke-interface {p1}, Lscala/collection/SeqLike;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lscala/Some;

    sget-object v1, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p1}, Lscala/collection/SeqLike;->head()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lscala/collection/SeqLike;->tail()Ljava/lang/Object;

    move-result-object p1

    new-instance v2, Lscala/Tuple2;

    invoke-direct {v2, v1, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v2}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
