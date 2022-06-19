.class public Ljavax/validation/ConstraintViolationException;
.super Ljavax/validation/ValidationException;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/validation/c<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "+",
            "Ljavax/validation/c<",
            "*>;>;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Ljavax/validation/ValidationException;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Ljavax/validation/ConstraintViolationException;->a:Ljava/util/Set;

    return-void

    .line 38
    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Ljavax/validation/ConstraintViolationException;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljavax/validation/c<",
            "*>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1064
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Ljavax/validation/-$$Lambda$ConstraintViolationException$yl4fKTbH-GKbNeGNHoi4iTSEUR4;->INSTANCE:Ljavax/validation/-$$Lambda$ConstraintViolationException$yl4fKTbH-GKbNeGNHoi4iTSEUR4;

    .line 1065
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, ", "

    .line 1066
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 48
    :goto_0
    invoke-direct {p0, v0, p1}, Ljavax/validation/ConstraintViolationException;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method private static synthetic a(Ljavax/validation/c;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljavax/validation/c;->b()Ljavax/validation/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljavax/validation/c;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$yl4fKTbH-GKbNeGNHoi4iTSEUR4(Ljavax/validation/c;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljavax/validation/ConstraintViolationException;->a(Ljavax/validation/c;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
