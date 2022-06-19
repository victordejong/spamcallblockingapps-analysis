.class public final Lscala/concurrent/duration/package$DoubleMult;
.super Ljava/lang/Object;
.source "package.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/duration/package;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DoubleMult"
.end annotation


# instance fields
.field private final scala$concurrent$duration$DoubleMult$$f:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 72
    iput-wide p1, p0, Lscala/concurrent/duration/package$DoubleMult;->scala$concurrent$duration$DoubleMult$$f:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public $times(Lscala/concurrent/duration/Duration;)Lscala/concurrent/duration/Duration;
    .locals 3

    .line 73
    sget-object v0, Lscala/concurrent/duration/package$DoubleMult$;->MODULE$:Lscala/concurrent/duration/package$DoubleMult$;

    invoke-virtual {p0}, Lscala/concurrent/duration/package$DoubleMult;->scala$concurrent$duration$DoubleMult$$f()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lscala/concurrent/duration/package$DoubleMult$;->$times$extension(DLscala/concurrent/duration/Duration;)Lscala/concurrent/duration/Duration;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 72
    sget-object v0, Lscala/concurrent/duration/package$DoubleMult$;->MODULE$:Lscala/concurrent/duration/package$DoubleMult$;

    invoke-virtual {p0}, Lscala/concurrent/duration/package$DoubleMult;->scala$concurrent$duration$DoubleMult$$f()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lscala/concurrent/duration/package$DoubleMult$;->equals$extension(DLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 72
    sget-object v0, Lscala/concurrent/duration/package$DoubleMult$;->MODULE$:Lscala/concurrent/duration/package$DoubleMult$;

    invoke-virtual {p0}, Lscala/concurrent/duration/package$DoubleMult;->scala$concurrent$duration$DoubleMult$$f()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lscala/concurrent/duration/package$DoubleMult$;->hashCode$extension(D)I

    move-result v0

    return v0
.end method

.method public scala$concurrent$duration$DoubleMult$$f()D
    .locals 2

    .line 72
    iget-wide v0, p0, Lscala/concurrent/duration/package$DoubleMult;->scala$concurrent$duration$DoubleMult$$f:D

    return-wide v0
.end method
