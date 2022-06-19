.class public final Lscala/Char$;
.super Ljava/lang/Object;
.source "Char.scala"

# interfaces
.implements Lscala/AnyValCompanion;


# static fields
.field public static final MODULE$:Lscala/Char$;


# instance fields
.field private final MaxValue:C

.field private final MinValue:C


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Char$;

    invoke-direct {v0}, Lscala/Char$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Char$;->MODULE$:Lscala/Char$;

    return-void
.end method


# virtual methods
.method public final MaxValue()C
    .locals 1

    const v0, 0xffff

    return v0
.end method

.method public final MinValue()C
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public box(C)Ljava/lang/Character;
    .locals 0

    .line 454
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public char2double(C)D
    .locals 2

    int-to-double v0, p1

    return-wide v0
.end method

.method public char2float(C)F
    .locals 0

    int-to-float p1, p1

    return p1
.end method

.method public char2int(C)I
    .locals 0

    return p1
.end method

.method public char2long(C)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "object scala.Char"

    return-object v0
.end method

.method public unbox(Ljava/lang/Object;)C
    .locals 0

    .line 466
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    return p1
.end method
