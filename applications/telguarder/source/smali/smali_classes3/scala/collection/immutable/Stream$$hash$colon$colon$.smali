.class public Lscala/collection/immutable/Stream$$hash$colon$colon$;
.super Ljava/lang/Object;
.source "Stream.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "$hash$colon$colon$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/Stream$$hash$colon$colon$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/Stream$$hash$colon$colon$;

    invoke-direct {v0}, Lscala/collection/immutable/Stream$$hash$colon$colon$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/immutable/Stream$$hash$colon$colon$;->MODULE$:Lscala/collection/immutable/Stream$$hash$colon$colon$;

    return-void
.end method


# virtual methods
.method public unapply(Lscala/collection/immutable/Stream;)Lscala/Option;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/Stream<",
            "TA;>;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>;"
        }
    .end annotation

    .line 1203
    invoke-virtual {p1}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    .line 1204
    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
