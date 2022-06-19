.class public final Lscala/concurrent/duration/Duration$$anon$1;
.super Lscala/concurrent/duration/Duration$Infinite;
.source "Duration.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/duration/Duration$;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 174
    invoke-direct {p0}, Lscala/concurrent/duration/Duration$Infinite;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 185
    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {v0}, Lscala/concurrent/duration/Duration$;->Undefined()Lscala/concurrent/duration/Duration$Infinite;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public $div(Lscala/concurrent/duration/Duration;)D
    .locals 2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public $div(D)Lscala/concurrent/duration/Duration;
    .locals 0

    return-object p0
.end method

.method public $minus(Lscala/concurrent/duration/Duration;)Lscala/concurrent/duration/Duration;
    .locals 0

    return-object p0
.end method

.method public $plus(Lscala/concurrent/duration/Duration;)Lscala/concurrent/duration/Duration;
    .locals 0

    return-object p0
.end method

.method public $times(D)Lscala/concurrent/duration/Duration;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;)I
    .locals 0

    .line 174
    check-cast p1, Lscala/concurrent/duration/Duration;

    invoke-virtual {p0, p1}, Lscala/concurrent/duration/Duration$$anon$1;->compare(Lscala/concurrent/duration/Duration;)I

    move-result p1

    return p1
.end method

.method public compare(Lscala/concurrent/duration/Duration;)I
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Duration.Undefined"

    return-object v0
.end method

.method public toUnit(Ljava/util/concurrent/TimeUnit;)D
    .locals 2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public unary_$minus()Lscala/concurrent/duration/Duration;
    .locals 0

    return-object p0
.end method
