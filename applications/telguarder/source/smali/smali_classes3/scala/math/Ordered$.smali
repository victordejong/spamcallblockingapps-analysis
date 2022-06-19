.class public final Lscala/math/Ordered$;
.super Ljava/lang/Object;
.source "Ordered.scala"


# static fields
.field public static final MODULE$:Lscala/math/Ordered$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/math/Ordered$;

    invoke-direct {v0}, Lscala/math/Ordered$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/math/Ordered$;->MODULE$:Lscala/math/Ordered$;

    return-void
.end method


# virtual methods
.method public orderingToOrdered(Ljava/lang/Object;Lscala/math/Ordering;)Lscala/math/Ordered;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lscala/math/Ordering<",
            "TT;>;)",
            "Lscala/math/Ordered<",
            "TT;>;"
        }
    .end annotation

    .line 98
    new-instance v0, Lscala/math/Ordered$$anon$1;

    invoke-direct {v0, p1, p2}, Lscala/math/Ordered$$anon$1;-><init>(Ljava/lang/Object;Lscala/math/Ordering;)V

    return-object v0
.end method
