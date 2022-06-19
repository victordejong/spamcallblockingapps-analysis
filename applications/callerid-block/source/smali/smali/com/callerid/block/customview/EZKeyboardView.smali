.class public Lcom/callerid/block/customview/EZKeyboardView;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/customview/EZKeyboardView$c;
    }
.end annotation


# static fields
.field private static i:Z


# instance fields
.field private b:Landroid/content/Context;

.field public c:Landroid/widget/EditText;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/rey/material/widget/Button;

.field private f:Landroid/media/ToneGenerator;

.field private g:Ljava/lang/Object;

.field h:Lcom/callerid/block/customview/EZKeyboardView$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/callerid/block/customview/EZKeyboardView;->g:Ljava/lang/Object;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/callerid/block/customview/EZKeyboardView;->h:Lcom/callerid/block/customview/EZKeyboardView$c;

    iput-object p1, p0, Lcom/callerid/block/customview/EZKeyboardView;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c00dc

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/callerid/block/customview/EZKeyboardView;->c()V

    invoke-direct {p0}, Lcom/callerid/block/customview/EZKeyboardView;->i()V

    iget-object p1, p0, Lcom/callerid/block/customview/EZKeyboardView;->g:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/customview/EZKeyboardView;->f:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Landroid/media/ToneGenerator;

    const/16 v1, 0x50

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/callerid/block/customview/EZKeyboardView;->f:Landroid/media/ToneGenerator;

    iget-object v0, p0, Lcom/callerid/block/customview/EZKeyboardView;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setVolumeControlStream(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "EZlDial"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught while creating local tone generator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/callerid/block/customview/EZKeyboardView;->f:Landroid/media/ToneGenerator;

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method static synthetic a(Lcom/callerid/block/customview/EZKeyboardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/customview/EZKeyboardView;->l()V

    return-void
.end method

.method private b()Z
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/customview/EZKeyboardView;->b:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    const/4 v2, 0x1

    :catch_0
    :cond_1
    return v2
.end method

.method private d(I)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    iget-object v1, p0, Lcom/callerid/block/customview/EZKeyboardView;->c:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private g()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/customview/EZKeyboardView;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    iget-object v0, p0, Lcom/callerid/block/customview/EZKeyboardView;->h:Lcom/callerid/block/customview/EZKeyboardView$c;

    const-string v1, "del_all"

    iget-object v2, p0, Lcom/callerid/block/customview/EZKeyboardView;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/callerid/block/customview/EZKeyboardView$c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/customview/EZKeyboardView;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "dial_enable_dial_tone"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/callerid/block/customview/EZKeyboardView;->i:Z

    return-void
.end method

.method private l()V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/customview/EZKeyboardView;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/customview/EZKeyboardView;->e:Lcom/rey/material/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/callerid/block/customview/EZKeyboardView;->e:Lcom/rey/material/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method private setupButton(I)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rey/material/widget/Button;

    invoke-virtual {v0, p0}, Lcom/rey/material/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090295

    if-eq p1, v1, :cond_0

    const v1, 0x7f090296

    if-eq p1, v1, :cond_0

    const v1, 0x7f0900e0

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public c()V
    .locals 4

    const v0, 0x7f090193

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callerid/block/customview/EZKeyboardView;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->P(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/customview/EZKeyboardView;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080105

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const v0, 0x7f0900ef

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/callerid/block/customview/EZKeyboardView;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/callerid/block/customview/EZKeyboardView;->c:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callerid/block/bean/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/callerid/block/customview/EZKeyboardView;->c:Landroid/widget/EditText;

    new-instance v3, Lcom/callerid/block/customview/EZKeyboardView$a;

    invoke-direct {v3, p0, v0}, Lcom/callerid/block/customview/EZKeyboardView$a;-><init>(Lcom/callerid/block/customview/EZKeyboardView;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/callerid/block/customview/EZKeyboardView;->c:Landroid/widget/EditText;

    new-instance v2, Lcom/callerid/block/customview/EZKeyboardView$b;

    invoke-direct {v2, p0}, Lcom/callerid/block/customview/EZKeyboardView$b;-><init>(Lcom/callerid/block/customview/EZKeyboardView;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :goto_0
    iget-object v0, p0, Lcom/callerid/block/customview/EZKeyboardView;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    const v0, 0x7f0900e0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/rey/material/widget/Button;

    iput-object v1, p0, Lcom/callerid/block/customview/EZKeyboardView;->e:Lcom/rey/material/widget/Button;

    const v1, 0x7f090296

    invoke-direct {p0, v1}, Lcom/callerid/block/customview/EZKeyboardView;->setupButton(I)V

    const v1, 0x7f090297

    invoke-direct {p0, v1}, Lcom/callerid/block/customview/EZKeyboardView;->setupButton(I)V

    const v1, 0x7f090298

    invoke-direct {p0, v1}, Lcom/callerid/block/customview/EZKeyboardView;->setupButton(I)V

    const v1, 0x7f090299

    invoke-direct {p0, v1}, Lcom/callerid/block/customview/EZKeyboardView;->setupButton(I)V

    const v1, 0x7f09029a

    invoke-direct {p0, v1}, Lcom/callerid/block/customview/EZKeyboardView;->setupButton(I)V

    const v1, 0x7f09029b

    invoke-direct {p0, v1}, Lcom/callerid/block/customview/EZKeyboardView;->setupButton(I)V

    const v1, 0x7f09029c

    invoke-direct {p0, v1}, Lcom/callerid/block/customview/EZKeyboardView;->setupButton(I)V

    const v1, 0x7f09029d

    invoke-direct {p0, v1}, Lcom/callerid/block/customview/EZKeyboardView;->setupButton(I)V

    const v1, 0x7f09029e

    invoke-direct {p0, v1}, Lcom/callerid/block/customview/EZKeyboardView;->setupButton(I)V

    const v1, 0x7f0902a2

    invoke-direct {p0, v1}, Lcom/callerid/block/customview/EZKeyboardView;->setupButton(I)V

    const v1, 0x7f090295

    invoke-direct {p0, v1}, Lcom/callerid/block/customview/EZKeyboardView;->setupButton(I)V

    const v1, 0x7f0902a1

    invoke-direct {p0, v1}, Lcom/callerid/block/customview/EZKeyboardView;->setupButton(I)V

    invoke-direct {p0, v0}, Lcom/callerid/block/customview/EZKeyboardView;->setupButton(I)V

    return-void
.end method

.method f(I)V
    .locals 4

    sget-boolean v0, Lcom/callerid/block/customview/EZKeyboardView;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/customview/EZKeyboardView;->b:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    :cond_1
    if-eqz v1, :cond_4

    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/callerid/block/customview/EZKeyboardView;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/callerid/block/customview/EZKeyboardView;->f:Landroid/media/ToneGenerator;

    if-nez v1, :cond_3

    const-string v1, "EZlDial"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_3
    const/16 v2, 0x96

    invoke-virtual {v1, p1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900e0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/callerid/block/customview/EZKeyboardView;->f(I)V

    const/16 p1, 0x11

    invoke-direct {p0, p1}, Lcom/callerid/block/customview/EZKeyboardView;->d(I)V

    iget-object p1, p0, Lcom/callerid/block/customview/EZKeyboardView;->h:Lcom/callerid/block/customview/EZKeyboardView$c;

    iget-object v0, p0, Lcom/callerid/block/customview/EZKeyboardView;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "10"

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/callerid/block/customview/EZKeyboardView;->f(I)V

    const/16 p1, 0x12

    invoke-direct {p0, p1}, Lcom/callerid/block/customview/EZKeyboardView;->d(I)V

    iget-object p1, p0, Lcom/callerid/block/customview/EZKeyboardView;->h:Lcom/callerid/block/customview/EZKeyboardView$c;

    iget-object v0, p0, Lcom/callerid/block/customview/EZKeyboardView;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/callerid/block/customview/EZKeyboardView;->f(I)V

    const/16 p1, 0x10

    invoke-direct {p0, p1}, Lcom/callerid/block/customview/EZKeyboardView;->d(I)V

    iget-object p1, p0, Lcom/callerid/block/customview/EZKeyboardView;->h:Lcom/callerid/block/customview/EZKeyboardView$c;

    iget-object v0, p0, Lcom/callerid/block/customview/EZKeyboardView;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "9"

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/callerid/block/customview/EZKeyboardView;->f(I)V

    const/16 p1, 0xf

    invoke-direct {p0, p1}, Lcom/callerid/block/customview/EZKeyboardView;->d(I)V

    iget-object p1, p0, Lcom/callerid/block/customview/EZKeyboardView;->h:Lcom/callerid/block/customview/EZKeyboardView$c;

    iget-object v0, p0, Lcom/callerid/block/customview/EZKeyboardView;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "8"

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0, v0}, Lcom/callerid/block/customview/EZKeyboardView;->f(I)V

    const/16 p1, 0xe

    invoke-direct {p0, p1}, Lcom/callerid/block/customview/EZKeyboardView;->d(I)V

    iget-object p1, p0, Lcom/callerid/block/customview/EZKeyboardView;->h:Lcom/callerid/block/customview/EZKeyboardView$c;

    iget-object v0, p0, Lcom/callerid/block/customview/EZKeyboardView;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "7"

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0, v0}, Lcom/callerid/block/customview/EZKeyboardView;->f(I)V

    const/16 p1, 0xd

    invoke-direct {p0, p1}, Lcom/callerid/block/customview/EZKeyboardView;->d(I)V

    iget-object p1, p0, Lcom/callerid/block/customview/EZKeyboardView;->h:Lcom/callerid/block/customview/EZKeyboardView$c;

    iget-object v0, p0, Lcom/callerid/block/customview/EZKeyboardView;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "6"

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/callerid/block/customview/EZKeyboardView;->f(I)V

    const/16 p1, 0xc

    invoke-direct {p0, p1}, Lcom/callerid/block/customview/EZKeyboardView;->d(I)V

    iget-object p1, p0, Lcom/callerid/block/customview/EZKeyboardView;->h:Lcom/callerid/block/customview/EZKeyboardView$c;

    iget-object v0, p0, Lcom/callerid/block/customview/EZKeyboardView;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5"

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p0, v0}, Lcom/callerid/block/customview/EZKeyboardView;->f(I)V

    const/16 p1, 0xb

    invoke-direct {p0, p1}, Lcom/callerid/block/customview/EZKeyboardView;->d(I)V

    iget-object p1, p0, Lcom/callerid/block/customview/EZKeyboardView;->h:Lcom/callerid/block/customview/EZKeyboardView$c;

    iget-object v0, p0, Lcom/callerid/block/customview/EZKeyboardView;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0, v0}, Lcom/callerid/block/customview/EZKeyboardView;->f(I)V

    const/16 p1, 0xa

    invoke-direct {p0, p1}, Lcom/callerid/block/customview/EZKeyboardView;->d(I)V

    iget-object p1, p0, Lcom/callerid/block/customview/EZKeyboardView;->h:Lcom/callerid/block/customview/EZKeyboardView$c;

    iget-object v0, p0, Lcom/callerid/block/customview/EZKeyboardView;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0, v0}, Lcom/callerid/block/customview/EZKeyboardView;->f(I)V

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/callerid/block/customview/EZKeyboardView;->d(I)V

    iget-object p1, p0, Lcom/callerid/block/customview/EZKeyboardView;->h:Lcom/callerid/block/customview/EZKeyboardView$c;

    iget-object v0, p0, Lcom/callerid/block/customview/EZKeyboardView;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0, v0}, Lcom/callerid/block/customview/EZKeyboardView;->f(I)V

    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lcom/callerid/block/customview/EZKeyboardView;->d(I)V

    iget-object p1, p0, Lcom/callerid/block/customview/EZKeyboardView;->h:Lcom/callerid/block/customview/EZKeyboardView$c;

    iget-object v0, p0, Lcom/callerid/block/customview/EZKeyboardView;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0, v0}, Lcom/callerid/block/customview/EZKeyboardView;->f(I)V

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lcom/callerid/block/customview/EZKeyboardView;->d(I)V

    iget-object p1, p0, Lcom/callerid/block/customview/EZKeyboardView;->h:Lcom/callerid/block/customview/EZKeyboardView$c;

    iget-object v0, p0, Lcom/callerid/block/customview/EZKeyboardView;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    goto :goto_0

    :cond_0
    const/16 p1, 0x43

    invoke-direct {p0, p1}, Lcom/callerid/block/customview/EZKeyboardView;->d(I)V

    iget-object p1, p0, Lcom/callerid/block/customview/EZKeyboardView;->h:Lcom/callerid/block/customview/EZKeyboardView$c;

    iget-object v0, p0, Lcom/callerid/block/customview/EZKeyboardView;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "del"

    :goto_0
    invoke-interface {p1, v1, v0}, Lcom/callerid/block/customview/EZKeyboardView$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0}, Lcom/callerid/block/customview/EZKeyboardView;->l()V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f090295
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0902a1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object p1, p0, Lcom/callerid/block/customview/EZKeyboardView;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/callerid/block/customview/EZKeyboardView;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "voicemail:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/callerid/block/customview/EZKeyboardView;->b:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const p1, 0x7f090296

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/rey/material/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setPressed(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :sswitch_1
    const/16 p1, 0x51

    :try_start_2
    invoke-direct {p0, p1}, Lcom/callerid/block/customview/EZKeyboardView;->d(I)V

    goto :goto_1

    :sswitch_2
    invoke-direct {p0}, Lcom/callerid/block/customview/EZKeyboardView;->g()V

    iget-object p1, p0, Lcom/callerid/block/customview/EZKeyboardView;->e:Lcom/rey/material/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setPressed(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    :try_start_3
    invoke-direct {p0}, Lcom/callerid/block/customview/EZKeyboardView;->l()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return v0

    :sswitch_data_0
    .sparse-switch
        0x7f0900e0 -> :sswitch_2
        0x7f090295 -> :sswitch_1
        0x7f090296 -> :sswitch_0
    .end sparse-switch
.end method

.method public setNumberCallBack(Lcom/callerid/block/customview/EZKeyboardView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/customview/EZKeyboardView;->h:Lcom/callerid/block/customview/EZKeyboardView$c;

    return-void
.end method
