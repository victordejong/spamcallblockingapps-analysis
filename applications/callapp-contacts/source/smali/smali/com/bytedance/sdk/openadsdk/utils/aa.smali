.class public Lcom/bytedance/sdk/openadsdk/utils/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = false

.field private static b:Ljava/lang/String; = null

.field private static c:Ljava/lang/String; = null

.field private static d:Ljava/lang/String; = null

.field private static e:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 90
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/aa;->a:Z

    if-nez v0, :cond_0

    .line 91
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aa;->d()V

    .line 93
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/aa;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 6

    const-string v0, "MCC"

    const/4 v1, 0x0

    .line 98
    :try_start_0
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/utils/aa;->a:Z

    if-nez v2, :cond_0

    .line 99
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aa;->d()V

    .line 102
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 103
    iget v3, v2, Landroid/content/res/Configuration;->mcc:I

    if-eqz v3, :cond_1

    iget v3, v2, Landroid/content/res/Configuration;->mcc:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/bytedance/sdk/openadsdk/utils/aa;->c:Ljava/lang/String;

    .line 104
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "config="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",sMCC="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/utils/aa;->c:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/utils/aa;->e:Z

    if-nez v2, :cond_3

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getMCC"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/bytedance/sdk/openadsdk/utils/aa;->e:Z

    if-eqz v3, :cond_2

    const-string v3, "\u6709SIM\u5361"

    goto :goto_1

    :cond_2
    const-string v3, "\u65e0SIM\u5361,MCC\u8fd4\u56denull"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_3
    return-object v3

    :catchall_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 120
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/aa;->a:Z

    if-nez v0, :cond_0

    .line 121
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aa;->d()V

    .line 123
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/aa;->d:Ljava/lang/String;

    return-object v0
.end method

.method private static d()V
    .locals 8

    .line 24
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 27
    :cond_0
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/aa;->a:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 29
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v2, 0x0

    .line 33
    :try_start_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eqz v3, :cond_2

    if-eq v3, v0, :cond_1

    goto :goto_0

    .line 36
    :cond_1
    sput-boolean v2, Lcom/bytedance/sdk/openadsdk/utils/aa;->e:Z

    goto :goto_0

    .line 39
    :cond_2
    sput-boolean v2, Lcom/bytedance/sdk/openadsdk/utils/aa;->e:Z

    :goto_0
    const-string v3, "MCC"

    .line 42
    sget-boolean v4, Lcom/bytedance/sdk/openadsdk/utils/aa;->e:Z

    if-eqz v4, :cond_3

    const-string v4, "\u6709SIM\u5361"

    goto :goto_1

    :cond_3
    const-string v4, "\u65e0SIM\u5361"

    :goto_1
    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    .line 44
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :goto_2
    const/4 v3, 0x0

    .line 49
    :try_start_3
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-object v4, v3

    .line 55
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-object v5, v3

    :goto_4
    if-eqz v5, :cond_4

    .line 59
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const/4 v7, 0x5

    if-ge v6, v7, :cond_5

    .line 61
    :cond_4
    :try_start_6
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 67
    :catchall_3
    :cond_5
    :try_start_7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v6, 0x4

    if-le v1, v6, :cond_6

    const/4 v1, 0x3

    .line 68
    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_6
    move-object v1, v3

    .line 72
    :goto_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 73
    sput-object v4, Lcom/bytedance/sdk/openadsdk/utils/aa;->b:Ljava/lang/String;

    .line 75
    :cond_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 76
    sput-object v3, Lcom/bytedance/sdk/openadsdk/utils/aa;->c:Ljava/lang/String;

    .line 78
    :cond_8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 79
    sput-object v1, Lcom/bytedance/sdk/openadsdk/utils/aa;->d:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 84
    :catchall_4
    :cond_9
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/aa;->a:Z

    :cond_a
    return-void
.end method
