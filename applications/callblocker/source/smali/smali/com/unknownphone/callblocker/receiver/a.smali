.class public Lcom/unknownphone/callblocker/receiver/a;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unknownphone/callblocker/receiver/a$a;
    }
.end annotation


# static fields
.field private static a:I


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/unknownphone/callblocker/receiver/a;->d:Landroid/content/Context;

    .line 63
    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unknownphone/callblocker/receiver/a$a;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 414
    const-string/jumbo v1, ""

    .line 415
    if-nez p1, :cond_1

    .line 419
    :cond_0
    return-object v1

    .line 416
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/receiver/a$a;

    .line 417
    iget-object v3, v0, Lcom/unknownphone/callblocker/receiver/a$a;->b:Ljava/lang/String;

    invoke-direct {p0, v3, p2}, Lcom/unknownphone/callblocker/receiver/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 418
    iget-object v0, v0, Lcom/unknownphone/callblocker/receiver/a$a;->a:Ljava/lang/String;

    :goto_1
    move-object v1, v0

    .line 417
    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/unknownphone/callblocker/receiver/a$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 385
    const-string/jumbo v0, "PhoneStateListener"

    const-string/jumbo v1, "getContacts() was called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 389
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 391
    if-nez v0, :cond_0

    move-object v0, v6

    .line 410
    :goto_0
    return-object v0

    .line 393
    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "display_name"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string/jumbo v4, "data1"

    aput-object v4, v2, v1

    .line 396
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 399
    if-nez v1, :cond_1

    move-object v0, v6

    goto :goto_0

    .line 401
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 403
    :try_start_0
    new-instance v0, Lcom/unknownphone/callblocker/receiver/a$a;

    invoke-direct {v0, v1}, Lcom/unknownphone/callblocker/receiver/a$a;-><init>(Landroid/database/Cursor;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 404
    :catch_0
    move-exception v0

    .line 405
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    .line 408
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    .line 410
    goto :goto_0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 423
    packed-switch p1, :pswitch_data_0

    .line 434
    const-string/jumbo v0, "PhoneStateListener"

    const-string/jumbo v1, "Current call state could not be recognized."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :goto_0
    return-void

    .line 425
    :pswitch_0
    const-string/jumbo v0, "PhoneStateListener"

    const-string/jumbo v1, "Current call state is idle."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 428
    :pswitch_1
    const-string/jumbo v0, "PhoneStateListener"

    const-string/jumbo v1, "Current call state is off hook."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 431
    :pswitch_2
    const-string/jumbo v0, "PhoneStateListener"

    const-string/jumbo v1, "Current call state is ringing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 423
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 98
    const-string/jumbo v0, "PhoneStateListener"

    const-string/jumbo v1, "onStartedRinging() was called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v4, v6

    .line 103
    :goto_0
    const-string/jumbo v0, "com.unknownphone.callblocker.PREFS"

    invoke-virtual {p1, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 104
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 105
    const-string/jumbo v1, "telecom"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 106
    const-string/jumbo v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 107
    new-instance v10, Lcom/unknownphone/callblocker/d/b;

    invoke-direct {v10, p1}, Lcom/unknownphone/callblocker/d/b;-><init>(Landroid/content/Context;)V

    .line 109
    if-nez v0, :cond_3

    move-object v3, v7

    :goto_1
    iput-object v3, p0, Lcom/unknownphone/callblocker/receiver/a;->c:Ljava/lang/String;

    .line 110
    iget-object v3, p0, Lcom/unknownphone/callblocker/receiver/a;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/unknownphone/callblocker/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/unknownphone/callblocker/receiver/a;->b:Ljava/lang/String;

    .line 117
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 119
    const-string/jumbo v3, "block_all_calls"

    invoke-interface {v9, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 120
    invoke-direct {p0, v0, v1, v2}, Lcom/unknownphone/callblocker/receiver/a;->a(Landroid/telephony/TelephonyManager;Landroid/telecom/TelecomManager;Landroid/media/AudioManager;)V

    .line 207
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v4, v5

    .line 102
    goto :goto_0

    .line 109
    :cond_3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 124
    :cond_4
    const-string/jumbo v3, "block_strange_calls"

    invoke-interface {v9, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 126
    :try_start_0
    invoke-direct {p0, p1}, Lcom/unknownphone/callblocker/receiver/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 130
    :goto_3
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v8, v6

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/unknownphone/callblocker/receiver/a$a;

    .line 131
    iget-object v3, v3, Lcom/unknownphone/callblocker/receiver/a$a;->b:Ljava/lang/String;

    invoke-direct {p0, v3, p2}, Lcom/unknownphone/callblocker/receiver/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    move v3, v5

    :goto_5
    move v8, v3

    goto :goto_4

    .line 133
    :cond_5
    if-eqz v8, :cond_6

    .line 134
    invoke-direct {p0, v0, v1, v2}, Lcom/unknownphone/callblocker/receiver/a;->a(Landroid/telephony/TelephonyManager;Landroid/telecom/TelecomManager;Landroid/media/AudioManager;)V

    goto :goto_2

    .line 139
    :cond_6
    const-string/jumbo v3, "block_international_calls"

    invoke-interface {v9, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 142
    :try_start_1
    invoke-static {}, Lcom/google/i18n/phonenumbers/g;->a()Lcom/google/i18n/phonenumbers/g;

    move-result-object v3

    iget-object v8, p0, Lcom/unknownphone/callblocker/receiver/a;->c:Ljava/lang/String;

    invoke-static {p2, v8}, Lcom/unknownphone/callblocker/custom/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 143
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v12

    .line 142
    invoke-virtual {v3, v8, v12}, Lcom/google/i18n/phonenumbers/g;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$a;

    move-result-object v3

    .line 143
    invoke-virtual {v3}, Lcom/google/i18n/phonenumbers/i$a;->a()I

    move-result v3

    .line 142
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 148
    :goto_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/unknownphone/callblocker/receiver/a;->b:Ljava/lang/String;

    .line 149
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/unknownphone/callblocker/receiver/a;->b:Ljava/lang/String;

    .line 150
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 151
    invoke-direct {p0, v0, v1, v2}, Lcom/unknownphone/callblocker/receiver/a;->a(Landroid/telephony/TelephonyManager;Landroid/telecom/TelecomManager;Landroid/media/AudioManager;)V

    goto :goto_2

    .line 144
    :catch_0
    move-exception v3

    .line 145
    invoke-virtual {v3}, Lcom/google/i18n/phonenumbers/NumberParseException;->printStackTrace()V

    move-object v3, v7

    goto :goto_6

    .line 156
    :cond_7
    const-string/jumbo v3, "block_unknown_calls"

    invoke-interface {v9, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 157
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 158
    invoke-direct {p0, v0, v1, v2}, Lcom/unknownphone/callblocker/receiver/a;->a(Landroid/telephony/TelephonyManager;Landroid/telecom/TelecomManager;Landroid/media/AudioManager;)V

    goto/16 :goto_2

    .line 163
    :cond_8
    invoke-virtual {v10}, Lcom/unknownphone/callblocker/d/b;->b()Ljava/util/List;

    move-result-object v3

    .line 164
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/unknownphone/callblocker/a/c;

    .line 165
    invoke-virtual {v3}, Lcom/unknownphone/callblocker/a/c;->b()S

    move-result v12

    if-eqz v12, :cond_a

    .line 166
    invoke-virtual {v3}, Lcom/unknownphone/callblocker/a/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/unknownphone/callblocker/receiver/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 167
    invoke-direct {p0, v0, v1, v2}, Lcom/unknownphone/callblocker/receiver/a;->a(Landroid/telephony/TelephonyManager;Landroid/telecom/TelecomManager;Landroid/media/AudioManager;)V

    goto/16 :goto_2

    .line 171
    :cond_a
    invoke-virtual {v3}, Lcom/unknownphone/callblocker/a/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v3}, Lcom/unknownphone/callblocker/receiver/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 172
    invoke-direct {p0, v0, v1, v2}, Lcom/unknownphone/callblocker/receiver/a;->a(Landroid/telephony/TelephonyManager;Landroid/telecom/TelecomManager;Landroid/media/AudioManager;)V

    goto/16 :goto_2

    .line 178
    :cond_b
    invoke-virtual {v10}, Lcom/unknownphone/callblocker/d/b;->c()Ljava/util/List;

    move-result-object v3

    .line 179
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/unknownphone/callblocker/g/a;

    .line 180
    invoke-virtual {v3}, Lcom/unknownphone/callblocker/g/a;->b()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12, p2}, Lcom/unknownphone/callblocker/receiver/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_13

    :goto_8
    move-object v7, v3

    .line 183
    goto :goto_7

    .line 185
    :cond_c
    if-eqz v7, :cond_e

    if-eqz v4, :cond_d

    const-string/jumbo v3, "block_spam_calls"

    invoke-interface {v9, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 186
    :cond_d
    invoke-direct {p0, v0, v1, v2}, Lcom/unknownphone/callblocker/receiver/a;->a(Landroid/telephony/TelephonyManager;Landroid/telecom/TelecomManager;Landroid/media/AudioManager;)V

    goto/16 :goto_2

    .line 192
    :cond_e
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    if-eqz v7, :cond_10

    .line 195
    invoke-virtual {v7}, Lcom/unknownphone/callblocker/g/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 204
    :goto_9
    if-eqz v7, :cond_f

    const-string/jumbo v1, "identify_spam_calls"

    invoke-interface {v9, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 205
    invoke-static {p2}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/unknownphone/callblocker/receiver/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_f
    invoke-static {p2}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v7, :cond_12

    :goto_a
    invoke-direct {p0, v10, v0, v1, v6}, Lcom/unknownphone/callblocker/receiver/a;->a(Lcom/unknownphone/callblocker/d/b;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 197
    :cond_10
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 198
    :try_start_2
    invoke-direct {p0, p1}, Lcom/unknownphone/callblocker/receiver/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 201
    :cond_11
    :goto_b
    invoke-direct {p0, v11, p2}, Lcom/unknownphone/callblocker/receiver/a;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/unknownphone/callblocker/receiver/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_12
    move v6, v5

    .line 206
    goto :goto_a

    .line 199
    :catch_1
    move-exception v0

    goto :goto_b

    .line 127
    :catch_2
    move-exception v3

    goto/16 :goto_3

    :cond_13
    move-object v3, v7

    goto :goto_8

    :cond_14
    move v3, v8

    goto/16 :goto_5
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v8, -0x1

    .line 212
    const-string/jumbo v0, "PhoneStateListener"

    const-string/jumbo v1, "displayOverlayWindow() was called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 218
    const/16 v0, 0x7f6

    move v1, v0

    .line 221
    :goto_0
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 222
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 223
    const v3, 0x80008

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 224
    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 225
    const/4 v3, -0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 226
    const/16 v3, 0x10

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 227
    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 228
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 229
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 230
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 232
    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 233
    if-nez v1, :cond_2

    .line 313
    :cond_0
    :goto_1
    return-void

    .line 219
    :cond_1
    const/16 v0, 0x7da

    move v1, v0

    goto :goto_0

    .line 235
    :cond_2
    const v3, 0x7f0c008d

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 236
    if-eqz v6, :cond_0

    .line 240
    if-eqz v0, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 242
    :try_start_0
    invoke-interface {v0, v6}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_4

    .line 249
    :try_start_1
    invoke-interface {v0, v6, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    .line 256
    :cond_4
    :goto_3
    new-instance v1, Lcom/unknownphone/callblocker/receiver/a$1;

    invoke-direct {v1, p0, v2, v0, v6}, Lcom/unknownphone/callblocker/receiver/a$1;-><init>(Lcom/unknownphone/callblocker/receiver/a;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Landroid/view/View;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 285
    const v1, 0x7f090088

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 286
    const v2, 0x7f090141

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 287
    const v3, 0x7f0900ec

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatImageView;

    .line 288
    const v4, 0x7f090134

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 289
    const v5, 0x7f09007a

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/cardview/widget/CardView;

    .line 293
    new-instance v7, Lcom/unknownphone/callblocker/receiver/a$2;

    invoke-direct {v7, p0, v0, v6}, Lcom/unknownphone/callblocker/receiver/a$2;-><init>(Lcom/unknownphone/callblocker/receiver/a;Landroid/view/WindowManager;Landroid/view/View;)V

    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    invoke-virtual {v4, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    invoke-virtual {v2, p3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    invoke-virtual {v4, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 306
    invoke-virtual {v2, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 307
    const v0, 0x7f080109

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 308
    const-string/jumbo v0, "#c85c53"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 312
    const-string/jumbo v0, "A phone number was identified by the app."

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/CustomApplication;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 243
    :catch_0
    move-exception v1

    .line 244
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_2

    .line 250
    :catch_1
    move-exception v1

    .line 251
    :goto_4
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_3

    .line 250
    :catch_2
    move-exception v1

    goto :goto_4
.end method

.method private a(Landroid/telephony/TelephonyManager;Landroid/telecom/TelecomManager;Landroid/media/AudioManager;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 332
    const-string/jumbo v0, "PhoneStateListener"

    const-string/jumbo v1, "rejectCall() was called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    if-eqz p3, :cond_0

    .line 335
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    .line 336
    const/16 v0, -0x64

    invoke-virtual {p3, v4, v0, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 340
    :cond_0
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    if-eqz p2, :cond_1

    .line 342
    :try_start_0
    invoke-virtual {p2}, Landroid/telecom/TelecomManager;->endCall()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 350
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 351
    const-string/jumbo v1, "getITelephony"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 352
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 353
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 355
    const-string/jumbo v2, "endCall"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 356
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 363
    :cond_2
    :goto_2
    const-string/jumbo v0, "A phone number was blocked by the app."

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/CustomApplication;->a(Ljava/lang/String;)V

    .line 364
    return-void

    .line 337
    :cond_3
    invoke-virtual {p3, v4, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    .line 357
    :catch_1
    move-exception v0

    .line 359
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 357
    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_3
.end method

.method private a(Lcom/unknownphone/callblocker/d/b;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 316
    new-instance v1, Lcom/unknownphone/callblocker/e/a;

    invoke-direct {v1}, Lcom/unknownphone/callblocker/e/a;-><init>()V

    .line 317
    invoke-virtual {v1, p3}, Lcom/unknownphone/callblocker/e/a;->b(Ljava/lang/String;)V

    .line 318
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/unknownphone/callblocker/e/a;->a(I)V

    .line 319
    invoke-virtual {v1, p2}, Lcom/unknownphone/callblocker/e/a;->a(Ljava/lang/String;)V

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/unknownphone/callblocker/e/a;->b(J)V

    .line 321
    if-eqz p4, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Lcom/unknownphone/callblocker/e/a;->a(S)V

    .line 323
    invoke-virtual {p1, v1}, Lcom/unknownphone/callblocker/d/b;->a(Lcom/unknownphone/callblocker/e/a;)V

    .line 324
    return-void

    .line 321
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/unknownphone/callblocker/receiver/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/unknownphone/callblocker/receiver/a;->c:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/unknownphone/callblocker/custom/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f10020a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 372
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 380
    :cond_1
    :goto_0
    return v0

    .line 373
    :cond_2
    iget-object v2, p0, Lcom/unknownphone/callblocker/receiver/a;->b:Ljava/lang/String;

    invoke-static {p1, v2, v1}, Lcom/unknownphone/callblocker/custom/g;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 375
    iget-object v2, p0, Lcom/unknownphone/callblocker/receiver/a;->b:Ljava/lang/String;

    invoke-static {p1, v2, v0}, Lcom/unknownphone/callblocker/custom/g;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 377
    iget-object v2, p0, Lcom/unknownphone/callblocker/receiver/a;->c:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/unknownphone/callblocker/custom/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 378
    iget-object v2, p0, Lcom/unknownphone/callblocker/receiver/a;->c:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/unknownphone/callblocker/custom/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unknownphone/callblocker/receiver/a;->b:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/unknownphone/callblocker/custom/g;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 379
    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 380
    goto :goto_0
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 67
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 69
    const-string/jumbo v0, "PhoneStateListener"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "Hash code: %d"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-direct {p0, p1}, Lcom/unknownphone/callblocker/receiver/a;->a(I)V

    .line 72
    if-ne p1, v5, :cond_2

    sget v0, Lcom/unknownphone/callblocker/receiver/a;->a:I

    if-eq v0, v5, :cond_2

    .line 75
    iget-object v0, p0, Lcom/unknownphone/callblocker/receiver/a;->d:Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lcom/unknownphone/callblocker/receiver/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    :cond_0
    :goto_0
    sput p1, Lcom/unknownphone/callblocker/receiver/a;->a:I

    .line 91
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 92
    iget-object v0, p0, Lcom/unknownphone/callblocker/receiver/a;->d:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 93
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 94
    :cond_1
    return-void

    .line 77
    :cond_2
    if-eq p1, v5, :cond_0

    sget v0, Lcom/unknownphone/callblocker/receiver/a;->a:I

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/receiver/a;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 85
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method
