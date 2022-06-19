.class public Le/a/b/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Z = false

.field private static b:Z = true

.field private static c:I = 0xc8000

.field private static d:Ljava/lang/String; = "Android-Mms/2.0"

.field private static e:Ljava/lang/String; = "x-wap-profile"

.field private static f:Ljava/lang/String; = null

.field private static g:Ljava/lang/String; = null

.field private static h:Ljava/lang/String; = null

.field private static i:I = 0x7fffffff

.field private static j:I = 0xea60

.field private static k:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 3

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected start tag: found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", expected "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Le/a/b/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Le/a/b/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static d()I
    .locals 1

    sget v0, Le/a/b/a;->j:I

    return v0
.end method

.method public static e()I
    .locals 1

    sget v0, Le/a/b/a;->c:I

    return v0
.end method

.method public static f()Z
    .locals 1

    sget-boolean v0, Le/a/b/a;->b:Z

    return v0
.end method

.method public static g()Z
    .locals 1

    sget-boolean v0, Le/a/b/a;->k:Z

    return v0
.end method

.method public static h()Z
    .locals 1

    sget-boolean v0, Le/a/b/a;->a:Z

    return v0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    sget-object v0, Le/a/b/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    sget-object v0, Le/a/b/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    sget-object v0, Le/a/b/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static l(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Le/a/b/a;->m(Landroid/content/Context;)V

    return-void
.end method

.method private static m(Landroid/content/Context;)V
    .locals 11

    const-string v0, "uaProfUrl"

    const-string v1, "loadMmsSettings caught "

    const-string v2, "MmsConfig"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/klinker/android/send_message/e;->mms_config:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "mms_config"

    invoke-static {p0, v5}, Le/a/b/a;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {p0}, Le/a/b/a;->n(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-interface {p0, v4}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_2

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_2
    move-object v8, v3

    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tag: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "name"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "bool"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v5, "enabledMMS"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "true"

    if-eqz v5, :cond_3

    :try_start_1
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Le/a/b/a;->b:Z

    goto :goto_0

    :cond_3
    const-string v5, "enabledTransID"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Le/a/b/a;->a:Z

    goto :goto_0

    :cond_4
    const-string v5, "enabledNotifyWapMMSC"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Le/a/b/a;->k:Z

    goto/16 :goto_0

    :cond_5
    const-string v5, "aliasEnabled"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    :goto_2
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_6
    const-string v5, "allowAttachAudio"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_2

    :cond_7
    const-string v5, "enableMultipartSMS"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_2

    :cond_8
    const-string v5, "enableSplitSMS"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_2

    :cond_9
    const-string v5, "enableSlideDuration"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_2

    :cond_a
    const-string v5, "enableMMSReadReports"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_2

    :cond_b
    const-string v5, "enableSMSDeliveryReports"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_2

    :cond_c
    const-string v5, "enableMMSDeliveryReports"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_2

    :cond_d
    const-string v5, "enableGroupMms"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_e
    const-string v6, "int"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    const-string v5, "maxMessageSize"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Le/a/b/a;->c:I

    goto/16 :goto_0

    :cond_f
    const-string v5, "maxImageHeight"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    :goto_3
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_10
    const-string v5, "maxImageWidth"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_3

    :cond_11
    const-string v5, "defaultSMSMessagesPerThread"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    goto :goto_3

    :cond_12
    const-string v5, "defaultMMSMessagesPerThread"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_3

    :cond_13
    const-string v5, "minMessageCountPerThread"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    goto :goto_3

    :cond_14
    const-string v5, "maxMessageCountPerThread"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_3

    :cond_15
    const-string v5, "recipientLimit"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Le/a/b/a;->i:I

    if-gez v5, :cond_0

    const v5, 0x7fffffff

    sput v5, Le/a/b/a;->i:I

    goto/16 :goto_0

    :cond_16
    const-string v5, "httpSocketTimeout"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Le/a/b/a;->j:I

    goto/16 :goto_0

    :cond_17
    const-string v5, "minimumSlideElementDuration"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    goto :goto_3

    :cond_18
    const-string v5, "maxSizeScaleForPendingMmsAllowed"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    goto :goto_3

    :cond_19
    const-string v5, "aliasMinChars"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    goto :goto_3

    :cond_1a
    const-string v5, "aliasMaxChars"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    goto :goto_3

    :cond_1b
    const-string v5, "smsToMmsTextThreshold"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    goto/16 :goto_3

    :cond_1c
    const-string v5, "maxMessageTextSize"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    goto/16 :goto_3

    :cond_1d
    const-string v5, "maxSubjectLength"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_3

    :cond_1e
    const-string v6, "string"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "userAgent"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    sput-object v8, Le/a/b/a;->d:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1f
    const-string v5, "uaProfTagName"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    sput-object v8, Le/a/b/a;->e:Ljava/lang/String;

    goto/16 :goto_0

    :cond_20
    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    sput-object v8, Le/a/b/a;->f:Ljava/lang/String;

    goto/16 :goto_0

    :cond_21
    const-string v5, "httpParams"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    sput-object v8, Le/a/b/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :cond_22
    const-string v5, "httpParamsLine1Key"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    sput-object v8, Le/a/b/a;->h:Ljava/lang/String;

    goto/16 :goto_0

    :cond_23
    const-string v5, "emailGatewayNumber"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v5

    goto :goto_4

    :catch_1
    move-exception v5

    goto :goto_4

    :catch_2
    move-exception v5

    :goto_4
    :try_start_2
    invoke-static {v2, v1, v5}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    invoke-static {}, Le/a/b/a;->f()Z

    move-result p0

    if-eqz p0, :cond_24

    sget-object p0, Le/a/b/a;->f:Ljava/lang/String;

    if-nez p0, :cond_24

    goto :goto_6

    :cond_24
    move-object v0, v3

    :goto_6
    if-eqz v0, :cond_25

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    aput-object v0, p0, v4

    const-string v0, "MmsConfig.loadMmsSettings mms_config.xml missing %s setting"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Le/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    return-void

    :goto_7
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method public static final n(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static o(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Le/a/b/a;->e:Ljava/lang/String;

    return-void
.end method

.method public static p(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Le/a/b/a;->f:Ljava/lang/String;

    return-void
.end method

.method public static q(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Le/a/b/a;->d:Ljava/lang/String;

    return-void
.end method
