.class public final Lscala/concurrent/duration/Duration$$anon$2;
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

    .line 234
    invoke-direct {p0}, Lscala/concurrent/duration/Duration$Infinite;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 243
    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {v0}, Lscala/concurrent/duration/Duration$;->Inf()Lscala/concurrent/duration/Duration$Infinite;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;)I
    .locals 0

    .line 234
    check-cast p1, Lscala/concurrent/duration/Duration;

    invoke-virtual {p0, p1}, Lscala/concurrent/duration/Duration$$anon$2;->compare(Lscala/concurrent/duration/Duration;)I

    move-result p1

    return p1
.end method

.method public compare(Lscala/concurrent/duration/Duration;)I
    .locals 1

    .line 236
    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {v0}, Lscala/concurrent/duration/Duration$;->Undefined()Lscala/concurrent/duration/Duration$Infinite;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Duration.Inf"

    return-object v0
.end method

.method public toUnit(Ljava/util/concurrent/TimeUnit;)D
    .locals 2

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0
.end method

.method public unary_$minus()Lscala/concurrent/duration/Duration;
    .locals 1

    .line 241
    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {v0}, Lscala/concurrent/duration/Duration$;->MinusInf()Lscala/concurrent/duration/Duration$Infinite;

    move-result-object v0

    return-object v0
.end method
