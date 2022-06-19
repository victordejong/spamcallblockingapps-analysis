.class public final Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl$;
.super Ljava/lang/Object;
.source "TextViewConfiguratorImpl.scala"


# static fields
.field public static final MODULE$:Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl$;

    invoke-direct {v0}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl$;->MODULE$:Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl$;

    return-void
.end method


# virtual methods
.method public create(Lorg/bluecabin/textoo/TextooContext;Landroid/widget/TextView;)Lorg/bluecabin/textoo/TextViewConfigurator;
    .locals 3

    .line 87
    new-instance v0, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;

    new-instance v1, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl$$anonfun$create$1;

    invoke-direct {v1, p2}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl$$anonfun$create$1;-><init>(Landroid/widget/TextView;)V

    sget-object p2, Lscala/collection/immutable/Queue$;->MODULE$:Lscala/collection/immutable/Queue$;

    invoke-virtual {p2}, Lscala/collection/immutable/Queue$;->empty()Lscala/collection/immutable/Queue;

    move-result-object p2

    sget-object v2, Lscala/collection/immutable/Queue$;->MODULE$:Lscala/collection/immutable/Queue$;

    invoke-virtual {v2}, Lscala/collection/immutable/Queue$;->empty()Lscala/collection/immutable/Queue;

    move-result-object v2

    invoke-direct {v0, v1, p2, v2, p1}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;-><init>(Lscala/Function0;Lscala/collection/immutable/Queue;Lscala/collection/immutable/Queue;Lorg/bluecabin/textoo/TextooContext;)V

    return-object v0
.end method
