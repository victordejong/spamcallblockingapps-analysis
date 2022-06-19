.class Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$3;
.super Ljava/lang/Object;
.source "LastPhoneCallActivity.java"

# interfaces
.implements Lcom/telguarder/features/sharing/Shareable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->lambda$setSaveContactLayoutListener$11(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;


# direct methods
.method constructor <init>(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)V
    .locals 0

    .line 607
    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$3;->this$0:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getShareableAddress()Ljava/lang/String;
    .locals 1

    .line 648
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->access$1000()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShareableCompanyName()Ljava/lang/String;
    .locals 1

    .line 629
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->access$1100()Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->hasCompany()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->access$1100()Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getShareableEmailAddress()Ljava/lang/String;
    .locals 1

    .line 618
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->access$1000()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getShareableName()Ljava/lang/String;
    .locals 1

    .line 614
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->access$1000()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShareablePhoneNumber()Ljava/lang/String;
    .locals 1

    .line 622
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->access$1000()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 623
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->access$1000()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    return-object v0

    .line 625
    :cond_0
    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mPhoneNumberFromCall:Ljava/lang/String;

    return-object v0
.end method

.method public getShareableRole()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getShareableText()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getShareableWebsite()Ljava/lang/String;
    .locals 1

    .line 641
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->access$1100()Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->hasCompany()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->access$1100()Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableWebUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 644
    :cond_0
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->access$1000()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableWebUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
