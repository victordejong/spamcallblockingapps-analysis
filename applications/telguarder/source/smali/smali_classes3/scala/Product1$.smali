.class public final Lscala/Product1$;
.super Ljava/lang/Object;
.source "Product1.scala"


# static fields
.field public static final MODULE$:Lscala/Product1$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Product1$;

    invoke-direct {v0}, Lscala/Product1$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Product1$;->MODULE$:Lscala/Product1$;

    return-void
.end method


# virtual methods
.method public unapply(Lscala/Product1;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Product1<",
            "TT1;>;)",
            "Lscala/Option<",
            "Lscala/Product1<",
            "TT1;>;>;"
        }
    .end annotation

    .line 14
    new-instance v0, Lscala/Some;

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
