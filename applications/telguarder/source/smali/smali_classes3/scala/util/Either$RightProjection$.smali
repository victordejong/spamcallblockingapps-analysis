.class public Lscala/util/Either$RightProjection$;
.super Ljava/lang/Object;
.source "Either.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/util/Either;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RightProjection$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/util/Either$RightProjection$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/Either$RightProjection$;

    invoke-direct {v0}, Lscala/util/Either$RightProjection$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/util/Either$RightProjection$;->MODULE$:Lscala/util/Either$RightProjection$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 439
    sget-object v0, Lscala/util/Either$RightProjection$;->MODULE$:Lscala/util/Either$RightProjection$;

    return-object v0
.end method


# virtual methods
.method public apply(Lscala/util/Either;)Lscala/util/Either$RightProjection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/util/Either<",
            "TA;TB;>;)",
            "Lscala/util/Either$RightProjection<",
            "TA;TB;>;"
        }
    .end annotation

    .line 439
    new-instance v0, Lscala/util/Either$RightProjection;

    invoke-direct {v0, p1}, Lscala/util/Either$RightProjection;-><init>(Lscala/util/Either;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "RightProjection"

    return-object v0
.end method

.method public unapply(Lscala/util/Either$RightProjection;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/util/Either$RightProjection<",
            "TA;TB;>;)",
            "Lscala/Option<",
            "Lscala/util/Either<",
            "TA;TB;>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 439
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/util/Either$RightProjection;->e()Lscala/util/Either;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
