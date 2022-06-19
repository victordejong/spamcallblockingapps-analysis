.class public abstract Lcom/callapp/contacts/manager/asset/managers/UrlAssetManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

.field private b:Ljava/lang/String;

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/asset/managers/UrlAssetManager;->c:Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Lcom/callapp/contacts/manager/asset/managers/UrlAssetManager;->a:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    return-void
.end method


# virtual methods
.method final a(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/callapp/contacts/manager/asset/managers/UrlAssetManager;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/asset/managers/UrlAssetManager;->getCustomizableSignature()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;->onAssetReady(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/asset/managers/UrlAssetManager;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/asset/managers/UrlAssetManager;->getAssetSourceUrl()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/manager/asset/managers/UrlAssetManager;->setAsset(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/asset/managers/UrlAssetManager;->getCustomizableSignature()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;->onAssetReady(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected abstract a()Z
.end method

.method public final c()Z
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/callapp/contacts/manager/asset/managers/UrlAssetManager;->a:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/asset/managers/UrlAssetManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/asset/managers/UrlAssetManager;->a()Z

    move-result v0

    return v0
.end method

.method protected abstract getAssetSourceUrl()Ljava/lang/String;
.end method

.method protected abstract getCustomizableSignature()Ljava/lang/String;
.end method

.method protected setAsset(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/callapp/contacts/manager/asset/managers/UrlAssetManager;->b:Ljava/lang/String;

    return-void
.end method
