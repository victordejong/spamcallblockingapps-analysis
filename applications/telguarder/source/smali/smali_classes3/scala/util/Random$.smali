.class public final Lscala/util/Random$;
.super Lscala/util/Random;
.source "Random.scala"


# static fields
.field public static final MODULE$:Lscala/util/Random$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/Random$;

    invoke-direct {v0}, Lscala/util/Random$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Lscala/util/Random;-><init>()V

    sput-object p0, Lscala/util/Random$;->MODULE$:Lscala/util/Random$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 148
    sget-object v0, Lscala/util/Random$;->MODULE$:Lscala/util/Random$;

    return-object v0
.end method


# virtual methods
.method public javaRandomToRandom(Ljava/util/Random;)Lscala/util/Random;
    .locals 1

    .line 150
    new-instance v0, Lscala/util/Random;

    invoke-direct {v0, p1}, Lscala/util/Random;-><init>(Ljava/util/Random;)V

    return-object v0
.end method
