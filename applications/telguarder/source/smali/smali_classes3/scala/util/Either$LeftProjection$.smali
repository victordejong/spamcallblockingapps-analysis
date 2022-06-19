.class public Lscala/util/Either$LeftProjection$;
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
    name = "LeftProjection$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/util/Either$LeftProjection$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/Either$LeftProjection$;

    invoke-direct {v0}, Lscala/util/Either$LeftProjection$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/util/Either$LeftProjection$;->MODULE$:Lscala/util/Either$LeftProjection$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 275
    sget-object v0, Lscala/util/Either$LeftProjection$;->MODULE$:Lscala/util/Either$LeftProjection$;

    return-object v0
.end method


# virtual methods
.method public apply(Lscala/util/Either;)Lscala/util/Either$LeftProjection;
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
            "Lscala/util/Either$LeftProjection<",
            "TA;TB;>;"
        }
    .end annotation

    .line 275
    new-instance v0, Lscala/util/Either$LeftProjection;

    invoke-direct {v0, p1}, Lscala/util/Either$LeftProjection;-><init>(Lscala/util/Either;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "LeftProjection"

    return-object v0
.end method

.method public unapply(Lscala/util/Either$LeftProjection;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/util/Either$LeftProjection<",
            "TA;TB;>;)",
            "Lscala/Option<",
            "Lscala/util/Either<",
            "TA;TB;>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 275
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/util/Either$LeftProjection;->e()Lscala/util/Either;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
