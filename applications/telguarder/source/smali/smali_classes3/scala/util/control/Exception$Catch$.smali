.class public Lscala/util/control/Exception$Catch$;
.super Ljava/lang/Object;
.source "Exception.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/util/control/Exception;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Catch$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/util/control/Exception$Catch$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/control/Exception$Catch$;

    invoke-direct {v0}, Lscala/util/control/Exception$Catch$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/util/control/Exception$Catch$;->MODULE$:Lscala/util/control/Exception$Catch$;

    return-void
.end method


# virtual methods
.method public $lessinit$greater$default$2()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/Option<",
            "Lscala/util/control/Exception$Finally;",
            ">;"
        }
    .end annotation

    .line 91
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    return-object v0
.end method

.method public $lessinit$greater$default$3()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/Function1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Lscala/util/control/Exception$Catch$$anonfun$$lessinit$greater$default$3$1;

    invoke-direct {v0}, Lscala/util/control/Exception$Catch$$anonfun$$lessinit$greater$default$3$1;-><init>()V

    return-object v0
.end method
