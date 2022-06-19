.class public final Lscala/util/Success$;
.super Ljava/lang/Object;
.source "Try.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/util/Success$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/Success$;

    invoke-direct {v0}, Lscala/util/Success$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/util/Success$;->MODULE$:Lscala/util/Success$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 225
    sget-object v0, Lscala/util/Success$;->MODULE$:Lscala/util/Success$;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lscala/util/Success;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lscala/util/Success<",
            "TT;>;"
        }
    .end annotation

    .line 225
    new-instance v0, Lscala/util/Success;

    invoke-direct {v0, p1}, Lscala/util/Success;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Success"

    return-object v0
.end method

.method public unapply(Lscala/util/Success;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/util/Success<",
            "TT;>;)",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 225
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/util/Success;->value()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
