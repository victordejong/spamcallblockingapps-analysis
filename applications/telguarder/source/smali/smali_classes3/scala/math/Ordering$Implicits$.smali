.class public Lscala/math/Ordering$Implicits$;
.super Ljava/lang/Object;
.source "Ordering.scala"

# interfaces
.implements Lscala/math/Ordering$ExtraImplicits;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/math/Ordering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Implicits$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/math/Ordering$Implicits$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/math/Ordering$Implicits$;

    invoke-direct {v0}, Lscala/math/Ordering$Implicits$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/math/Ordering$Implicits$;->MODULE$:Lscala/math/Ordering$Implicits$;

    invoke-static {p0}, Lscala/math/Ordering$ExtraImplicits$class;->$init$(Lscala/math/Ordering$ExtraImplicits;)V

    return-void
.end method


# virtual methods
.method public infixOrderingOps(Ljava/lang/Object;Lscala/math/Ordering;)Lscala/math/Ordering$Ops;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lscala/math/Ordering<",
            "TT;>;)",
            "Lscala/math/Ordering<",
            "TT;>.Ops;"
        }
    .end annotation

    .line 196
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$ExtraImplicits$class;->infixOrderingOps(Lscala/math/Ordering$ExtraImplicits;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/math/Ordering$Ops;

    move-result-object p1

    return-object p1
.end method

.method public seqDerivedOrdering(Lscala/math/Ordering;)Lscala/math/Ordering;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CC::",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TT;>;)",
            "Lscala/math/Ordering<",
            "TCC;>;"
        }
    .end annotation

    .line 196
    invoke-static {p0, p1}, Lscala/math/Ordering$ExtraImplicits$class;->seqDerivedOrdering(Lscala/math/Ordering$ExtraImplicits;Lscala/math/Ordering;)Lscala/math/Ordering;

    move-result-object p1

    return-object p1
.end method
