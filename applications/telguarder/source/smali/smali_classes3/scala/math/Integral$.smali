.class public final Lscala/math/Integral$;
.super Ljava/lang/Object;
.source "Integral.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/math/Integral$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/math/Integral$;

    invoke-direct {v0}, Lscala/math/Integral$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/math/Integral$;->MODULE$:Lscala/math/Integral$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 31
    sget-object v0, Lscala/math/Integral$;->MODULE$:Lscala/math/Integral$;

    return-object v0
.end method
