.class public Lcom/callapp/contacts/loader/IMExtractedPhotoDataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/callapp/contacts/model/contact/DataSource;
    .locals 2

    .line 168
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "org.thoughtcrime.securesms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "com.whatsapp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "com.viber.voip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "org.telegram.messenger"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "com.whatsapp.w4b"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 175
    :pswitch_0
    sget-object p0, Lcom/callapp/contacts/model/contact/DataSource;->signal:Lcom/callapp/contacts/model/contact/DataSource;

    return-object p0

    .line 173
    :pswitch_1
    sget-object p0, Lcom/callapp/contacts/model/contact/DataSource;->viber:Lcom/callapp/contacts/model/contact/DataSource;

    return-object p0

    .line 177
    :pswitch_2
    sget-object p0, Lcom/callapp/contacts/model/contact/DataSource;->telegram:Lcom/callapp/contacts/model/contact/DataSource;

    return-object p0

    .line 171
    :pswitch_3
    sget-object p0, Lcom/callapp/contacts/model/contact/DataSource;->whatsapp:Lcom/callapp/contacts/model/contact/DataSource;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d641daa -> :sswitch_4
        -0x71148650 -> :sswitch_3
        -0x62737221 -> :sswitch_2
        -0x5c4004a1 -> :sswitch_1
        -0x1cfe9c69 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static a(JLcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;
    .locals 0

    .line 72
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/loader/IMExtractedPhotoDataManager;->d(JLcom/callapp/framework/phone/Phone;)Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;

    return-object p0
.end method

.method public static a(JLcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/String;)Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;
    .locals 2

    .line 44
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 47
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/loader/IMExtractedPhotoDataManager;->a(JLcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;

    move-result-object v1

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;

    invoke-direct {v1}, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;-><init>()V

    .line 50
    invoke-static {p2, p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->setPhoneOrIdKey(Ljava/lang/String;)V

    .line 53
    :cond_0
    invoke-virtual {v1, p3}, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->setDataSource(Lcom/callapp/contacts/model/contact/DataSource;)V

    .line 54
    invoke-virtual {v1, p4}, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->setUrl(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->setDate(J)V

    .line 56
    invoke-virtual {v0, v1}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    return-object v1
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 13

    .line 91
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    const-string v1, "CallappIMDefaultImagesValues"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_6

    .line 95
    :try_start_0
    new-instance v2, Lcom/callapp/contacts/loader/IMExtractedPhotoDataManager$1;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/IMExtractedPhotoDataManager$1;-><init>()V

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/serializer/string/Parser;->a(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/manager/NotificationExtractors/JSONDefaultImagesValues;

    if-eqz v0, :cond_6

    const/4 v2, -0x1

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v7, "org.thoughtcrime.securesms"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v7, "com.whatsapp"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_2
    const-string v7, "com.viber.voip"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v7, "com.whatsapp.w4b"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 116
    :cond_1
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/NotificationExtractors/JSONDefaultImagesValues;->getSignal()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 113
    :cond_2
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/NotificationExtractors/JSONDefaultImagesValues;->getViber()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 101
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v2, 0x10

    if-eq p1, v2, :cond_5

    const/16 v2, 0x20

    if-eq p1, v2, :cond_4

    goto :goto_1

    .line 103
    :cond_4
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/NotificationExtractors/JSONDefaultImagesValues;->getWhatsappDark()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    .line 108
    :cond_5
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/NotificationExtractors/JSONDefaultImagesValues;->getWhatsapp()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 122
    const-class v0, Lcom/callapp/contacts/util/ImageUtils;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    if-eqz v1, :cond_d

    .line 126
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_7

    goto/16 :goto_6

    .line 130
    :cond_7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/lit8 p1, p1, 0xa

    .line 131
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 133
    :goto_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-ge v2, v8, :cond_c

    if-gtz v2, :cond_c

    move v8, v0

    :goto_3
    if-ge v8, p1, :cond_b

    .line 135
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    add-int/lit8 v10, v2, 0x1

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    .line 136
    invoke-virtual {p0, v2, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    if-eqz v9, :cond_a

    if-eqz v10, :cond_a

    .line 139
    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v11

    const/16 v12, 0xff

    if-eq v11, v12, :cond_a

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v11

    if-eq v11, v12, :cond_a

    .line 140
    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v11

    if-eq v11, v12, :cond_a

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v11

    if-eq v11, v12, :cond_a

    .line 141
    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    if-eq v11, v12, :cond_a

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    if-eq v11, v12, :cond_a

    .line 145
    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lt v7, v11, :cond_9

    .line 146
    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lt v7, v11, :cond_9

    .line 147
    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-gt v7, v11, :cond_9

    .line 148
    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-gt v7, v11, :cond_9

    .line 149
    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lt v7, v11, :cond_9

    .line 150
    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lt v7, v11, :cond_9

    .line 151
    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-gt v7, v11, :cond_9

    .line 152
    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-gt v7, v11, :cond_9

    .line 153
    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    const/4 v11, 0x4

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lt v7, v12, :cond_9

    .line 154
    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lt v7, v11, :cond_9

    .line 155
    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    const/4 v9, 0x5

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-gt v7, v11, :cond_9

    .line 156
    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v7, v9, :cond_8

    goto :goto_4

    :cond_8
    const/4 v7, 0x0

    goto :goto_5

    :cond_9
    :goto_4
    return v5

    :cond_a
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_c
    if-nez v7, :cond_d

    return v6

    :cond_d
    :goto_6
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d641daa -> :sswitch_3
        -0x62737221 -> :sswitch_2
        -0x5c4004a1 -> :sswitch_1
        -0x1cfe9c69 -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;)Z
    .locals 4

    .line 82
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->getDate()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-static {v0, p0}, Lcom/callapp/contacts/util/date/DateUtils;->b(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    const-wide/16 v2, 0x1e

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(JLcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;
    .locals 0

    .line 78
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/loader/IMExtractedPhotoDataManager;->d(JLcom/callapp/framework/phone/Phone;)Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;

    return-object p0
.end method

.method public static b(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IMPhotos"

    invoke-static {p0, v0, p1}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static c(JLcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 87
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/loader/IMExtractedPhotoDataManager;->d(JLcom/callapp/framework/phone/Phone;)Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->f()J

    return-void
.end method

.method private static d(JLcom/callapp/framework/phone/Phone;)Lio/objectbox/query/Query;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/callapp/framework/phone/Phone;",
            ")",
            "Lio/objectbox/query/Query<",
            "Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;",
            ">;"
        }
    .end annotation

    .line 65
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_;->phoneOrIdKey:Lio/objectbox/g;

    invoke-static {p2, p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    return-object p0
.end method
