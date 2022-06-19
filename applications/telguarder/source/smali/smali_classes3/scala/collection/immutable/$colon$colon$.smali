.class public final Lscala/collection/immutable/$colon$colon$;
.super Ljava/lang/Object;
.source "List.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/collection/immutable/$colon$colon$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/$colon$colon$;

    invoke-direct {v0}, Lscala/collection/immutable/$colon$colon$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/immutable/$colon$colon$;->MODULE$:Lscala/collection/immutable/$colon$colon$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 439
    sget-object v0, Lscala/collection/immutable/$colon$colon$;->MODULE$:Lscala/collection/immutable/$colon$colon$;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Lscala/collection/immutable/List;)Lscala/collection/immutable/$colon$colon;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/collection/immutable/List<",
            "TB;>;)",
            "Lscala/collection/immutable/$colon$colon<",
            "TB;>;"
        }
    .end annotation

    .line 439
    new-instance v0, Lscala/collection/immutable/$colon$colon;

    invoke-direct {v0, p1, p2}, Lscala/collection/immutable/$colon$colon;-><init>(Ljava/lang/Object;Lscala/collection/immutable/List;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "::"

    return-object v0
.end method

.method public unapply(Lscala/collection/immutable/$colon$colon;)Lscala/Option;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/$colon$colon<",
            "TB;>;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "TB;",
            "Lscala/collection/immutable/List<",
            "TB;>;>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 439
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/immutable/$colon$colon;->tl()Lscala/collection/immutable/List;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
