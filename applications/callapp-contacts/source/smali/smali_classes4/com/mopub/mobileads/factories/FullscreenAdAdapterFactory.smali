.class public Lcom/mopub/mobileads/factories/FullscreenAdAdapterFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Lcom/mopub/mobileads/factories/FullscreenAdAdapterFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/mopub/mobileads/factories/FullscreenAdAdapterFactory;

    invoke-direct {v0}, Lcom/mopub/mobileads/factories/FullscreenAdAdapterFactory;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/factories/FullscreenAdAdapterFactory;->a:Lcom/mopub/mobileads/factories/FullscreenAdAdapterFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mobileads/AdData;)Lcom/mopub/mobileads/FullscreenAdAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mobileads/AdAdapter$BaseAdNotFoundException;
        }
    .end annotation

    .line 1035
    new-instance v0, Lcom/mopub/mobileads/FullscreenAdAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/mopub/mobileads/FullscreenAdAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mobileads/AdData;)V

    return-object v0
.end method

.method public static setInstance(Lcom/mopub/mobileads/factories/FullscreenAdAdapterFactory;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 23
    sput-object p0, Lcom/mopub/mobileads/factories/FullscreenAdAdapterFactory;->a:Lcom/mopub/mobileads/factories/FullscreenAdAdapterFactory;

    return-void
.end method
