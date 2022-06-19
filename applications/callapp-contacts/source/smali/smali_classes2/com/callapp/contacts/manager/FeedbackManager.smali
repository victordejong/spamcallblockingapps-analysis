.class public Lcom/callapp/contacts/manager/FeedbackManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/manager/FeedbackManager$ShowToast;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Handler;

.field private c:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/manager/FeedbackManager;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/callapp/contacts/manager/FeedbackManager;->b:Landroid/os/Handler;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 16

    .line 1220
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->isDataEnabled()Z

    move-result v0

    const v1, 0x7f1203d8

    if-eqz v0, :cond_0

    .line 1222
    new-instance v0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f1203d7

    .line 1223
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f1204ea

    .line 1224
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lcom/callapp/contacts/manager/FeedbackManager$5;

    invoke-direct {v7}, Lcom/callapp/contacts/manager/FeedbackManager$5;-><init>()V

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    goto :goto_0

    .line 1231
    :cond_0
    new-instance v0, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v1, 0x7f1203d6

    .line 1232
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v11

    const v1, 0x7f1202dc

    .line 1233
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v1, 0x7f120400

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/callapp/contacts/manager/FeedbackManager$6;

    invoke-direct {v14}, Lcom/callapp/contacts/manager/FeedbackManager$6;-><init>()V

    new-instance v15, Lcom/callapp/contacts/manager/FeedbackManager$7;

    invoke-direct {v15}, Lcom/callapp/contacts/manager/FeedbackManager$7;-><init>()V

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 1246
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    move-object/from16 v2, p0

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method static synthetic a(Landroid/widget/Toast;I)V
    .locals 4

    if-lez p1, :cond_1

    .line 1294
    invoke-virtual {p0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_1

    .line 1296
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1298
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1299
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 1300
    check-cast v2, Landroid/widget/TextView;

    int-to-float v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/Integer;Landroid/view/View;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/callapp/contacts/manager/FeedbackManager;->b:Landroid/os/Handler;

    new-instance v1, Lcom/callapp/contacts/manager/FeedbackManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/callapp/contacts/manager/FeedbackManager$2;-><init>(Lcom/callapp/contacts/manager/FeedbackManager;Ljava/lang/Integer;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 8

    .line 87
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xbb8

    const/16 v6, 0xbb8

    goto :goto_0

    :cond_0
    const/16 v0, 0x1388

    const/16 v6, 0x1388

    .line 88
    :goto_0
    invoke-direct {p0, p1, v6}, Lcom/callapp/contacts/manager/FeedbackManager;->b(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/callapp/contacts/manager/FeedbackManager;->b:Landroid/os/Handler;

    new-instance v7, Lcom/callapp/contacts/manager/FeedbackManager$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/manager/FeedbackManager$1;-><init>(Lcom/callapp/contacts/manager/FeedbackManager;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private b(Ljava/lang/String;I)Z
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/callapp/contacts/manager/FeedbackManager;->a:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 69
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    int-to-long v3, p2

    cmp-long p2, v1, v3

    if-gez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 74
    :cond_0
    iget-object p2, p0, Lcom/callapp/contacts/manager/FeedbackManager;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_1
    iget-object p2, p0, Lcom/callapp/contacts/manager/FeedbackManager;->a:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public static get()Lcom/callapp/contacts/manager/FeedbackManager;
    .locals 1

    .line 250
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getFeedbackManager()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 19

    move-object/from16 v0, p0

    .line 308
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->eD:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 310
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    .line 312
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v1, v6, v8

    if-eqz v1, :cond_1

    const-wide/16 v6, 0x6

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    const/4 v1, 0x3

    new-array v4, v1, [I

    .line 315
    fill-array-data v4, :array_0

    new-array v5, v1, [I

    .line 316
    fill-array-data v5, :array_1

    new-array v6, v1, [I

    .line 317
    fill-array-data v6, :array_2

    new-array v7, v1, [I

    .line 318
    fill-array-data v7, :array_3

    .line 321
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    .line 323
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v9

    invoke-virtual {v8, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    aget v4, v4, v10

    invoke-virtual {v9, v4}, Lcom/callapp/contacts/CallAppApplication;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 324
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    invoke-virtual {v8, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    aget v5, v5, v9

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/CallAppApplication;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 325
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    invoke-virtual {v8, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget v5, v6, v5

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/CallAppApplication;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 326
    invoke-virtual {v8, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget v11, v7, v1

    .line 328
    new-instance v1, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;

    new-instance v15, Lcom/callapp/contacts/manager/FeedbackManager$8;

    invoke-direct {v15, v0}, Lcom/callapp/contacts/manager/FeedbackManager$8;-><init>(Lcom/callapp/contacts/manager/FeedbackManager;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v18}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 333
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v4

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 335
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    new-instance v5, Lcom/callapp/contacts/manager/FeedbackManager$9;

    invoke-direct {v5, v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager$9;-><init>(Lcom/callapp/contacts/manager/FeedbackManager;Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x8

    .line 345
    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    long-to-int v1, v6

    int-to-long v6, v1

    .line 335
    invoke-virtual {v4, v5, v6, v7}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    .line 347
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->eD:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->set(Ljava/lang/Object;)V

    return-void

    :cond_2
    const v1, 0x7f120804

    .line 349
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f12071a
        0x7f120712
        0x7f120715
    .end array-data

    :array_1
    .array-data 4
        0x7f120717
        0x7f120718
        0x7f120716
    .end array-data

    :array_2
    .array-data 4
        0x7f120719
        0x7f120713
        0x7f120714
    .end array-data

    :array_3
    .array-data 4
        0x7f08007f
        0x7f080080
        0x7f080081
    .end array-data
.end method

.method public final a(ILandroid/content/Context;)V
    .locals 4

    .line 103
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00b4

    const/4 v1, 0x0

    .line 104
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a04ec

    .line 105
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 106
    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const v3, 0x7f060244

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    const/16 p1, 0x11

    .line 107
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/Integer;Landroid/view/View;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 179
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->b(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1

    .line 202
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->b(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 2

    mul-int/lit16 v0, p3, 0x1388

    .line 148
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->b(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/manager/FeedbackManager$3;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/callapp/contacts/manager/FeedbackManager$3;-><init>(Lcom/callapp/contacts/manager/FeedbackManager;ILjava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    .line 187
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->n:Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/callapp/contacts/manager/FeedbackManager;->b:Landroid/os/Handler;

    new-instance v1, Lcom/callapp/contacts/manager/FeedbackManager$4;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/callapp/contacts/manager/FeedbackManager$4;-><init>(Lcom/callapp/contacts/manager/FeedbackManager;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 183
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->b(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x1

    .line 136
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->b(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/callapp/contacts/manager/FeedbackManager;->a:Ljava/util/Map;

    .line 57
    iget-object v1, p0, Lcom/callapp/contacts/manager/FeedbackManager;->b:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/FeedbackManager;->c:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_1
    return-void
.end method

.method public init()V
    .locals 2

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/FeedbackManager;->a:Ljava/util/Map;

    .line 48
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/callapp/contacts/manager/FeedbackManager;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/manager/FeedbackManager;->c:Landroid/os/HandlerThread;

    .line 49
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 50
    iget-object v0, p0, Lcom/callapp/contacts/manager/FeedbackManager;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/os/Looper;)V

    .line 51
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/callapp/contacts/manager/FeedbackManager;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/callapp/contacts/manager/FeedbackManager;->b:Landroid/os/Handler;

    return-void
.end method
