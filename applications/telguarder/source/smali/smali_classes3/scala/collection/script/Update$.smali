.class public final Lscala/collection/script/Update$;
.super Ljava/lang/Object;
.source "Message.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/collection/script/Update$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/script/Update$;

    invoke-direct {v0}, Lscala/collection/script/Update$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/script/Update$;->MODULE$:Lscala/collection/script/Update$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 45
    sget-object v0, Lscala/collection/script/Update$;->MODULE$:Lscala/collection/script/Update$;

    return-object v0
.end method


# virtual methods
.method public apply(Lscala/collection/script/Location;Ljava/lang/Object;)Lscala/collection/script/Update;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/script/Location;",
            "TA;)",
            "Lscala/collection/script/Update<",
            "TA;>;"
        }
    .end annotation

    .line 45
    new-instance v0, Lscala/collection/script/Update;

    invoke-direct {v0, p1, p2}, Lscala/collection/script/Update;-><init>(Lscala/collection/script/Location;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Update"

    return-object v0
.end method

.method public unapply(Lscala/collection/script/Update;)Lscala/Option;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/script/Update<",
            "TA;>;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Lscala/collection/script/Location;",
            "TA;>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 45
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/collection/script/Update;->location()Lscala/collection/script/Location;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/script/Update;->elem()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
