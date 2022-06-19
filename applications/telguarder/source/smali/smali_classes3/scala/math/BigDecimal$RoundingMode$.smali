.class public Lscala/math/BigDecimal$RoundingMode$;
.super Lscala/Enumeration;
.source "BigDecimal.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/math/BigDecimal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoundingMode$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/math/BigDecimal$RoundingMode$;


# instance fields
.field private final CEILING:Lscala/Enumeration$Value;

.field private final DOWN:Lscala/Enumeration$Value;

.field private final FLOOR:Lscala/Enumeration$Value;

.field private final HALF_DOWN:Lscala/Enumeration$Value;

.field private final HALF_EVEN:Lscala/Enumeration$Value;

.field private final HALF_UP:Lscala/Enumeration$Value;

.field private final UNNECESSARY:Lscala/Enumeration$Value;

.field private final UP:Lscala/Enumeration$Value;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/math/BigDecimal$RoundingMode$;

    invoke-direct {v0}, Lscala/math/BigDecimal$RoundingMode$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lscala/Enumeration;-><init>()V

    sput-object p0, Lscala/math/BigDecimal$RoundingMode$;->MODULE$:Lscala/math/BigDecimal$RoundingMode$;

    .line 40
    sget-object v0, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    invoke-virtual {v0}, Ljava/math/RoundingMode;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/math/BigDecimal$RoundingMode$;->Value(I)Lscala/Enumeration$Value;

    move-result-object v0

    iput-object v0, p0, Lscala/math/BigDecimal$RoundingMode$;->UP:Lscala/Enumeration$Value;

    .line 41
    sget-object v0, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v0}, Ljava/math/RoundingMode;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/math/BigDecimal$RoundingMode$;->Value(I)Lscala/Enumeration$Value;

    move-result-object v0

    iput-object v0, p0, Lscala/math/BigDecimal$RoundingMode$;->DOWN:Lscala/Enumeration$Value;

    .line 42
    sget-object v0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-virtual {v0}, Ljava/math/RoundingMode;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/math/BigDecimal$RoundingMode$;->Value(I)Lscala/Enumeration$Value;

    move-result-object v0

    iput-object v0, p0, Lscala/math/BigDecimal$RoundingMode$;->CEILING:Lscala/Enumeration$Value;

    .line 43
    sget-object v0, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v0}, Ljava/math/RoundingMode;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/math/BigDecimal$RoundingMode$;->Value(I)Lscala/Enumeration$Value;

    move-result-object v0

    iput-object v0, p0, Lscala/math/BigDecimal$RoundingMode$;->FLOOR:Lscala/Enumeration$Value;

    .line 44
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0}, Ljava/math/RoundingMode;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/math/BigDecimal$RoundingMode$;->Value(I)Lscala/Enumeration$Value;

    move-result-object v0

    iput-object v0, p0, Lscala/math/BigDecimal$RoundingMode$;->HALF_UP:Lscala/Enumeration$Value;

    .line 45
    sget-object v0, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v0}, Ljava/math/RoundingMode;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/math/BigDecimal$RoundingMode$;->Value(I)Lscala/Enumeration$Value;

    move-result-object v0

    iput-object v0, p0, Lscala/math/BigDecimal$RoundingMode$;->HALF_DOWN:Lscala/Enumeration$Value;

    .line 46
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {v0}, Ljava/math/RoundingMode;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/math/BigDecimal$RoundingMode$;->Value(I)Lscala/Enumeration$Value;

    move-result-object v0

    iput-object v0, p0, Lscala/math/BigDecimal$RoundingMode$;->HALF_EVEN:Lscala/Enumeration$Value;

    .line 47
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-virtual {v0}, Ljava/math/RoundingMode;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/math/BigDecimal$RoundingMode$;->Value(I)Lscala/Enumeration$Value;

    move-result-object v0

    iput-object v0, p0, Lscala/math/BigDecimal$RoundingMode$;->UNNECESSARY:Lscala/Enumeration$Value;

    return-void
.end method


# virtual methods
.method public CEILING()Lscala/Enumeration$Value;
    .locals 1

    .line 42
    iget-object v0, p0, Lscala/math/BigDecimal$RoundingMode$;->CEILING:Lscala/Enumeration$Value;

    return-object v0
.end method

.method public DOWN()Lscala/Enumeration$Value;
    .locals 1

    .line 41
    iget-object v0, p0, Lscala/math/BigDecimal$RoundingMode$;->DOWN:Lscala/Enumeration$Value;

    return-object v0
.end method

.method public FLOOR()Lscala/Enumeration$Value;
    .locals 1

    .line 43
    iget-object v0, p0, Lscala/math/BigDecimal$RoundingMode$;->FLOOR:Lscala/Enumeration$Value;

    return-object v0
.end method

.method public HALF_DOWN()Lscala/Enumeration$Value;
    .locals 1

    .line 45
    iget-object v0, p0, Lscala/math/BigDecimal$RoundingMode$;->HALF_DOWN:Lscala/Enumeration$Value;

    return-object v0
.end method

.method public HALF_EVEN()Lscala/Enumeration$Value;
    .locals 1

    .line 46
    iget-object v0, p0, Lscala/math/BigDecimal$RoundingMode$;->HALF_EVEN:Lscala/Enumeration$Value;

    return-object v0
.end method

.method public HALF_UP()Lscala/Enumeration$Value;
    .locals 1

    .line 44
    iget-object v0, p0, Lscala/math/BigDecimal$RoundingMode$;->HALF_UP:Lscala/Enumeration$Value;

    return-object v0
.end method

.method public UNNECESSARY()Lscala/Enumeration$Value;
    .locals 1

    .line 47
    iget-object v0, p0, Lscala/math/BigDecimal$RoundingMode$;->UNNECESSARY:Lscala/Enumeration$Value;

    return-object v0
.end method

.method public UP()Lscala/Enumeration$Value;
    .locals 1

    .line 40
    iget-object v0, p0, Lscala/math/BigDecimal$RoundingMode$;->UP:Lscala/Enumeration$Value;

    return-object v0
.end method
