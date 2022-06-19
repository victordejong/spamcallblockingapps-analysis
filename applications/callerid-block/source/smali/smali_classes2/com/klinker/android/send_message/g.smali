.class public Lcom/klinker/android/send_message/g;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(I)Landroid/telephony/SmsManager;
    .locals 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/klinker/android/send_message/f;)Landroid/telephony/SmsManager;
    .locals 0

    invoke-virtual {p0}, Lcom/klinker/android/send_message/f;->n()I

    move-result p0

    invoke-static {p0}, Lcom/klinker/android/send_message/g;->a(I)Landroid/telephony/SmsManager;

    move-result-object p0

    return-object p0
.end method
