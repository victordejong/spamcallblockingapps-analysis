.class final Lcom/amazon/device/ads/DtbDeviceData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "DtbDeviceData"

.field private static d:Lcom/amazon/device/ads/DtbDeviceData;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "Unable to get WIFI Manager: "

    .line 128
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, v1, Lcom/amazon/device/ads/DtbDeviceData;->e:Z

    .line 46
    iput-boolean v0, v1, Lcom/amazon/device/ads/DtbDeviceData;->f:Z

    .line 47
    iput-boolean v0, v1, Lcom/amazon/device/ads/DtbDeviceData;->g:Z

    const/4 v3, 0x0

    .line 49
    iput-object v3, v1, Lcom/amazon/device/ads/DtbDeviceData;->h:Ljava/lang/String;

    .line 50
    iput-object v3, v1, Lcom/amazon/device/ads/DtbDeviceData;->i:Ljava/lang/String;

    .line 51
    iput-object v3, v1, Lcom/amazon/device/ads/DtbDeviceData;->j:Ljava/lang/String;

    .line 52
    iput-object v3, v1, Lcom/amazon/device/ads/DtbDeviceData;->a:Ljava/lang/String;

    .line 53
    iput-object v3, v1, Lcom/amazon/device/ads/DtbDeviceData;->k:Ljava/lang/String;

    .line 54
    iput-object v3, v1, Lcom/amazon/device/ads/DtbDeviceData;->l:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/amazon/device/ads/DtbDeviceData;->m:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/amazon/device/ads/DtbDeviceData;->b:Ljava/util/HashMap;

    .line 58
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, v1, Lcom/amazon/device/ads/DtbDeviceData;->n:Lorg/json/JSONObject;

    const/4 v4, 0x1

    .line 1256
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "wifi"

    .line 1257
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 1260
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-nez v0, :cond_1

    move-object v0, v3

    goto :goto_1

    .line 1263
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    .line 1265
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    const-string v5, "((([0-9a-fA-F]){1,2}[-:]){5}([0-9a-fA-F]){1,2})"

    .line 1270
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 1271
    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 1272
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1274
    iput-object v3, v1, Lcom/amazon/device/ads/DtbDeviceData;->h:Ljava/lang/String;

    .line 1275
    iput-boolean v4, v1, Lcom/amazon/device/ads/DtbDeviceData;->g:Z

    goto :goto_3

    .line 1278
    :cond_3
    invoke-static {v0}, Lcom/amazon/device/ads/DtbDeviceData;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/DtbCommonUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amazon/device/ads/DtbDeviceData;->h:Ljava/lang/String;

    goto :goto_3

    .line 1266
    :cond_4
    :goto_2
    iput-object v3, v1, Lcom/amazon/device/ads/DtbDeviceData;->h:Ljava/lang/String;

    .line 1267
    iput-boolean v4, v1, Lcom/amazon/device/ads/DtbDeviceData;->g:Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 1289
    sget-object v5, Lcom/amazon/device/ads/DtbDeviceData;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/amazon/device/ads/DtbLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    iput-object v3, v1, Lcom/amazon/device/ads/DtbDeviceData;->h:Ljava/lang/String;

    goto :goto_3

    :catch_1
    move-exception v0

    .line 1285
    sget-object v5, Lcom/amazon/device/ads/DtbDeviceData;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/amazon/device/ads/DtbLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    iput-object v3, v1, Lcom/amazon/device/ads/DtbDeviceData;->h:Ljava/lang/String;

    goto :goto_3

    .line 1283
    :catch_2
    iput-boolean v4, v1, Lcom/amazon/device/ads/DtbDeviceData;->g:Z

    .line 2240
    :goto_3
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2242
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "9774d56d682e549c"

    .line 2243
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_4

    .line 2247
    :cond_5
    invoke-static {v0}, Lcom/amazon/device/ads/DtbDeviceData;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/DtbCommonUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amazon/device/ads/DtbDeviceData;->i:Ljava/lang/String;

    goto :goto_5

    .line 2244
    :cond_6
    :goto_4
    iput-object v3, v1, Lcom/amazon/device/ads/DtbDeviceData;->i:Ljava/lang/String;

    .line 2245
    iput-boolean v4, v1, Lcom/amazon/device/ads/DtbDeviceData;->f:Z
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_5

    .line 2250
    :catch_3
    iput-boolean v4, v1, Lcom/amazon/device/ads/DtbDeviceData;->f:Z

    .line 2297
    :goto_5
    :try_start_2
    const-class v0, Landroid/os/Build;

    const-string v2, "SERIAL"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2298
    const-class v2, Landroid/os/Build;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 2303
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "unknown"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_6

    .line 2307
    :cond_7
    invoke-static {v0}, Lcom/amazon/device/ads/DtbDeviceData;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/DtbCommonUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amazon/device/ads/DtbDeviceData;->j:Ljava/lang/String;

    goto :goto_7

    .line 2304
    :cond_8
    :goto_6
    iput-boolean v4, v1, Lcom/amazon/device/ads/DtbDeviceData;->e:Z
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_7

    :catch_4
    nop

    goto :goto_7

    .line 2309
    :catch_5
    iput-boolean v4, v1, Lcom/amazon/device/ads/DtbDeviceData;->e:Z

    .line 132
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/amazon/device/ads/DtbDeviceData;->i()V

    .line 134
    invoke-direct/range {p0 .. p0}, Lcom/amazon/device/ads/DtbDeviceData;->h()V

    const-string v0, "Android"

    .line 3182
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 3183
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 3184
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 3185
    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 3186
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    .line 3187
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    .line 3188
    invoke-static {}, Lcom/amazon/device/ads/DtbDeviceData;->e()Ljava/lang/String;

    move-result-object v9

    .line 3372
    invoke-static {}, Lcom/amazon/device/ads/DtbDeviceData;->j()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 3374
    iget v11, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v11, v11

    iget v12, v10, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v11, v12

    float-to-double v11, v11

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    .line 3375
    iget v15, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v15, v15

    iget v3, v10, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v15, v3

    move-object/from16 p1, v8

    move-object v3, v9

    float-to-double v8, v15

    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v11, v8

    .line 3376
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 3378
    iget v11, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v11, v11

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object v15, v5

    move-object/from16 v16, v6

    int-to-double v5, v10

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v11, v5

    .line 3379
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    div-double/2addr v5, v8

    double-to-int v5, v5

    .line 3191
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->d()Landroid/content/Context;

    move-result-object v6

    const-string v8, "phone"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_9

    .line 3192
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_9
    const/4 v6, 0x0

    :goto_8
    const-string v8, "motorola"

    .line 3195
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v8, "MB502"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_9

    .line 3198
    :cond_a
    invoke-static {}, Lcom/amazon/device/ads/DtbDeviceData;->j()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 3199
    iget v8, v8, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 3202
    :goto_9
    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v8

    :try_start_3
    const-string v9, "os"

    .line 3205
    invoke-direct {v1, v0, v9}, Lcom/amazon/device/ads/DtbDeviceData;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "model"

    .line 3206
    invoke-direct {v1, v2, v0}, Lcom/amazon/device/ads/DtbDeviceData;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "make"

    .line 3207
    invoke-direct {v1, v4, v0}, Lcom/amazon/device/ads/DtbDeviceData;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hwv"

    move-object/from16 v2, v16

    .line 3208
    invoke-direct {v1, v2, v0}, Lcom/amazon/device/ads/DtbDeviceData;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "osVersion"

    move-object v2, v15

    .line 3209
    invoke-direct {v1, v2, v0}, Lcom/amazon/device/ads/DtbDeviceData;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "country"

    .line 3212
    invoke-direct {v1, v7, v0}, Lcom/amazon/device/ads/DtbDeviceData;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "carrier"

    .line 3213
    invoke-direct {v1, v6, v0}, Lcom/amazon/device/ads/DtbDeviceData;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "language"

    move-object/from16 v2, p1

    .line 3214
    invoke-direct {v1, v2, v0}, Lcom/amazon/device/ads/DtbDeviceData;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3216
    iget-object v0, v1, Lcom/amazon/device/ads/DtbDeviceData;->k:Ljava/lang/String;

    const-string v2, "screenSize"

    invoke-direct {v1, v0, v2}, Lcom/amazon/device/ads/DtbDeviceData;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "scalingFactor"

    .line 3217
    invoke-direct {v1, v8, v0}, Lcom/amazon/device/ads/DtbDeviceData;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3218
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ppi"

    invoke-direct {v1, v0, v2}, Lcom/amazon/device/ads/DtbDeviceData;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3219
    iget-object v0, v1, Lcom/amazon/device/ads/DtbDeviceData;->l:Ljava/lang/String;

    const-string v2, "orientation"

    invoke-direct {v1, v0, v2}, Lcom/amazon/device/ads/DtbDeviceData;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "connectionType"

    .line 3221
    invoke-direct {v1, v3, v0}, Lcom/amazon/device/ads/DtbDeviceData;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_a

    .line 3227
    :catch_6
    sget-object v0, Lcom/amazon/device/ads/DtbDeviceData;->c:Ljava/lang/String;

    const-string v2, "Unsupported encoding"

    invoke-static {v0, v2}, Lcom/amazon/device/ads/DtbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 3224
    :catch_7
    sget-object v0, Lcom/amazon/device/ads/DtbDeviceData;->c:Ljava/lang/String;

    const-string v2, "JSONException while producing deviceInfoJson"

    invoke-static {v0, v2}, Lcom/amazon/device/ads/DtbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/amazon/device/ads/DtbDeviceData;->g()V

    .line 139
    invoke-direct/range {p0 .. p0}, Lcom/amazon/device/ads/DtbDeviceData;->f()V

    .line 4159
    iget-object v0, v1, Lcom/amazon/device/ads/DtbDeviceData;->h:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 4160
    iget-object v2, v1, Lcom/amazon/device/ads/DtbDeviceData;->b:Ljava/util/HashMap;

    const-string v3, "sha1_mac"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4162
    :cond_b
    iget-object v0, v1, Lcom/amazon/device/ads/DtbDeviceData;->i:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 4163
    iget-object v2, v1, Lcom/amazon/device/ads/DtbDeviceData;->b:Ljava/util/HashMap;

    const-string v3, "sha1_udid"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4165
    :cond_c
    iget-object v0, v1, Lcom/amazon/device/ads/DtbDeviceData;->j:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 4166
    iget-object v2, v1, Lcom/amazon/device/ads/DtbDeviceData;->b:Ljava/util/HashMap;

    const-string v3, "sha1_serial"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4169
    :cond_d
    iget-boolean v0, v1, Lcom/amazon/device/ads/DtbDeviceData;->g:Z

    const-string v2, "true"

    if-eqz v0, :cond_e

    .line 4170
    iget-object v0, v1, Lcom/amazon/device/ads/DtbDeviceData;->b:Ljava/util/HashMap;

    const-string v3, "badMac"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4172
    :cond_e
    iget-boolean v0, v1, Lcom/amazon/device/ads/DtbDeviceData;->e:Z

    if-eqz v0, :cond_f

    .line 4173
    iget-object v0, v1, Lcom/amazon/device/ads/DtbDeviceData;->b:Ljava/util/HashMap;

    const-string v3, "badSerial"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4175
    :cond_f
    iget-boolean v0, v1, Lcom/amazon/device/ads/DtbDeviceData;->f:Z

    if-eqz v0, :cond_10

    .line 4176
    iget-object v0, v1, Lcom/amazon/device/ads/DtbDeviceData;->b:Ljava/util/HashMap;

    const-string v3, "badUdid"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-void
.end method

.method public static a()Lcom/amazon/device/ads/DtbDeviceData;
    .locals 2

    .line 62
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 67
    sget-object v0, Lcom/amazon/device/ads/DtbDeviceData;->d:Lcom/amazon/device/ads/DtbDeviceData;

    if-nez v0, :cond_1

    .line 68
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Lcom/amazon/device/ads/DtbDeviceData;

    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->d()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/DtbDeviceData;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amazon/device/ads/DtbDeviceData;->d:Lcom/amazon/device/ads/DtbDeviceData;

    goto :goto_0

    :cond_0
    const-string v0, "Invalid intialization of Device Data. Context is null"

    .line 69
    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->b(Ljava/lang/String;)V

    .line 70
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_1
    :goto_0
    sget-object v0, Lcom/amazon/device/ads/DtbDeviceData;->d:Lcom/amazon/device/ads/DtbDeviceData;

    return-object v0

    :cond_2
    const-string v0, "unable to initialize advertising info without setting app context"

    .line 63
    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->b(Ljava/lang/String;)V

    .line 64
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "SHA-1"

    .line 317
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 318
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 319
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    or-int/lit16 v3, v3, 0x100

    .line 323
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 324
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 323
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 233
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->n:Lorg/json/JSONObject;

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method static e()Ljava/lang/String;
    .locals 3

    .line 344
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 345
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const-string v1, "0"

    if-eqz v0, :cond_4

    .line 347
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    if-eq v2, v0, :cond_2

    const/4 v0, 0x6

    if-eq v2, v0, :cond_1

    return-object v1

    :cond_1
    const-string v0, "13"

    return-object v0

    :cond_2
    const-string v0, "Wifi"

    return-object v0

    .line 356
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_0
    return-object v1
.end method

.method private f()V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->m:Ljava/util/HashMap;

    const-string v1, "dt"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->m:Ljava/util/HashMap;

    const-string v1, "app"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->m:Ljava/util/HashMap;

    const-string v1, "aud"

    const-string v2, "3p"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Lcom/amazon/device/ads/DtbDeviceData;->m:Ljava/util/HashMap;

    const-string v2, "ua"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->m:Ljava/util/HashMap;

    invoke-static {}, Lcom/amazon/device/ads/DtbCommonUtils;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdkVer"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->n:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 153
    iget-object v1, p0, Lcom/amazon/device/ads/DtbDeviceData;->m:Ljava/util/HashMap;

    const-string v2, "dinfo"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private g()V
    .locals 1

    .line 331
    :try_start_0
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 333
    :catch_0
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->a()V

    const-string v0, "Android"

    .line 334
    iput-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->a:Ljava/lang/String;

    return-void
.end method

.method private h()V
    .locals 2

    .line 363
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 364
    iget-object v1, p0, Lcom/amazon/device/ads/DtbDeviceData;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DtbDeviceDataRetriever;->a(Landroid/util/DisplayMetrics;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->k:Ljava/lang/String;

    return-void
.end method

.method private i()V
    .locals 1

    .line 368
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/DtbDeviceDataRetriever;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->l:Ljava/lang/String;

    return-void
.end method

.method private static j()Landroid/util/DisplayMetrics;
    .locals 1

    .line 386
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b()Lorg/json/JSONObject;
    .locals 2

    .line 81
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/device/ads/DtbDeviceData;->i()V

    .line 82
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->l:Ljava/lang/String;

    const-string v1, "orientation"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/DtbDeviceData;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0}, Lcom/amazon/device/ads/DtbDeviceData;->h()V

    .line 85
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->k:Ljava/lang/String;

    const-string v1, "screenSize"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/DtbDeviceData;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 88
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;)V

    .line 90
    :goto_0
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->n:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final c()Lorg/json/JSONObject;
    .locals 5

    .line 95
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 96
    iget-object v1, p0, Lcom/amazon/device/ads/DtbDeviceData;->n:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 98
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 101
    iget-object v3, p0, Lcom/amazon/device/ads/DtbDeviceData;->n:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 102
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 103
    check-cast v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Error converting to JsonGetSafe"

    .line 107
    invoke-static {v1}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public final d()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->m:Ljava/util/HashMap;

    const-string v1, "ua"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->m:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->m:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/amazon/device/ads/DtbDeviceData;->g()V

    .line 118
    invoke-direct {p0}, Lcom/amazon/device/ads/DtbDeviceData;->f()V

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceData;->m:Ljava/util/HashMap;

    return-object v0
.end method
