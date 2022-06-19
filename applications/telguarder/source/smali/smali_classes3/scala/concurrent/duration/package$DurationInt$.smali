.class public Lscala/concurrent/duration/package$DurationInt$;
.super Ljava/lang/Object;
.source "package.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/duration/package;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DurationInt$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/concurrent/duration/package$DurationInt$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/concurrent/duration/package$DurationInt$;

    invoke-direct {v0}, Lscala/concurrent/duration/package$DurationInt$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/concurrent/duration/package$DurationInt$;->MODULE$:Lscala/concurrent/duration/package$DurationInt$;

    return-void
.end method


# virtual methods
.method public final durationIn$extension(ILjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/FiniteDuration;
    .locals 3

    .line 44
    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2, p2}, Lscala/concurrent/duration/Duration$;->apply(JLjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p1

    return-object p1
.end method

.method public final equals$extension(ILjava/lang/Object;)Z
    .locals 3

    .line 43
    instance-of v0, p2, Lscala/concurrent/duration/package$DurationInt;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Lscala/concurrent/duration/package$DurationInt;

    invoke-virtual {p2}, Lscala/concurrent/duration/package$DurationInt;->scala$concurrent$duration$DurationInt$$n()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final hashCode$extension(I)I
    .locals 0

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method
