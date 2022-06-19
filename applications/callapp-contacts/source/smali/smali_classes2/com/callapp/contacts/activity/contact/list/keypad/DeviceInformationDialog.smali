.class public Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 0

    .line 37
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog;->b(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, ""

    const-string v1, "unable to parse hex"

    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 178
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x10

    const/4 v5, 0x1

    .line 183
    :try_start_0
    invoke-static {v4, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 189
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v8, v2

    const-string v6, "%010d"

    invoke-static {v4, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 193
    :try_start_1
    invoke-static {p0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 199
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "%08d"

    invoke-static {p0, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x5

    .line 202
    invoke-virtual {v0, v4, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    .line 203
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    .line 206
    invoke-virtual {v0, p0, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 195
    const-class v3, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p0, v4, v2

    invoke-static {v3, v1, v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :catch_1
    move-exception p0

    .line 185
    const-class v3, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p0, v4, v2

    invoke-static {v3, v1, v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 135
    invoke-static {p3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 139
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d025c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p1, 0x7f0a0306

    .line 142
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0xf

    const/16 v1, 0xe

    if-ne p1, p2, :cond_1

    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p3

    .line 147
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const v3, 0x7f0a0304

    if-ne p2, v1, :cond_2

    if-eqz p4, :cond_2

    .line 148
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a0302

    .line 149
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a0303

    .line 150
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const p2, 0x7f0a0305

    .line 152
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 p4, 0x8

    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    .line 153
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const p2, 0x7f0a0301

    .line 156
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 160
    invoke-virtual {p2}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p3

    new-instance p4, Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog$2;

    invoke-direct {p4, p0, p2, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog$2;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private static b(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 10

    .line 213
    new-instance v0, Lcom/google/zxing/d;

    invoke-direct {v0}, Lcom/google/zxing/d;-><init>()V

    .line 214
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 p0, 0x0

    .line 217
    :try_start_0
    sget-object v2, Lcom/google/zxing/a;->CODE_128:Lcom/google/zxing/a;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, p1

    .line 1049
    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/d;->a(Ljava/lang/String;Lcom/google/zxing/a;IILjava/util/Map;)Lcom/google/zxing/common/b;

    move-result-object p1

    .line 1399
    iget v0, p1, Lcom/google/zxing/common/b;->a:I

    .line 218
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 2399
    :goto_0
    iget v2, p1, Lcom/google/zxing/common/b;->a:I

    if-ge v1, v2, :cond_1

    .line 222
    new-array v3, p2, [I

    .line 223
    invoke-virtual {p1, v1, p0}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, -0x1000000

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    :goto_1
    invoke-static {v3, v2}, Ljava/util/Arrays;->fill([II)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, v0

    move v6, v1

    move v9, p2

    .line 224
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    .line 228
    const-class p2, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, p0

    const-string p0, "error generating barcode"

    invoke-static {p2, p0, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const p2, 0x7f0d00d2

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0a45

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v1, 0x7f120294

    .line 48
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0601ec

    .line 49
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    .line 50
    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const p2, 0x7f080113

    .line 53
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 55
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    const-string v2, "phone"

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/CallAppApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    const v2, 0x7f0a0307

    .line 56
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 57
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const v4, 0x7f12044e

    const/16 v5, 0x1a

    const v6, 0x7f1203a7

    const/16 v7, 0x17

    if-lt v3, v7, :cond_3

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-le v3, v1, :cond_3

    const/4 v3, 0x0

    .line 58
    :goto_0
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    if-ge v3, v7, :cond_6

    .line 59
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v5, :cond_1

    .line 61
    :try_start_0
    invoke-virtual {p2, v3}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v7

    .line 62
    invoke-static {v7}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 63
    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v2, v8, v7, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog;->a(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :catch_0
    :cond_0
    :try_start_1
    invoke-virtual {p2, v3}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v7

    .line 70
    invoke-static {v7}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 71
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v2, v8, v7, v1}, Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog;->a(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 77
    :cond_1
    invoke-virtual {p2, v3}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v7

    .line 78
    invoke-static {v7}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 79
    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v2, v8, v7, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog;->a(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86
    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v5, :cond_5

    .line 88
    :try_start_2
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 90
    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v5, v3, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog;->a(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 96
    :catch_2
    :cond_4
    :try_start_3
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getMeid()Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 98
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4, v3, v1}, Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog;->a(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 104
    :cond_5
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 106
    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog;->a(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 114
    :catch_3
    :cond_6
    :goto_2
    :try_start_4
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const v1, 0x7f12060e

    .line 116
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v2, v1, p2, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog;->a(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_7
    const p2, 0x7f0a0318

    .line 121
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f1204ea

    .line 122
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f060088

    .line 123
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog$1;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method
