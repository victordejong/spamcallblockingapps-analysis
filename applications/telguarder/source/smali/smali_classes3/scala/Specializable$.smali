.class public final Lscala/Specializable$;
.super Ljava/lang/Object;
.source "Specializable.scala"


# static fields
.field public static final MODULE$:Lscala/Specializable$;


# instance fields
.field private final AllNumeric:Lscala/Specializable$Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Specializable$Group<",
            "Lscala/Tuple7<",
            "Lscala/Byte$;",
            "Lscala/Short$;",
            "Lscala/Int$;",
            "Lscala/Long$;",
            "Lscala/Char$;",
            "Lscala/Float$;",
            "Lscala/Double$;",
            ">;>;"
        }
    .end annotation
.end field

.field private final BestOfBreed:Lscala/Specializable$Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Specializable$Group<",
            "Lscala/Tuple5<",
            "Lscala/Int$;",
            "Lscala/Double$;",
            "Lscala/Boolean$;",
            "Lscala/Unit$;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final Bits32AndUp:Lscala/Specializable$Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Specializable$Group<",
            "Lscala/Tuple4<",
            "Lscala/Int$;",
            "Lscala/Long$;",
            "Lscala/Float$;",
            "Lscala/Double$;",
            ">;>;"
        }
    .end annotation
.end field

.field private final Everything:Lscala/Specializable$Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Specializable$Group<",
            "Lscala/Tuple10<",
            "Lscala/Byte$;",
            "Lscala/Short$;",
            "Lscala/Int$;",
            "Lscala/Long$;",
            "Lscala/Char$;",
            "Lscala/Float$;",
            "Lscala/Double$;",
            "Lscala/Boolean$;",
            "Lscala/Unit$;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final Integral:Lscala/Specializable$Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Specializable$Group<",
            "Lscala/Tuple5<",
            "Lscala/Byte$;",
            "Lscala/Short$;",
            "Lscala/Int$;",
            "Lscala/Long$;",
            "Lscala/Char$;",
            ">;>;"
        }
    .end annotation
.end field

.field private final Primitives:Lscala/Specializable$Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Specializable$Group<",
            "Lscala/Tuple9<",
            "Lscala/Byte$;",
            "Lscala/Short$;",
            "Lscala/Int$;",
            "Lscala/Long$;",
            "Lscala/Char$;",
            "Lscala/Float$;",
            "Lscala/Double$;",
            "Lscala/Boolean$;",
            "Lscala/Unit$;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Specializable$;

    invoke-direct {v0}, Lscala/Specializable$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 13

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Specializable$;->MODULE$:Lscala/Specializable$;

    .line 23
    new-instance v0, Lscala/Specializable$Group;

    new-instance v11, Lscala/Tuple9;

    sget-object v2, Lscala/Byte$;->MODULE$:Lscala/Byte$;

    sget-object v3, Lscala/Short$;->MODULE$:Lscala/Short$;

    sget-object v4, Lscala/Int$;->MODULE$:Lscala/Int$;

    sget-object v5, Lscala/Long$;->MODULE$:Lscala/Long$;

    sget-object v6, Lscala/Char$;->MODULE$:Lscala/Char$;

    sget-object v7, Lscala/Float$;->MODULE$:Lscala/Float$;

    sget-object v8, Lscala/Double$;->MODULE$:Lscala/Double$;

    sget-object v9, Lscala/Boolean$;->MODULE$:Lscala/Boolean$;

    sget-object v10, Lscala/Unit$;->MODULE$:Lscala/Unit$;

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lscala/Tuple9;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v11}, Lscala/Specializable$Group;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lscala/Specializable$;->Primitives:Lscala/Specializable$Group;

    .line 24
    new-instance v0, Lscala/Specializable$Group;

    new-instance v12, Lscala/Tuple10;

    sget-object v2, Lscala/Byte$;->MODULE$:Lscala/Byte$;

    sget-object v3, Lscala/Short$;->MODULE$:Lscala/Short$;

    sget-object v4, Lscala/Int$;->MODULE$:Lscala/Int$;

    sget-object v5, Lscala/Long$;->MODULE$:Lscala/Long$;

    sget-object v6, Lscala/Char$;->MODULE$:Lscala/Char$;

    sget-object v7, Lscala/Float$;->MODULE$:Lscala/Float$;

    sget-object v8, Lscala/Double$;->MODULE$:Lscala/Double$;

    sget-object v9, Lscala/Boolean$;->MODULE$:Lscala/Boolean$;

    sget-object v10, Lscala/Unit$;->MODULE$:Lscala/Unit$;

    sget-object v1, Lscala/package$;->MODULE$:Lscala/package$;

    invoke-virtual {v1}, Lscala/package$;->AnyRef()Lscala/Specializable;

    move-result-object v11

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lscala/Tuple10;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v12}, Lscala/Specializable$Group;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lscala/Specializable$;->Everything:Lscala/Specializable$Group;

    .line 25
    new-instance v0, Lscala/Specializable$Group;

    new-instance v1, Lscala/Tuple4;

    sget-object v2, Lscala/Int$;->MODULE$:Lscala/Int$;

    sget-object v3, Lscala/Long$;->MODULE$:Lscala/Long$;

    sget-object v4, Lscala/Float$;->MODULE$:Lscala/Float$;

    sget-object v5, Lscala/Double$;->MODULE$:Lscala/Double$;

    invoke-direct {v1, v2, v3, v4, v5}, Lscala/Tuple4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lscala/Specializable$Group;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lscala/Specializable$;->Bits32AndUp:Lscala/Specializable$Group;

    .line 26
    new-instance v0, Lscala/Specializable$Group;

    new-instance v7, Lscala/Tuple5;

    sget-object v2, Lscala/Byte$;->MODULE$:Lscala/Byte$;

    sget-object v3, Lscala/Short$;->MODULE$:Lscala/Short$;

    sget-object v4, Lscala/Int$;->MODULE$:Lscala/Int$;

    sget-object v5, Lscala/Long$;->MODULE$:Lscala/Long$;

    sget-object v6, Lscala/Char$;->MODULE$:Lscala/Char$;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lscala/Tuple5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v7}, Lscala/Specializable$Group;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lscala/Specializable$;->Integral:Lscala/Specializable$Group;

    .line 27
    new-instance v0, Lscala/Specializable$Group;

    new-instance v9, Lscala/Tuple7;

    sget-object v2, Lscala/Byte$;->MODULE$:Lscala/Byte$;

    sget-object v3, Lscala/Short$;->MODULE$:Lscala/Short$;

    sget-object v4, Lscala/Int$;->MODULE$:Lscala/Int$;

    sget-object v5, Lscala/Long$;->MODULE$:Lscala/Long$;

    sget-object v6, Lscala/Char$;->MODULE$:Lscala/Char$;

    sget-object v7, Lscala/Float$;->MODULE$:Lscala/Float$;

    sget-object v8, Lscala/Double$;->MODULE$:Lscala/Double$;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lscala/Tuple7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v9}, Lscala/Specializable$Group;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lscala/Specializable$;->AllNumeric:Lscala/Specializable$Group;

    .line 28
    new-instance v0, Lscala/Specializable$Group;

    new-instance v7, Lscala/Tuple5;

    sget-object v2, Lscala/Int$;->MODULE$:Lscala/Int$;

    sget-object v3, Lscala/Double$;->MODULE$:Lscala/Double$;

    sget-object v4, Lscala/Boolean$;->MODULE$:Lscala/Boolean$;

    sget-object v5, Lscala/Unit$;->MODULE$:Lscala/Unit$;

    sget-object v1, Lscala/package$;->MODULE$:Lscala/package$;

    invoke-virtual {v1}, Lscala/package$;->AnyRef()Lscala/Specializable;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lscala/Tuple5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v7}, Lscala/Specializable$Group;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lscala/Specializable$;->BestOfBreed:Lscala/Specializable$Group;

    return-void
.end method


# virtual methods
.method public final AllNumeric()Lscala/Specializable$Group;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Specializable$Group<",
            "Lscala/Tuple7<",
            "Lscala/Byte$;",
            "Lscala/Short$;",
            "Lscala/Int$;",
            "Lscala/Long$;",
            "Lscala/Char$;",
            "Lscala/Float$;",
            "Lscala/Double$;",
            ">;>;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lscala/Specializable$;->AllNumeric:Lscala/Specializable$Group;

    return-object v0
.end method

.method public final BestOfBreed()Lscala/Specializable$Group;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Specializable$Group<",
            "Lscala/Tuple5<",
            "Lscala/Int$;",
            "Lscala/Double$;",
            "Lscala/Boolean$;",
            "Lscala/Unit$;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lscala/Specializable$;->BestOfBreed:Lscala/Specializable$Group;

    return-object v0
.end method

.method public final Bits32AndUp()Lscala/Specializable$Group;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Specializable$Group<",
            "Lscala/Tuple4<",
            "Lscala/Int$;",
            "Lscala/Long$;",
            "Lscala/Float$;",
            "Lscala/Double$;",
            ">;>;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lscala/Specializable$;->Bits32AndUp:Lscala/Specializable$Group;

    return-object v0
.end method

.method public final Everything()Lscala/Specializable$Group;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Specializable$Group<",
            "Lscala/Tuple10<",
            "Lscala/Byte$;",
            "Lscala/Short$;",
            "Lscala/Int$;",
            "Lscala/Long$;",
            "Lscala/Char$;",
            "Lscala/Float$;",
            "Lscala/Double$;",
            "Lscala/Boolean$;",
            "Lscala/Unit$;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lscala/Specializable$;->Everything:Lscala/Specializable$Group;

    return-object v0
.end method

.method public final Integral()Lscala/Specializable$Group;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Specializable$Group<",
            "Lscala/Tuple5<",
            "Lscala/Byte$;",
            "Lscala/Short$;",
            "Lscala/Int$;",
            "Lscala/Long$;",
            "Lscala/Char$;",
            ">;>;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lscala/Specializable$;->Integral:Lscala/Specializable$Group;

    return-object v0
.end method

.method public final Primitives()Lscala/Specializable$Group;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Specializable$Group<",
            "Lscala/Tuple9<",
            "Lscala/Byte$;",
            "Lscala/Short$;",
            "Lscala/Int$;",
            "Lscala/Long$;",
            "Lscala/Char$;",
            "Lscala/Float$;",
            "Lscala/Double$;",
            "Lscala/Boolean$;",
            "Lscala/Unit$;",
            ">;>;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lscala/Specializable$;->Primitives:Lscala/Specializable$Group;

    return-object v0
.end method
