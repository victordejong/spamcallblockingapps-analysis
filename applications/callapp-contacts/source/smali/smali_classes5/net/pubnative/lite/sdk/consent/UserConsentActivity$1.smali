.class Lnet/pubnative/lite/sdk/consent/UserConsentActivity$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/consent/UserConsentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/consent/UserConsentActivity;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/consent/UserConsentActivity;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/UserConsentActivity$1;->this$0:Lnet/pubnative/lite/sdk/consent/UserConsentActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/UserConsentActivity$1;->this$0:Lnet/pubnative/lite/sdk/consent/UserConsentActivity;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/consent/UserConsentActivity;->access$100(Lnet/pubnative/lite/sdk/consent/UserConsentActivity;)V

    .line 97
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/UserConsentActivity$1;->this$0:Lnet/pubnative/lite/sdk/consent/UserConsentActivity;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/consent/UserConsentActivity;->access$000(Lnet/pubnative/lite/sdk/consent/UserConsentActivity;)V

    .line 91
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 102
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "https://cdn.pubnative.net/static/consent/GDPR-consent-dialog-reject.html"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "https://cdn.pubnative.net/static/consent/GDPR-consent-dialog-accept.html"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "https://pubnative.net/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 115
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 108
    :pswitch_0
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getUserDataManager()Lnet/pubnative/lite/sdk/UserDataManager;

    move-result-object p1

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/UserDataManager;->denyConsent()V

    .line 109
    iget-object p1, p0, Lnet/pubnative/lite/sdk/consent/UserConsentActivity$1;->this$0:Lnet/pubnative/lite/sdk/consent/UserConsentActivity;

    const/16 p2, 0xc9

    invoke-virtual {p1, p2}, Lnet/pubnative/lite/sdk/consent/UserConsentActivity;->setResult(I)V

    return v1

    .line 104
    :pswitch_1
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getUserDataManager()Lnet/pubnative/lite/sdk/UserDataManager;

    move-result-object p1

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/UserDataManager;->grantConsent()V

    .line 105
    iget-object p1, p0, Lnet/pubnative/lite/sdk/consent/UserConsentActivity$1;->this$0:Lnet/pubnative/lite/sdk/consent/UserConsentActivity;

    const/16 p2, 0xc8

    invoke-virtual {p1, p2}, Lnet/pubnative/lite/sdk/consent/UserConsentActivity;->setResult(I)V

    return v1

    .line 112
    :pswitch_2
    iget-object p1, p0, Lnet/pubnative/lite/sdk/consent/UserConsentActivity$1;->this$0:Lnet/pubnative/lite/sdk/consent/UserConsentActivity;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/consent/UserConsentActivity;->finish()V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0xcd184e5 -> :sswitch_2
        0x392a6d33 -> :sswitch_1
        0x631b34fc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
