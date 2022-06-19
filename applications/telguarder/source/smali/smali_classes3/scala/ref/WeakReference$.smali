.class public final Lscala/ref/WeakReference$;
.super Ljava/lang/Object;
.source "WeakReference.scala"


# static fields
.field public static final MODULE$:Lscala/ref/WeakReference$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/ref/WeakReference$;

    invoke-direct {v0}, Lscala/ref/WeakReference$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/ref/WeakReference$;->MODULE$:Lscala/ref/WeakReference$;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lscala/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lscala/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation

    .line 28
    new-instance v0, Lscala/ref/WeakReference;

    invoke-direct {v0, p1}, Lscala/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public unapply(Lscala/ref/WeakReference;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/ref/WeakReference<",
            "TT;>;)",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    .line 32
    invoke-virtual {p1}, Lscala/ref/WeakReference;->underlying()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 33
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
