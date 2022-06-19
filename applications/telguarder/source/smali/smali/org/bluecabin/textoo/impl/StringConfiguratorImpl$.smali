.class public final Lorg/bluecabin/textoo/impl/StringConfiguratorImpl$;
.super Ljava/lang/Object;
.source "StringConfiguratorImpl.scala"


# static fields
.field public static final MODULE$:Lorg/bluecabin/textoo/impl/StringConfiguratorImpl$;


# direct methods
.method private $lessinit$greater$default$2()Lscala/collection/immutable/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Queue<",
            "Lorg/bluecabin/textoo/impl/Change<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 18
    sget-object v0, Lscala/collection/immutable/Queue$;->MODULE$:Lscala/collection/immutable/Queue$;

    invoke-virtual {v0}, Lscala/collection/immutable/Queue$;->empty()Lscala/collection/immutable/Queue;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bluecabin/textoo/impl/StringConfiguratorImpl$;

    invoke-direct {v0}, Lorg/bluecabin/textoo/impl/StringConfiguratorImpl$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lorg/bluecabin/textoo/impl/StringConfiguratorImpl$;->MODULE$:Lorg/bluecabin/textoo/impl/StringConfiguratorImpl$;

    return-void
.end method


# virtual methods
.method public create(Lorg/bluecabin/textoo/TextooContext;Ljava/lang/String;)Lorg/bluecabin/textoo/StringConfigurator;
    .locals 2

    .line 58
    new-instance v0, Lorg/bluecabin/textoo/impl/StringConfiguratorImpl;

    new-instance v1, Lorg/bluecabin/textoo/impl/StringConfiguratorImpl$$anonfun$create$1;

    invoke-direct {v1, p2}, Lorg/bluecabin/textoo/impl/StringConfiguratorImpl$$anonfun$create$1;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/bluecabin/textoo/impl/StringConfiguratorImpl$;->$lessinit$greater$default$2()Lscala/collection/immutable/Queue;

    move-result-object p2

    invoke-direct {v0, v1, p2, p1}, Lorg/bluecabin/textoo/impl/StringConfiguratorImpl;-><init>(Lscala/Function0;Lscala/collection/immutable/Queue;Lorg/bluecabin/textoo/TextooContext;)V

    return-object v0
.end method
