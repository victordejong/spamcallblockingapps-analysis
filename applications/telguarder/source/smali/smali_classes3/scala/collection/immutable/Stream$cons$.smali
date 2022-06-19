.class public Lscala/collection/immutable/Stream$cons$;
.super Ljava/lang/Object;
.source "Stream.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "cons$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/Stream$cons$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/Stream$cons$;

    invoke-direct {v0}, Lscala/collection/immutable/Stream$cons$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Lscala/Function0;)Lscala/collection/immutable/Stream$Cons;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;",
            "Lscala/Function0<",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;)",
            "Lscala/collection/immutable/Stream$Cons<",
            "TA;>;"
        }
    .end annotation

    .line 1215
    new-instance v0, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {v0, p1, p2}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    return-object v0
.end method

.method public unapply(Lscala/collection/immutable/Stream;)Lscala/Option;
    .locals 1
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

    .line 1218
    sget-object v0, Lscala/collection/immutable/Stream$$hash$colon$colon$;->MODULE$:Lscala/collection/immutable/Stream$$hash$colon$colon$;

    invoke-virtual {v0, p1}, Lscala/collection/immutable/Stream$$hash$colon$colon$;->unapply(Lscala/collection/immutable/Stream;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method
