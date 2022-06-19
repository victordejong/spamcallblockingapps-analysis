.class public final Lscala/collection/script/Reset$;
.super Ljava/lang/Object;
.source "Message.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/collection/script/Reset$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/script/Reset$;

    invoke-direct {v0}, Lscala/collection/script/Reset$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/script/Reset$;->MODULE$:Lscala/collection/script/Reset$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 66
    sget-object v0, Lscala/collection/script/Reset$;->MODULE$:Lscala/collection/script/Reset$;

    return-object v0
.end method


# virtual methods
.method public apply()Lscala/collection/script/Reset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/script/Reset<",
            "TA;>;"
        }
    .end annotation

    .line 66
    new-instance v0, Lscala/collection/script/Reset;

    invoke-direct {v0}, Lscala/collection/script/Reset;-><init>()V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Reset"

    return-object v0
.end method

.method public unapply(Lscala/collection/script/Reset;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/script/Reset<",
            "TA;>;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
