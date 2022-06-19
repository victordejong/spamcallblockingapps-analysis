.class public final Lscala/Int$;
.super Ljava/lang/Object;
.source "Int.scala"

# interfaces
.implements Lscala/AnyValCompanion;


# static fields
.field public static final MODULE$:Lscala/Int$;


# instance fields
.field private final MaxValue:I

.field private final MinValue:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Int$;

    invoke-direct {v0}, Lscala/Int$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Int$;->MODULE$:Lscala/Int$;

    return-void
.end method


# virtual methods
.method public final MaxValue()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public final MinValue()I
    .locals 1

    const/high16 v0, -0x80000000

    return v0
.end method

.method public box(I)Ljava/lang/Integer;
    .locals 0

    .line 454
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public int2double(I)D
    .locals 2

    int-to-double v0, p1

    return-wide v0
.end method

.method public int2float(I)F
    .locals 0

    int-to-float p1, p1

    return p1
.end method

.method public int2long(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "object scala.Int"

    return-object v0
.end method

.method public unbox(Ljava/lang/Object;)I
    .locals 0

    .line 466
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
