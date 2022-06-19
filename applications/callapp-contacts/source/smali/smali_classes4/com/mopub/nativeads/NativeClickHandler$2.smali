.class final Lcom/mopub/nativeads/NativeClickHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/UrlHandler$ResultActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/NativeClickHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/mopub/nativeads/i;

.field final synthetic c:Lcom/mopub/nativeads/NativeClickHandler;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/NativeClickHandler;Landroid/view/View;Lcom/mopub/nativeads/i;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/mopub/nativeads/NativeClickHandler$2;->c:Lcom/mopub/nativeads/NativeClickHandler;

    iput-object p2, p0, Lcom/mopub/nativeads/NativeClickHandler$2;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/mopub/nativeads/NativeClickHandler$2;->b:Lcom/mopub/nativeads/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/mopub/nativeads/NativeClickHandler$2;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/mopub/nativeads/NativeClickHandler$2;->b:Lcom/mopub/nativeads/i;

    invoke-virtual {v0}, Lcom/mopub/nativeads/i;->a()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final urlHandlingFailed(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeClickHandler$2;->a()V

    .line 154
    iget-object p1, p0, Lcom/mopub/nativeads/NativeClickHandler$2;->c:Lcom/mopub/nativeads/NativeClickHandler;

    invoke-static {p1}, Lcom/mopub/nativeads/NativeClickHandler;->a(Lcom/mopub/nativeads/NativeClickHandler;)Z

    return-void
.end method

.method public final urlHandlingSucceeded(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeClickHandler$2;->a()V

    .line 147
    iget-object p1, p0, Lcom/mopub/nativeads/NativeClickHandler$2;->c:Lcom/mopub/nativeads/NativeClickHandler;

    invoke-static {p1}, Lcom/mopub/nativeads/NativeClickHandler;->a(Lcom/mopub/nativeads/NativeClickHandler;)Z

    return-void
.end method
