.class public final Lscala/Long$;
.super Ljava/lang/Object;
.source "Long.scala"

# interfaces
.implements Lscala/AnyValCompanion;


# static fields
.field public static final MODULE$:Lscala/Long$;


# instance fields
.field private final MaxValue:J

.field private final MinValue:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Long$;

    invoke-direct {v0}, Lscala/Long$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Long$;->MODULE$:Lscala/Long$;

    return-void
.end method


# virtual methods
.method public final MaxValue()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public final MinValue()J
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public box(J)Ljava/lang/Long;
    .locals 0

    .line 454
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public long2double(J)D
    .locals 0

    long-to-double p1, p1

    return-wide p1
.end method

.method public long2float(J)F
    .locals 0

    long-to-float p1, p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "object scala.Long"

    return-object v0
.end method

.method public unbox(Ljava/lang/Object;)J
    .locals 2

    .line 466
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
