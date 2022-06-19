.class final Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$1;
.super Ljava/lang/Object;
.source "LastPhoneCallActivity.java"

# interfaces
.implements Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->lambda$openLastPhoneCall$0(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLookupCancelled(Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V
    .locals 0

    .line 183
    invoke-static {p1}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->access$1200(Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V

    return-void
.end method

.method public onLookupFailed(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onLookupInProgress()V
    .locals 0

    return-void
.end method

.method public onLookupNotAllowed()V
    .locals 0

    return-void
.end method

.method public onNoResults()V
    .locals 0

    return-void
.end method

.method public onResultsFromBackend(Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V
    .locals 0

    .line 177
    invoke-static {p1}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->access$1200(Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V

    return-void
.end method

.method public onResultsFromCache(Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V
    .locals 0

    .line 175
    invoke-static {p1}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->access$1200(Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V

    return-void
.end method
