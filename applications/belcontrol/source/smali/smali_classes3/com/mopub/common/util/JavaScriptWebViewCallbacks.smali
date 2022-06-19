.class public final enum Lcom/mopub/common/util/JavaScriptWebViewCallbacks;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/util/JavaScriptWebViewCallbacks;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum WEB_VIEW_DID_APPEAR:Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

.field public static final enum WEB_VIEW_DID_CLOSE:Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

.field public static final synthetic b:[Lcom/mopub/common/util/JavaScriptWebViewCallbacks;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    const-string v1, "WEB_VIEW_DID_APPEAR"

    const/4 v2, 0x0

    const-string v3, "webviewDidAppear();"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->WEB_VIEW_DID_APPEAR:Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    new-instance v1, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    const-string v3, "WEB_VIEW_DID_CLOSE"

    const/4 v4, 0x1

    const-string v5, "webviewDidClose();"

    invoke-direct {v1, v3, v4, v5}, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->WEB_VIEW_DID_CLOSE:Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->b:[Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/util/JavaScriptWebViewCallbacks;
    .locals 1

    const-class v0, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/util/JavaScriptWebViewCallbacks;
    .locals 1

    sget-object v0, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->b:[Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    invoke-virtual {v0}, [Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    return-object v0
.end method


# virtual methods
.method public getJavascript()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
