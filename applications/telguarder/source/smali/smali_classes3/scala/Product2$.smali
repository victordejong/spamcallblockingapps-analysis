.class public final Lscala/Product2$;
.super Ljava/lang/Object;
.source "Product2.scala"


# static fields
.field public static final MODULE$:Lscala/Product2$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Product2$;

    invoke-direct {v0}, Lscala/Product2$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Product2$;->MODULE$:Lscala/Product2$;

    return-void
.end method


# virtual methods
.method public unapply(Lscala/Product2;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Product2<",
            "TT1;TT2;>;)",
            "Lscala/Option<",
            "Lscala/Product2<",
            "TT1;TT2;>;>;"
        }
    .end annotation

    .line 14
    new-instance v0, Lscala/Some;

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
