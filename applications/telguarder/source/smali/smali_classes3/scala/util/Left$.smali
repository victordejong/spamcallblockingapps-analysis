.class public final Lscala/util/Left$;
.super Ljava/lang/Object;
.source "Either.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/util/Left$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/Left$;

    invoke-direct {v0}, Lscala/util/Left$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/util/Left$;->MODULE$:Lscala/util/Left$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 190
    sget-object v0, Lscala/util/Left$;->MODULE$:Lscala/util/Left$;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lscala/util/Left;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;)",
            "Lscala/util/Left<",
            "TA;TB;>;"
        }
    .end annotation

    .line 190
    new-instance v0, Lscala/util/Left;

    invoke-direct {v0, p1}, Lscala/util/Left;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Left"

    return-object v0
.end method

.method public unapply(Lscala/util/Left;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/util/Left<",
            "TA;TB;>;)",
            "Lscala/Option<",
            "TA;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 190
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/util/Left;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
