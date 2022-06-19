.class public Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LastPhoneCallSpamActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity$ScreenReceiver;
    }
.end annotation


# static fields
.field private static final EXTRA_KEY_PHONE_DIRECTION_FROM_CALL:Ljava/lang/String; = "EXTRA_KEY_PHONE_DIRECTION_FROM_CALL"

.field private static final EXTRA_KEY_PHONE_NUMBER_LOG_ENTRY:Ljava/lang/String; = "EXTRA_KEY_PHONE_NUMBER_LOG_ENTRY"

.field static active:Z = false

.field private static mInstance:Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;


# instance fields
.field private mCallType:I

.field private mHeaderLayout:Landroid/widget/LinearLayout;

.field private mLastLogEntry:Lcom/telguarder/features/numberLookup/PhoneEvent;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mSpamCommentsViewAdapter:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

.field private stoppedByUser:Z

.field private userInteractionTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->stoppedByUser:Z

    const-wide/16 v0, 0x0

    .line 51
    iput-wide v0, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->userInteractionTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->mHeaderLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->stoppedByUser:Z

    return p0
.end method

.method static synthetic access$200(Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->mCallType:I

    return p0
.end method

.method static synthetic access$300(Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;)Z
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->isPassOrPinSet()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->stop()V

    return-void
.end method

.method static synthetic access$500(Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;)Lcom/telguarder/features/numberLookup/PhoneEvent;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->mLastLogEntry:Lcom/telguarder/features/numberLookup/PhoneEvent;

    return-object p0
.end method

.method public static getInstance()Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;
    .locals 1

    .line 66
    sget-object v0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->mInstance:Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;

    return-object v0
.end method

.method private initSpamCommentListSections()V
    .locals 4

    const v0, 0x7f080209

    .line 306
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 307
    new-instance v1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    iget-object v2, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->mLastLogEntry:Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-direct {v1, p0, v2}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/telguarder/features/numberLookup/PhoneEvent;)V

    iput-object v1, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->mSpamCommentsViewAdapter:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    .line 308
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 309
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 310
    new-instance v1, Lcom/telguarder/helpers/ui/LinearLayoutManagerWithSmoothScroller;

    invoke-direct {v1, p0}, Lcom/telguarder/helpers/ui/LinearLayoutManagerWithSmoothScroller;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public static isInstantiated()Z
    .locals 1

    .line 61
    sget-object v0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->mInstance:Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPassOrPinSet()Z
    .locals 2

    .line 248
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const-string v0, "keyguard"

    .line 249
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static openLastPhoneCallSpam(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneEvent;I)V
    .locals 2

    .line 71
    sget-object v0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->mInstance:Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;

    if-eqz v0, :cond_0

    .line 72
    :try_start_0
    invoke-direct {v0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Error during open last call spam page"

    invoke-static {v0}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 73
    sput-object v0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->mInstance:Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;

    :cond_0
    if-eqz p1, :cond_4

    .line 75
    iget-object v0, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 78
    :cond_1
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    move-result-object v0

    iget-object v1, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getPhoneStateCallData(Ljava/lang/String;)Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, v0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallState:Ljava/lang/String;

    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 82
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    instance-of v1, p0, Landroidx/appcompat/app/AppCompatActivity;

    if-nez v1, :cond_3

    const v1, 0x14808000

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    const/high16 v1, 0x14800000

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_1
    const-string v1, "EXTRA_KEY_PHONE_NUMBER_LOG_ENTRY"

    .line 93
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "EXTRA_KEY_PHONE_DIRECTION_FROM_CALL"

    .line 94
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private registerScreenStateReceiver()V
    .locals 2

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    new-instance v1, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity$ScreenReceiver;

    invoke-direct {v1, p0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity$ScreenReceiver;-><init>(Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;)V

    iput-object v1, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 128
    :try_start_0
    invoke-virtual {p0, v1, v0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Spam call activity screen_off receiver register error"

    invoke-static {v0}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setupSpamNumberAndName()V
    .locals 5

    .line 276
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->mLastLogEntry:Lcom/telguarder/features/numberLookup/PhoneEvent;

    if-eqz v0, :cond_5

    const v0, 0x7f080263

    .line 277
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 278
    iget-object v1, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->mLastLogEntry:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object v1, v1, Lcom/telguarder/features/numberLookup/PhoneEvent;->phoneNumberForDisplaying:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->mLastLogEntry:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object v1, v1, Lcom/telguarder/features/numberLookup/PhoneEvent;->phoneNumberForDisplaying:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->mLastLogEntry:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object v1, v1, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->mLastLogEntry:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object v1, v1, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    const v0, 0x7f080261

    .line 284
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 285
    iget-object v1, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->mLastLogEntry:Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpamCommunityOrange()Z

    move-result v1

    const v2, 0x7f050119

    const v3, 0x7f050118

    if-eqz v1, :cond_2

    const v1, 0x7f050119

    goto :goto_1

    :cond_2
    const v1, 0x7f050118

    :goto_1
    invoke-static {p0, v1}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const v0, 0x7f080168

    .line 286
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->mLastLogEntry:Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpamCommunityOrange()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const v2, 0x7f050118

    :goto_2
    invoke-static {p0, v2}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const v0, 0x7f080262

    .line 287
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 288
    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->mLastLogEntry:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object v2, v2, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->mLastLogEntry:Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-virtual {v2, p0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getSpamTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->mLastLogEntry:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object v2, v2, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    :goto_3
    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 289
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 290
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f05001e

    .line 291
    invoke-static {p0, v1}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result v1

    const v2, 0x7f0500a2

    invoke-static {p0, v2}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result v2

    new-instance v3, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity$2;

    invoke-direct {v3, p0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity$2;-><init>(Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;)V

    invoke-static {v0, v1, v2, v3}, Lcom/telguarder/helpers/ui/UiHelper;->simulateLinkEffect(Landroid/view/View;IILcom/telguarder/helpers/ui/UiHelper$LinkEffectCompletionHandler;)V

    :cond_5
    return-void
.end method

.method private stop()V
    .locals 1

    .line 208
    invoke-direct {p0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->unregisterScreenStateReceiver()V

    .line 209
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->mSpamCommentsViewAdapter:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->onStop()V

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->onStop()V

    .line 216
    :cond_1
    invoke-virtual {p0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->finish()V

    :cond_2
    return-void
.end method

.method private unregisterScreenStateReceiver()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 134
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Spam call activity screen_off receiver unregister error"

    invoke-static {v0}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 144
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->setTurnScreenOn(Z)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x200000

    .line 147
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 149
    :goto_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onAttachedToWindow()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->stoppedByUser:Z

    .line 223
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->onStop()V

    .line 226
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 101
    :try_start_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    .line 102
    iput-boolean p1, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->stoppedByUser:Z

    .line 103
    invoke-virtual {p0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const v0, 0x7f0b0026

    .line 104
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->setContentView(I)V

    const/4 v0, 0x0

    const v1, 0x7f080089

    .line 105
    invoke-virtual {p0, v1}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Lcom/telguarder/helpers/ui/UiHelper;->setupBarScreenWithBottomNavbarPadding(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Landroid/view/View;Z)V

    const v0, 0x7f080261

    .line 106
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->mHeaderLayout:Landroid/widget/LinearLayout;

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const v0, 0x7f080209

    .line 108
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity$1;

    invoke-direct {v1, p0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity$1;-><init>(Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_KEY_PHONE_NUMBER_LOG_ENTRY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/telguarder/features/numberLookup/PhoneEvent;

    iput-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->mLastLogEntry:Lcom/telguarder/features/numberLookup/PhoneEvent;

    .line 116
    invoke-virtual {p0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_KEY_PHONE_DIRECTION_FROM_CALL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->mCallType:I

    .line 117
    invoke-direct {p0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->setupSpamNumberAndName()V

    .line 118
    invoke-direct {p0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->initSpamCommentListSections()V

    .line 119
    invoke-direct {p0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->registerScreenStateReceiver()V

    .line 120
    sput-object p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->mInstance:Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;

    return-void

    .line 101
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 196
    invoke-direct {p0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->unregisterScreenStateReceiver()V

    .line 197
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->mSpamCommentsViewAdapter:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->onDestroy()V

    .line 200
    :cond_0
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->onDestroy()V

    .line 203
    :cond_1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 155
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 156
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->mSpamCommentsViewAdapter:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->onPause()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 164
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 165
    invoke-static {p0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->hide(Landroid/content/Context;)V

    .line 166
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->mSpamCommentsViewAdapter:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->onResume()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 174
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    const/4 v0, 0x1

    .line 175
    sput-boolean v0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->active:Z

    .line 176
    iget-boolean v0, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->stoppedByUser:Z

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/telguarder/features/main/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->startActivity(Landroid/content/Intent;)V

    .line 179
    invoke-direct {p0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->stop()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 186
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    const/4 v0, 0x0

    .line 187
    sput-boolean v0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->active:Z

    .line 188
    iget-boolean v0, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->stoppedByUser:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->isPassOrPinSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->stop()V

    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->userInteractionTime:J

    .line 233
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onUserInteraction()V

    return-void
.end method

.method public onUserLeaveHint()V
    .locals 5

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->userInteractionTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    .line 241
    iput-boolean v0, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->stoppedByUser:Z

    .line 243
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onUserLeaveHint()V

    return-void
.end method
