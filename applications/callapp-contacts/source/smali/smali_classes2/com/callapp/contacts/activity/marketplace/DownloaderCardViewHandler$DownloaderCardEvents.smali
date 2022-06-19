.class public interface abstract Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloaderCardEvents"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;Lcom/callapp/contacts/widget/ProgressCardView;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/callapp/contacts/widget/ProgressCardView;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public abstract b(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract c()Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Z"
        }
    .end annotation
.end method

.method public abstract c(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract d(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method

.method public abstract getItemType()I
.end method

.method public abstract getLeftButtonPrefixText()Ljava/lang/String;
.end method

.method public abstract getPromotionType()Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;
.end method

.method public abstract getPurchasePref()Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;
.end method

.method public abstract h()Z
.end method

.method public abstract i()V
.end method

.method public abstract isLightTheme()Z
.end method

.method public abstract isSkuInUse()Z
.end method

.method public abstract j()V
.end method
