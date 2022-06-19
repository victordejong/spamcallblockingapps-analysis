.class public final Lscala/Some$;
.super Ljava/lang/Object;
.source "Option.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/Some$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Some$;

    invoke-direct {v0}, Lscala/Some$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Some$;->MODULE$:Lscala/Some$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 333
    sget-object v0, Lscala/Some$;->MODULE$:Lscala/Some$;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lscala/Some;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)",
            "Lscala/Some<",
            "TA;>;"
        }
    .end annotation

    .line 333
    new-instance v0, Lscala/Some;

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Some"

    return-object v0
.end method

.method public unapply(Lscala/Some;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Some<",
            "TA;>;)",
            "Lscala/Option<",
            "TA;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 333
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
