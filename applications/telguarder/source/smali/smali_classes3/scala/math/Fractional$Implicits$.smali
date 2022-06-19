.class public Lscala/math/Fractional$Implicits$;
.super Ljava/lang/Object;
.source "Fractional.scala"

# interfaces
.implements Lscala/math/Fractional$ExtraImplicits;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/math/Fractional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Implicits$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/math/Fractional$Implicits$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/math/Fractional$Implicits$;

    invoke-direct {v0}, Lscala/math/Fractional$Implicits$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/math/Fractional$Implicits$;->MODULE$:Lscala/math/Fractional$Implicits$;

    invoke-static {p0}, Lscala/math/Fractional$ExtraImplicits$class;->$init$(Lscala/math/Fractional$ExtraImplicits;)V

    return-void
.end method


# virtual methods
.method public infixFractionalOps(Ljava/lang/Object;Lscala/math/Fractional;)Lscala/math/Fractional$FractionalOps;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lscala/math/Fractional<",
            "TT;>;)",
            "Lscala/math/Fractional<",
            "TT;>.FractionalOps;"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1, p2}, Lscala/math/Fractional$ExtraImplicits$class;->infixFractionalOps(Lscala/math/Fractional$ExtraImplicits;Ljava/lang/Object;Lscala/math/Fractional;)Lscala/math/Fractional$FractionalOps;

    move-result-object p1

    return-object p1
.end method
