.class public Lcom/telguarder/helpers/errorhandling/ErrorHelper;
.super Ljava/lang/Object;
.source "ErrorHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorDataFromException(Landroid/app/Activity;Ljava/lang/Exception;)Lcom/telguarder/helpers/errorhandling/ErrorModel;
    .locals 2

    .line 34
    invoke-static {p0}, Lcom/telguarder/helpers/backend/NetworkHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const p1, 0x7f10009a

    .line 36
    invoke-static {p0, p1}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f100096

    .line 37
    invoke-static {p0, v0}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {p0, p1, v0}, Lcom/telguarder/helpers/errorhandling/ErrorModel;->errorModelOfTitleAndMessage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/telguarder/helpers/errorhandling/ErrorModel;

    move-result-object p0

    goto :goto_1

    .line 39
    :cond_0
    instance-of v0, p1, Lcom/android/volley/NoConnectionError;

    const v1, 0x7f10009b

    if-eqz v0, :cond_1

    .line 41
    invoke-static {p0, v1}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f100093

    .line 42
    invoke-static {p0, v0}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {p0, p1, v0}, Lcom/telguarder/helpers/errorhandling/ErrorModel;->errorModelOfTitleAndMessage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/telguarder/helpers/errorhandling/ErrorModel;

    move-result-object p0

    goto :goto_1

    .line 43
    :cond_1
    instance-of v0, p1, Lcom/android/volley/VolleyError;

    if-nez v0, :cond_4

    instance-of v0, p1, Lcom/telguarder/helpers/errorhandling/ServerError;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 48
    :cond_2
    instance-of p1, p1, Landroid/content/ActivityNotFoundException;

    if-eqz p1, :cond_3

    const p1, 0x7f100099

    .line 50
    invoke-static {p0, p1}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f100092

    .line 51
    invoke-static {p0, v0}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {p0, p1, v0}, Lcom/telguarder/helpers/errorhandling/ErrorModel;->errorModelOfTitleAndMessage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/telguarder/helpers/errorhandling/ErrorModel;

    move-result-object p0

    goto :goto_1

    :cond_3
    const p1, 0x7f100098

    .line 54
    invoke-static {p0, p1}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f100091

    .line 55
    invoke-static {p0, v0}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {p0, p1, v0}, Lcom/telguarder/helpers/errorhandling/ErrorModel;->errorModelOfTitleAndMessage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/telguarder/helpers/errorhandling/ErrorModel;

    move-result-object p0

    goto :goto_1

    .line 45
    :cond_4
    :goto_0
    invoke-static {p0, v1}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f100097

    .line 46
    invoke-static {p0, v0}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {p0, p1, v0}, Lcom/telguarder/helpers/errorhandling/ErrorModel;->errorModelOfTitleAndMessage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/telguarder/helpers/errorhandling/ErrorModel;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static handleError(Landroid/app/Activity;Ljava/lang/Exception;)V
    .locals 0

    .line 23
    invoke-static {p0, p1}, Lcom/telguarder/helpers/errorhandling/ErrorHelper;->getErrorDataFromException(Landroid/app/Activity;Ljava/lang/Exception;)Lcom/telguarder/helpers/errorhandling/ErrorModel;

    move-result-object p0

    invoke-static {p0}, Lcom/telguarder/helpers/errorhandling/ErrorHelper;->showErrorDialog(Lcom/telguarder/helpers/errorhandling/ErrorModel;)V

    return-void
.end method

.method public static showErrorDialog(Lcom/telguarder/helpers/errorhandling/ErrorModel;)V
    .locals 0

    .line 28
    invoke-static {p0}, Lcom/telguarder/helpers/ui/DialogModel;->dialogModelOfErrorData(Lcom/telguarder/helpers/errorhandling/ErrorModel;)Lcom/telguarder/helpers/ui/DialogModel;

    move-result-object p0

    invoke-static {p0}, Lcom/telguarder/helpers/ui/DialogHelper;->showAlertDialog(Lcom/telguarder/helpers/ui/DialogModel;)V

    return-void
.end method
