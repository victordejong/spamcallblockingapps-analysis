.class public Lscala/util/control/TailCalls$Call$;
.super Ljava/lang/Object;
.source "TailCalls.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/util/control/TailCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Call$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/util/control/TailCalls$Call$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/control/TailCalls$Call$;

    invoke-direct {v0}, Lscala/util/control/TailCalls$Call$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/util/control/TailCalls$Call$;->MODULE$:Lscala/util/control/TailCalls$Call$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 87
    sget-object v0, Lscala/util/control/TailCalls$Call$;->MODULE$:Lscala/util/control/TailCalls$Call$;

    return-object v0
.end method


# virtual methods
.method public apply(Lscala/Function0;)Lscala/util/control/TailCalls$Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "Lscala/util/control/TailCalls$TailRec<",
            "TA;>;>;)",
            "Lscala/util/control/TailCalls$Call<",
            "TA;>;"
        }
    .end annotation

    .line 87
    new-instance v0, Lscala/util/control/TailCalls$Call;

    invoke-direct {v0, p1}, Lscala/util/control/TailCalls$Call;-><init>(Lscala/Function0;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Call"

    return-object v0
.end method

.method public unapply(Lscala/util/control/TailCalls$Call;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/util/control/TailCalls$Call<",
            "TA;>;)",
            "Lscala/Option<",
            "Lscala/Function0<",
            "Lscala/util/control/TailCalls$TailRec<",
            "TA;>;>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 87
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/util/control/TailCalls$Call;->rest()Lscala/Function0;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
