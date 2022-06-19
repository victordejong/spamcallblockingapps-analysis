.class public final Lscala/concurrent/duration/package$IntMult;
.super Ljava/lang/Object;
.source "package.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/duration/package;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntMult"
.end annotation


# instance fields
.field private final scala$concurrent$duration$IntMult$$i:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 62
    iput p1, p0, Lscala/concurrent/duration/package$IntMult;->scala$concurrent$duration$IntMult$$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public $times(Lscala/concurrent/duration/Duration;)Lscala/concurrent/duration/Duration;
    .locals 2

    .line 63
    sget-object v0, Lscala/concurrent/duration/package$IntMult$;->MODULE$:Lscala/concurrent/duration/package$IntMult$;

    invoke-virtual {p0}, Lscala/concurrent/duration/package$IntMult;->scala$concurrent$duration$IntMult$$i()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lscala/concurrent/duration/package$IntMult$;->$times$extension0(ILscala/concurrent/duration/Duration;)Lscala/concurrent/duration/Duration;

    move-result-object p1

    return-object p1
.end method

.method public $times(Lscala/concurrent/duration/FiniteDuration;)Lscala/concurrent/duration/FiniteDuration;
    .locals 2

    .line 64
    sget-object v0, Lscala/concurrent/duration/package$IntMult$;->MODULE$:Lscala/concurrent/duration/package$IntMult$;

    invoke-virtual {p0}, Lscala/concurrent/duration/package$IntMult;->scala$concurrent$duration$IntMult$$i()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lscala/concurrent/duration/package$IntMult$;->$times$extension1(ILscala/concurrent/duration/FiniteDuration;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 62
    sget-object v0, Lscala/concurrent/duration/package$IntMult$;->MODULE$:Lscala/concurrent/duration/package$IntMult$;

    invoke-virtual {p0}, Lscala/concurrent/duration/package$IntMult;->scala$concurrent$duration$IntMult$$i()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lscala/concurrent/duration/package$IntMult$;->equals$extension(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 62
    sget-object v0, Lscala/concurrent/duration/package$IntMult$;->MODULE$:Lscala/concurrent/duration/package$IntMult$;

    invoke-virtual {p0}, Lscala/concurrent/duration/package$IntMult;->scala$concurrent$duration$IntMult$$i()I

    move-result v1

    invoke-virtual {v0, v1}, Lscala/concurrent/duration/package$IntMult$;->hashCode$extension(I)I

    move-result v0

    return v0
.end method

.method public scala$concurrent$duration$IntMult$$i()I
    .locals 1

    .line 62
    iget v0, p0, Lscala/concurrent/duration/package$IntMult;->scala$concurrent$duration$IntMult$$i:I

    return v0
.end method
