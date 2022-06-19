.class public final Lscala/math/Numeric$;
.super Ljava/lang/Object;
.source "Numeric.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/math/Numeric$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/math/Numeric$;

    invoke-direct {v0}, Lscala/math/Numeric$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/math/Numeric$;->MODULE$:Lscala/math/Numeric$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 17
    sget-object v0, Lscala/math/Numeric$;->MODULE$:Lscala/math/Numeric$;

    return-object v0
.end method
