.class public interface abstract Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener;
.super Ljava/lang/Object;
.source "PhoneNumberLookupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhoneNumberLookupCallbackListener"
.end annotation


# virtual methods
.method public abstract onLookupCancelled(Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V
.end method

.method public abstract onLookupFailed(Ljava/lang/Exception;)V
.end method

.method public abstract onLookupInProgress()V
.end method

.method public abstract onLookupNotAllowed()V
.end method

.method public abstract onNoResults()V
.end method

.method public abstract onResultsFromBackend(Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V
.end method

.method public abstract onResultsFromCache(Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V
.end method
