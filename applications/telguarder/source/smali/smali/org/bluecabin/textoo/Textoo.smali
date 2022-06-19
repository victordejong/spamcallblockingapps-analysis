.class public final Lorg/bluecabin/textoo/Textoo;
.super Ljava/lang/Object;
.source "Textoo.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static config(Landroid/text/Spanned;)Lorg/bluecabin/textoo/SpannedConfigurator;
    .locals 2

    .line 35
    invoke-static {}, Lorg/bluecabin/textoo/ConfiguratorFactory;->getInstance()Lorg/bluecabin/textoo/ConfiguratorFactory;

    move-result-object v0

    invoke-static {}, Lorg/bluecabin/textoo/Textoo;->createContext()Lorg/bluecabin/textoo/TextooContext;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lorg/bluecabin/textoo/ConfiguratorFactory;->createSpannedConfigurator(Lorg/bluecabin/textoo/TextooContext;Landroid/text/Spanned;)Lorg/bluecabin/textoo/SpannedConfigurator;

    move-result-object p0

    return-object p0
.end method

.method public static config(Ljava/lang/String;)Lorg/bluecabin/textoo/StringConfigurator;
    .locals 2

    .line 45
    invoke-static {}, Lorg/bluecabin/textoo/ConfiguratorFactory;->getInstance()Lorg/bluecabin/textoo/ConfiguratorFactory;

    move-result-object v0

    invoke-static {}, Lorg/bluecabin/textoo/Textoo;->createContext()Lorg/bluecabin/textoo/TextooContext;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lorg/bluecabin/textoo/ConfiguratorFactory;->createStringConfigurator(Lorg/bluecabin/textoo/TextooContext;Ljava/lang/String;)Lorg/bluecabin/textoo/StringConfigurator;

    move-result-object p0

    return-object p0
.end method

.method public static config(Landroid/widget/TextView;)Lorg/bluecabin/textoo/TextViewConfigurator;
    .locals 2

    .line 25
    invoke-static {}, Lorg/bluecabin/textoo/ConfiguratorFactory;->getInstance()Lorg/bluecabin/textoo/ConfiguratorFactory;

    move-result-object v0

    invoke-static {}, Lorg/bluecabin/textoo/Textoo;->createContext()Lorg/bluecabin/textoo/TextooContext;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lorg/bluecabin/textoo/ConfiguratorFactory;->createTextViewConfigurator(Lorg/bluecabin/textoo/TextooContext;Landroid/widget/TextView;)Lorg/bluecabin/textoo/TextViewConfigurator;

    move-result-object p0

    return-object p0
.end method

.method protected static createContext()Lorg/bluecabin/textoo/TextooContext;
    .locals 1

    .line 15
    new-instance v0, Lorg/bluecabin/textoo/TextooContext;

    invoke-direct {v0}, Lorg/bluecabin/textoo/TextooContext;-><init>()V

    return-object v0
.end method
