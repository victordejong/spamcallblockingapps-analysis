.class public final Lscala/util/Either$MergeableEither;
.super Ljava/lang/Object;
.source "Either.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/util/Either;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MergeableEither"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final scala$util$Either$MergeableEither$$x:Lscala/util/Either;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/util/Either<",
            "TA;TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/util/Either;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/Either<",
            "TA;TA;>;)V"
        }
    .end annotation

    .line 219
    iput-object p1, p0, Lscala/util/Either$MergeableEither;->scala$util$Either$MergeableEither$$x:Lscala/util/Either;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 219
    sget-object v0, Lscala/util/Either$MergeableEither$;->MODULE$:Lscala/util/Either$MergeableEither$;

    invoke-virtual {p0}, Lscala/util/Either$MergeableEither;->scala$util$Either$MergeableEither$$x()Lscala/util/Either;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lscala/util/Either$MergeableEither$;->equals$extension(Lscala/util/Either;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 219
    sget-object v0, Lscala/util/Either$MergeableEither$;->MODULE$:Lscala/util/Either$MergeableEither$;

    invoke-virtual {p0}, Lscala/util/Either$MergeableEither;->scala$util$Either$MergeableEither$$x()Lscala/util/Either;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/util/Either$MergeableEither$;->hashCode$extension(Lscala/util/Either;)I

    move-result v0

    return v0
.end method

.method public merge()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 220
    sget-object v0, Lscala/util/Either$MergeableEither$;->MODULE$:Lscala/util/Either$MergeableEither$;

    invoke-virtual {p0}, Lscala/util/Either$MergeableEither;->scala$util$Either$MergeableEither$$x()Lscala/util/Either;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/util/Either$MergeableEither$;->merge$extension(Lscala/util/Either;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public scala$util$Either$MergeableEither$$x()Lscala/util/Either;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/util/Either<",
            "TA;TA;>;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lscala/util/Either$MergeableEither;->scala$util$Either$MergeableEither$$x:Lscala/util/Either;

    return-object v0
.end method
