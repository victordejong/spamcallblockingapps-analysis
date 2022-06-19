.class public final Lscala/util/hashing/Hashing$;
.super Ljava/lang/Object;
.source "Hashing.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/util/hashing/Hashing$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/hashing/Hashing$;

    invoke-direct {v0}, Lscala/util/hashing/Hashing$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/util/hashing/Hashing$;->MODULE$:Lscala/util/hashing/Hashing$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 30
    sget-object v0, Lscala/util/hashing/Hashing$;->MODULE$:Lscala/util/hashing/Hashing$;

    return-object v0
.end method


# virtual methods
.method public default()Lscala/util/hashing/Hashing$Default;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/util/hashing/Hashing$Default<",
            "TT;>;"
        }
    .end annotation

    .line 35
    new-instance v0, Lscala/util/hashing/Hashing$Default;

    invoke-direct {v0}, Lscala/util/hashing/Hashing$Default;-><init>()V

    return-object v0
.end method

.method public fromFunction(Lscala/Function1;)Lscala/util/hashing/Hashing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 37
    new-instance v0, Lscala/util/hashing/Hashing$$anon$1;

    invoke-direct {v0, p1}, Lscala/util/hashing/Hashing$$anon$1;-><init>(Lscala/Function1;)V

    return-object v0
.end method
