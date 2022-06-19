.class public abstract Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayListServerAdapter"

.field private static registeredAdapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;",
            ">;",
            "Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private static registeredPlayListItemTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/internal/adwrapper/AdWrapperType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;->registeredAdapters:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;->registeredPlayListItemTypes:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdapter(Ljava/lang/Class;)Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;",
            ">;)",
            "Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;"
        }
    .end annotation

    sget-object v0, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;->registeredAdapters:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find specified PlayListServerAdapter for class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPlayListItemType(Ljava/lang/String;)Lcom/millennialmedia/internal/adwrapper/AdWrapperType;
    .locals 3

    sget-object v0, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;->registeredPlayListItemTypes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/adwrapper/AdWrapperType;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find specified PlayListType for type ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static registerAdapter(Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;)V
    .locals 4

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;->registeredAdapters:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayListServerAdapter <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "> already registered"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registering PlayListServerAdapter <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v1, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;->registeredAdapters:Ljava/util/Map;

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "PlayListServerAdapter cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static registerPackagedAdapters()V
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;

    invoke-direct {v0}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;->registerAdapter(Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;)V

    new-instance v0, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;

    invoke-direct {v0}, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;->registerAdapter(Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;)V

    return-void
.end method

.method public static registerPackagedPlayListItemTypes()V
    .locals 2

    new-instance v0, Lcom/millennialmedia/internal/adwrapper/ClientMediationAdWrapperType;

    invoke-direct {v0}, Lcom/millennialmedia/internal/adwrapper/ClientMediationAdWrapperType;-><init>()V

    const-string v1, "client_mediation"

    invoke-static {v1, v0}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;->registerPlayListItemType(Ljava/lang/String;Lcom/millennialmedia/internal/adwrapper/AdWrapperType;)V

    new-instance v0, Lcom/millennialmedia/internal/adwrapper/ServerMediationAdWrapperType;

    invoke-direct {v0}, Lcom/millennialmedia/internal/adwrapper/ServerMediationAdWrapperType;-><init>()V

    const-string v1, "server_mediation"

    invoke-static {v1, v0}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;->registerPlayListItemType(Ljava/lang/String;Lcom/millennialmedia/internal/adwrapper/AdWrapperType;)V

    new-instance v0, Lcom/millennialmedia/internal/adwrapper/ContentAdWrapperType;

    invoke-direct {v0}, Lcom/millennialmedia/internal/adwrapper/ContentAdWrapperType;-><init>()V

    const-string v1, "ad_content"

    invoke-static {v1, v0}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;->registerPlayListItemType(Ljava/lang/String;Lcom/millennialmedia/internal/adwrapper/AdWrapperType;)V

    new-instance v0, Lcom/millennialmedia/internal/adwrapper/ExchangeAdWrapperType;

    invoke-direct {v0}, Lcom/millennialmedia/internal/adwrapper/ExchangeAdWrapperType;-><init>()V

    const-string v1, "exchange"

    invoke-static {v1, v0}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;->registerPlayListItemType(Ljava/lang/String;Lcom/millennialmedia/internal/adwrapper/AdWrapperType;)V

    new-instance v0, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;

    invoke-direct {v0}, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;-><init>()V

    const-string v1, "smart_yield"

    invoke-static {v1, v0}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;->registerPlayListItemType(Ljava/lang/String;Lcom/millennialmedia/internal/adwrapper/AdWrapperType;)V

    new-instance v0, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;

    invoke-direct {v0}, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;-><init>()V

    const-string v1, "super_auction"

    invoke-static {v1, v0}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;->registerPlayListItemType(Ljava/lang/String;Lcom/millennialmedia/internal/adwrapper/AdWrapperType;)V

    return-void
.end method

.method public static registerPlayListItemType(Ljava/lang/String;Lcom/millennialmedia/internal/adwrapper/AdWrapperType;)V
    .locals 3

    if-eqz p1, :cond_3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;->registeredPlayListItemTypes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayListItemTypeId <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "> already registered"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering PlayListItemTypeId <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;->registeredPlayListItemTypes:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "PlayListItemTypeId cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AdWrapperType cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract loadPlayList(Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;",
            "I)V"
        }
    .end annotation
.end method
