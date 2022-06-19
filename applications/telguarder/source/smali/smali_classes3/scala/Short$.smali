.class public final Lscala/Short$;
.super Ljava/lang/Object;
.source "Short.scala"

# interfaces
.implements Lscala/AnyValCompanion;


# static fields
.field public static final MODULE$:Lscala/Short$;


# instance fields
.field private final MaxValue:S

.field private final MinValue:S


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Short$;

    invoke-direct {v0}, Lscala/Short$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Short$;->MODULE$:Lscala/Short$;

    return-void
.end method


# virtual methods
.method public final MaxValue()S
    .locals 1

    const/16 v0, 0x7fff

    return v0
.end method

.method public final MinValue()S
    .locals 1

    const/16 v0, -0x8000

    return v0
.end method

.method public box(S)Ljava/lang/Short;
    .locals 0

    .line 454
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public short2double(S)D
    .locals 2

    int-to-double v0, p1

    return-wide v0
.end method

.method public short2float(S)F
    .locals 0

    int-to-float p1, p1

    return p1
.end method

.method public short2int(S)I
    .locals 0

    return p1
.end method

.method public short2long(S)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "object scala.Short"

    return-object v0
.end method

.method public unbox(Ljava/lang/Object;)S
    .locals 0

    .line 466
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1
.end method
