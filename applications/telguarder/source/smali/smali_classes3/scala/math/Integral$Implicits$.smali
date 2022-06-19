.class public Lscala/math/Integral$Implicits$;
.super Ljava/lang/Object;
.source "Integral.scala"

# interfaces
.implements Lscala/math/Integral$ExtraImplicits;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/math/Integral;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Implicits$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/math/Integral$Implicits$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/math/Integral$Implicits$;

    invoke-direct {v0}, Lscala/math/Integral$Implicits$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/math/Integral$Implicits$;->MODULE$:Lscala/math/Integral$Implicits$;

    invoke-static {p0}, Lscala/math/Integral$ExtraImplicits$class;->$init$(Lscala/math/Integral$ExtraImplicits;)V

    return-void
.end method


# virtual methods
.method public infixIntegralOps(Ljava/lang/Object;Lscala/math/Integral;)Lscala/math/Integral$IntegralOps;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lscala/math/Integral<",
            "TT;>;)",
            "Lscala/math/Integral<",
            "TT;>.IntegralOps;"
        }
    .end annotation

    .line 39
    invoke-static {p0, p1, p2}, Lscala/math/Integral$ExtraImplicits$class;->infixIntegralOps(Lscala/math/Integral$ExtraImplicits;Ljava/lang/Object;Lscala/math/Integral;)Lscala/math/Integral$IntegralOps;

    move-result-object p1

    return-object p1
.end method
