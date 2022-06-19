.class public Lscala/math/Numeric$Implicits$;
.super Ljava/lang/Object;
.source "Numeric.scala"

# interfaces
.implements Lscala/math/Numeric$ExtraImplicits;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/math/Numeric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Implicits$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/math/Numeric$Implicits$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/math/Numeric$Implicits$;

    invoke-direct {v0}, Lscala/math/Numeric$Implicits$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/math/Numeric$Implicits$;->MODULE$:Lscala/math/Numeric$Implicits$;

    invoke-static {p0}, Lscala/math/Numeric$ExtraImplicits$class;->$init$(Lscala/math/Numeric$ExtraImplicits;)V

    return-void
.end method


# virtual methods
.method public infixNumericOps(Ljava/lang/Object;Lscala/math/Numeric;)Lscala/math/Numeric$Ops;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lscala/math/Numeric<",
            "TT;>;)",
            "Lscala/math/Numeric<",
            "TT;>.Ops;"
        }
    .end annotation

    .line 28
    invoke-static {p0, p1, p2}, Lscala/math/Numeric$ExtraImplicits$class;->infixNumericOps(Lscala/math/Numeric$ExtraImplicits;Ljava/lang/Object;Lscala/math/Numeric;)Lscala/math/Numeric$Ops;

    move-result-object p1

    return-object p1
.end method
