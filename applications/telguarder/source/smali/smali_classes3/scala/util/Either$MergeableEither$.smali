.class public Lscala/util/Either$MergeableEither$;
.super Ljava/lang/Object;
.source "Either.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/util/Either;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MergeableEither$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/util/Either$MergeableEither$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/Either$MergeableEither$;

    invoke-direct {v0}, Lscala/util/Either$MergeableEither$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/util/Either$MergeableEither$;->MODULE$:Lscala/util/Either$MergeableEither$;

    return-void
.end method


# virtual methods
.method public final equals$extension(Lscala/util/Either;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/util/Either<",
            "TA;TA;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 219
    instance-of v0, p2, Lscala/util/Either$MergeableEither;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    check-cast p2, Lscala/util/Either$MergeableEither;

    invoke-virtual {p2}, Lscala/util/Either$MergeableEither;->scala$util$Either$MergeableEither$$x()Lscala/util/Either;

    move-result-object p2

    :goto_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    return v1
.end method

.method public final hashCode$extension(Lscala/util/Either;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/util/Either<",
            "TA;TA;>;)I"
        }
    .end annotation

    .line 219
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method public final merge$extension(Lscala/util/Either;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/util/Either<",
            "TA;TA;>;)TA;"
        }
    .end annotation

    .line 220
    instance-of v0, p1, Lscala/util/Left;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/util/Left;

    .line 221
    invoke-virtual {p1}, Lscala/util/Left;->a()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 222
    :cond_0
    instance-of v0, p1, Lscala/util/Right;

    if-eqz v0, :cond_1

    check-cast p1, Lscala/util/Right;

    invoke-virtual {p1}, Lscala/util/Right;->b()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    .line 220
    :cond_1
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
