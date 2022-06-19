.class final Lorg/bluecabin/textoo/ConfiguratorFactory;
.super Ljava/lang/Object;
.source "ConfiguratorFactory.java"


# static fields
.field private static final _instance:Lorg/bluecabin/textoo/ConfiguratorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lorg/bluecabin/textoo/ConfiguratorFactory;

    invoke-direct {v0}, Lorg/bluecabin/textoo/ConfiguratorFactory;-><init>()V

    sput-object v0, Lorg/bluecabin/textoo/ConfiguratorFactory;->_instance:Lorg/bluecabin/textoo/ConfiguratorFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/bluecabin/textoo/ConfiguratorFactory;
    .locals 1

    .line 20
    sget-object v0, Lorg/bluecabin/textoo/ConfiguratorFactory;->_instance:Lorg/bluecabin/textoo/ConfiguratorFactory;

    return-object v0
.end method


# virtual methods
.method public createSpannedConfigurator(Lorg/bluecabin/textoo/TextooContext;Landroid/text/Spanned;)Lorg/bluecabin/textoo/SpannedConfigurator;
    .locals 0

    .line 28
    invoke-static {p1, p2}, Lorg/bluecabin/textoo/impl/SpannedConfiguratorImpl;->create(Lorg/bluecabin/textoo/TextooContext;Landroid/text/Spanned;)Lorg/bluecabin/textoo/SpannedConfigurator;

    move-result-object p1

    return-object p1
.end method

.method public createStringConfigurator(Lorg/bluecabin/textoo/TextooContext;Ljava/lang/String;)Lorg/bluecabin/textoo/StringConfigurator;
    .locals 0

    .line 24
    invoke-static {p1, p2}, Lorg/bluecabin/textoo/impl/StringConfiguratorImpl;->create(Lorg/bluecabin/textoo/TextooContext;Ljava/lang/String;)Lorg/bluecabin/textoo/StringConfigurator;

    move-result-object p1

    return-object p1
.end method

.method public createTextViewConfigurator(Lorg/bluecabin/textoo/TextooContext;Landroid/widget/TextView;)Lorg/bluecabin/textoo/TextViewConfigurator;
    .locals 0

    .line 32
    invoke-static {p1, p2}, Lorg/bluecabin/textoo/impl/TextViewConfiguratorImpl;->create(Lorg/bluecabin/textoo/TextooContext;Landroid/widget/TextView;)Lorg/bluecabin/textoo/TextViewConfigurator;

    move-result-object p1

    return-object p1
.end method
