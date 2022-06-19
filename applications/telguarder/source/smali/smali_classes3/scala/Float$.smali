.class public final Lscala/Float$;
.super Ljava/lang/Object;
.source "Float.scala"

# interfaces
.implements Lscala/AnyValCompanion;


# static fields
.field public static final MODULE$:Lscala/Float$;


# instance fields
.field private final MaxValue:F

.field private final MinPositiveValue:F

.field private final MinValue:F

.field private final NaN:F

.field private final NegativeInfinity:F

.field private final PositiveInfinity:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Float$;

    invoke-direct {v0}, Lscala/Float$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Float$;->MODULE$:Lscala/Float$;

    const v0, -0x800001

    .line 220
    iput v0, p0, Lscala/Float$;->MinValue:F

    return-void
.end method


# virtual methods
.method public final MaxValue()F
    .locals 1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    return v0
.end method

.method public final MinPositiveValue()F
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final MinValue()F
    .locals 1

    .line 220
    iget v0, p0, Lscala/Float$;->MinValue:F

    return v0
.end method

.method public final NaN()F
    .locals 1

    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method public final NegativeInfinity()F
    .locals 1

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    return v0
.end method

.method public final PositiveInfinity()F
    .locals 1

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    return v0
.end method

.method public box(F)Ljava/lang/Float;
    .locals 0

    .line 232
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public float2double(F)D
    .locals 2

    float-to-double v0, p1

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "object scala.Float"

    return-object v0
.end method

.method public unbox(Ljava/lang/Object;)F
    .locals 0

    .line 244
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method
