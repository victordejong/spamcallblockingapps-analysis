.class public final Lscala/throws$;
.super Ljava/lang/Object;
.source "throws.scala"


# static fields
.field public static final MODULE$:Lscala/throws$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/throws$;

    invoke-direct {v0}, Lscala/throws$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/throws$;->MODULE$:Lscala/throws$;

    return-void
.end method


# virtual methods
.method public $lessinit$greater$default$1()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">()",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    return-object v0
.end method
