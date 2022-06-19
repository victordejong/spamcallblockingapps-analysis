.class Lnet/pubnative/lite/sdk/UserDataManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/UserDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/UserDataManager;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/UserDataManager;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lnet/pubnative/lite/sdk/UserDataManager$5;->this$0:Lnet/pubnative/lite/sdk/UserDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5

    .line 314
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "IABTCF_TCString"

    const-string v2, "IABConsent_ConsentString"

    const-string v3, "IABUSPrivacy_String"

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    const/4 p2, 0x0

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 325
    :pswitch_0
    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 326
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 327
    iget-object p2, p0, Lnet/pubnative/lite/sdk/UserDataManager$5;->this$0:Lnet/pubnative/lite/sdk/UserDataManager;

    invoke-virtual {p2, p1}, Lnet/pubnative/lite/sdk/UserDataManager;->setIABGDPRConsentString(Ljava/lang/String;)V

    return-void

    .line 329
    :cond_3
    iget-object p1, p0, Lnet/pubnative/lite/sdk/UserDataManager$5;->this$0:Lnet/pubnative/lite/sdk/UserDataManager;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/UserDataManager;->removeIABGDPRConsentString()V

    return-void

    .line 316
    :pswitch_1
    invoke-interface {p1, v2, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 317
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 318
    iget-object p2, p0, Lnet/pubnative/lite/sdk/UserDataManager$5;->this$0:Lnet/pubnative/lite/sdk/UserDataManager;

    invoke-virtual {p2, p1}, Lnet/pubnative/lite/sdk/UserDataManager;->setIABGDPRConsentString(Ljava/lang/String;)V

    return-void

    .line 320
    :cond_4
    iget-object p1, p0, Lnet/pubnative/lite/sdk/UserDataManager$5;->this$0:Lnet/pubnative/lite/sdk/UserDataManager;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/UserDataManager;->removeIABGDPRConsentString()V

    return-void

    .line 334
    :pswitch_2
    invoke-interface {p1, v3, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 335
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 336
    iget-object p2, p0, Lnet/pubnative/lite/sdk/UserDataManager$5;->this$0:Lnet/pubnative/lite/sdk/UserDataManager;

    invoke-virtual {p2, p1}, Lnet/pubnative/lite/sdk/UserDataManager;->setIABUSPrivacyString(Ljava/lang/String;)V

    return-void

    .line 338
    :cond_5
    iget-object p1, p0, Lnet/pubnative/lite/sdk/UserDataManager$5;->this$0:Lnet/pubnative/lite/sdk/UserDataManager;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/UserDataManager;->removeIABUSPrivacyString()V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2c500d30 -> :sswitch_2
        0x39c4b13c -> :sswitch_1
        0x48a6de12 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
