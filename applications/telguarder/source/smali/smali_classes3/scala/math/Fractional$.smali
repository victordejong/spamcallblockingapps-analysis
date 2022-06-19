.class public final Lscala/math/Fractional$;
.super Ljava/lang/Object;
.source "Fractional.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/math/Fractional$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/math/Fractional$;

    invoke-direct {v0}, Lscala/math/Fractional$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/math/Fractional$;->MODULE$:Lscala/math/Fractional$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 27
    sget-object v0, Lscala/math/Fractional$;->MODULE$:Lscala/math/Fractional$;

    return-object v0
.end method
