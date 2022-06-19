.class public Lcom/callapp/contacts/manager/asset/mappers/AssetListenerMapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/callapp/contacts/manager/asset/mappers/AssetListenerMapper;->a:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/callapp/contacts/manager/asset/mappers/AssetListenerMapper;->a:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    invoke-interface {v0, p1, p2}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;->onAssetReady(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onAssetReady(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 6
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/manager/asset/mappers/AssetListenerMapper;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
