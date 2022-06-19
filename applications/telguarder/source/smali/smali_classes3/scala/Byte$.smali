.class public final Lscala/Byte$;
.super Ljava/lang/Object;
.source "Byte.scala"

# interfaces
.implements Lscala/AnyValCompanion;


# static fields
.field public static final MODULE$:Lscala/Byte$;


# instance fields
.field private final MaxValue:B

.field private final MinValue:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Byte$;

    invoke-direct {v0}, Lscala/Byte$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Byte$;->MODULE$:Lscala/Byte$;

    return-void
.end method


# virtual methods
.method public final MaxValue()B
    .locals 1

    const/16 v0, 0x7f

    return v0
.end method

.method public final MinValue()B
    .locals 1

    const/16 v0, -0x80

    return v0
.end method

.method public box(B)Ljava/lang/Byte;
    .locals 0

    .line 454
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public byte2double(B)D
    .locals 2

    int-to-double v0, p1

    return-wide v0
.end method

.method public byte2float(B)F
    .locals 0

    int-to-float p1, p1

    return p1
.end method

.method public byte2int(B)I
    .locals 0

    return p1
.end method

.method public byte2long(B)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public byte2short(B)S
    .locals 0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "object scala.Byte"

    return-object v0
.end method

.method public unbox(Ljava/lang/Object;)B
    .locals 0

    .line 466
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    return p1
.end method
