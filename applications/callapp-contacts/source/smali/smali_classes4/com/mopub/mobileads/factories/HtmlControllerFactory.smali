.class public Lcom/mopub/mobileads/factories/HtmlControllerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Lcom/mopub/mobileads/factories/HtmlControllerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/mopub/mobileads/factories/HtmlControllerFactory;

    invoke-direct {v0}, Lcom/mopub/mobileads/factories/HtmlControllerFactory;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/factories/HtmlControllerFactory;->a:Lcom/mopub/mobileads/factories/HtmlControllerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lcom/mopub/mobileads/HtmlController;
    .locals 1

    .line 1030
    new-instance v0, Lcom/mopub/mobileads/HtmlController;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/HtmlController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static setInstance(Lcom/mopub/mobileads/factories/HtmlControllerFactory;)V
    .locals 0

    .line 20
    sput-object p0, Lcom/mopub/mobileads/factories/HtmlControllerFactory;->a:Lcom/mopub/mobileads/factories/HtmlControllerFactory;

    return-void
.end method
