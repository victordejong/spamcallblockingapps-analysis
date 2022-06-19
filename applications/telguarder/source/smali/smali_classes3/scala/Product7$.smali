.class public final Lscala/Product7$;
.super Ljava/lang/Object;
.source "Product7.scala"


# static fields
.field public static final MODULE$:Lscala/Product7$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Product7$;

    invoke-direct {v0}, Lscala/Product7$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Product7$;->MODULE$:Lscala/Product7$;

    return-void
.end method


# virtual methods
.method public unapply(Lscala/Product7;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Product7<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;)",
            "Lscala/Option<",
            "Lscala/Product7<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;>;"
        }
    .end annotation

    .line 14
    new-instance v0, Lscala/Some;

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
