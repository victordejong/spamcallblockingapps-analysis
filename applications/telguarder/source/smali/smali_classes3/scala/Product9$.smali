.class public final Lscala/Product9$;
.super Ljava/lang/Object;
.source "Product9.scala"


# static fields
.field public static final MODULE$:Lscala/Product9$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Product9$;

    invoke-direct {v0}, Lscala/Product9$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Product9$;->MODULE$:Lscala/Product9$;

    return-void
.end method


# virtual methods
.method public unapply(Lscala/Product9;)Lscala/Option;
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
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Product9<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;)",
            "Lscala/Option<",
            "Lscala/Product9<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;>;"
        }
    .end annotation

    .line 14
    new-instance v0, Lscala/Some;

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
