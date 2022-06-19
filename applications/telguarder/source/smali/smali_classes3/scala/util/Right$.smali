.class public final Lscala/util/Right$;
.super Ljava/lang/Object;
.source "Either.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/util/Right$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/Right$;

    invoke-direct {v0}, Lscala/util/Right$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/util/Right$;->MODULE$:Lscala/util/Right$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 201
    sget-object v0, Lscala/util/Right$;->MODULE$:Lscala/util/Right$;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lscala/util/Right;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TB;)",
            "Lscala/util/Right<",
            "TA;TB;>;"
        }
    .end annotation

    .line 201
    new-instance v0, Lscala/util/Right;

    invoke-direct {v0, p1}, Lscala/util/Right;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Right"

    return-object v0
.end method

.method public unapply(Lscala/util/Right;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/util/Right<",
            "TA;TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 201
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/util/Right;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
