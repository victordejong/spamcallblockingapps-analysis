.class public Lcom/mopub/nativeads/NativeClickHandler$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/mopub/common/UrlHandler$ResultActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/NativeClickHandler;->b(Ljava/lang/String;Landroid/view/View;Lci1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lci1;

.field public final synthetic c:Lcom/mopub/nativeads/NativeClickHandler;


# direct methods
.method public constructor <init>(Lcom/mopub/nativeads/NativeClickHandler;Landroid/view/View;Lci1;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/nativeads/NativeClickHandler$b;->c:Lcom/mopub/nativeads/NativeClickHandler;

    iput-object p2, p0, Lcom/mopub/nativeads/NativeClickHandler$b;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/mopub/nativeads/NativeClickHandler$b;->b:Lci1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/mopub/nativeads/NativeClickHandler$b;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/nativeads/NativeClickHandler$b;->b:Lci1;

    invoke-virtual {v0}, Lci1;->b()Z

    :cond_0
    return-void
.end method

.method public urlHandlingFailed(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeClickHandler$b;->a()V

    iget-object p1, p0, Lcom/mopub/nativeads/NativeClickHandler$b;->c:Lcom/mopub/nativeads/NativeClickHandler;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/mopub/nativeads/NativeClickHandler;->a(Lcom/mopub/nativeads/NativeClickHandler;Z)Z

    return-void
.end method

.method public urlHandlingSucceeded(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeClickHandler$b;->a()V

    iget-object p1, p0, Lcom/mopub/nativeads/NativeClickHandler$b;->c:Lcom/mopub/nativeads/NativeClickHandler;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/mopub/nativeads/NativeClickHandler;->a(Lcom/mopub/nativeads/NativeClickHandler;Z)Z

    return-void
.end method
