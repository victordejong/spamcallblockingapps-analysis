.class public final Lorg/bluecabin/textoo/impl/SpannedConfiguratorImpl$;
.super Ljava/lang/Object;
.source "SpannedConfiguratorImpl.scala"


# static fields
.field public static final MODULE$:Lorg/bluecabin/textoo/impl/SpannedConfiguratorImpl$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bluecabin/textoo/impl/SpannedConfiguratorImpl$;

    invoke-direct {v0}, Lorg/bluecabin/textoo/impl/SpannedConfiguratorImpl$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lorg/bluecabin/textoo/impl/SpannedConfiguratorImpl$;->MODULE$:Lorg/bluecabin/textoo/impl/SpannedConfiguratorImpl$;

    return-void
.end method


# virtual methods
.method public $lessinit$greater$default$2()Lscala/collection/immutable/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Queue<",
            "Lorg/bluecabin/textoo/impl/Change<",
            "Landroid/text/Spanned;",
            ">;>;"
        }
    .end annotation

    .line 18
    sget-object v0, Lscala/collection/immutable/Queue$;->MODULE$:Lscala/collection/immutable/Queue$;

    invoke-virtual {v0}, Lscala/collection/immutable/Queue$;->empty()Lscala/collection/immutable/Queue;

    move-result-object v0

    return-object v0
.end method

.method public $lessinit$greater$default$3()Lscala/collection/immutable/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Queue<",
            "Lorg/bluecabin/textoo/LinksHandler;",
            ">;"
        }
    .end annotation

    .line 19
    sget-object v0, Lscala/collection/immutable/Queue$;->MODULE$:Lscala/collection/immutable/Queue$;

    invoke-virtual {v0}, Lscala/collection/immutable/Queue$;->empty()Lscala/collection/immutable/Queue;

    move-result-object v0

    return-object v0
.end method

.method public create(Lorg/bluecabin/textoo/TextooContext;Landroid/text/Spanned;)Lorg/bluecabin/textoo/SpannedConfigurator;
    .locals 3

    .line 60
    new-instance v0, Lorg/bluecabin/textoo/impl/SpannedConfiguratorImpl;

    new-instance v1, Lorg/bluecabin/textoo/impl/SpannedConfiguratorImpl$$anonfun$create$1;

    invoke-direct {v1, p2}, Lorg/bluecabin/textoo/impl/SpannedConfiguratorImpl$$anonfun$create$1;-><init>(Landroid/text/Spanned;)V

    invoke-virtual {p0}, Lorg/bluecabin/textoo/impl/SpannedConfiguratorImpl$;->$lessinit$greater$default$2()Lscala/collection/immutable/Queue;

    move-result-object p2

    invoke-virtual {p0}, Lorg/bluecabin/textoo/impl/SpannedConfiguratorImpl$;->$lessinit$greater$default$3()Lscala/collection/immutable/Queue;

    move-result-object v2

    invoke-direct {v0, v1, p2, v2, p1}, Lorg/bluecabin/textoo/impl/SpannedConfiguratorImpl;-><init>(Lscala/Function0;Lscala/collection/immutable/Queue;Lscala/collection/immutable/Queue;Lorg/bluecabin/textoo/TextooContext;)V

    return-object v0
.end method
