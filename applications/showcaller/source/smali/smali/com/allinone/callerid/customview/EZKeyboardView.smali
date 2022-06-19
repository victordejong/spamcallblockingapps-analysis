.class public Lcom/allinone/callerid/customview/EZKeyboardView;
.super Landroid/widget/RelativeLayout;
.source "EZKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/customview/EZKeyboardView$b;
    }
.end annotation


# static fields
.field private static d:Z


# instance fields
.field private e:Landroid/content/Context;

.field public f:Lcom/allinone/callerid/customview/BaseEditText;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/media/ToneGenerator;

.field private i:Ljava/lang/Object;

.field private j:Landroid/widget/ImageView;

.field private k:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private l:Landroid/graphics/Typeface;

.field m:Lcom/allinone/callerid/customview/EZKeyboardView$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->i:Ljava/lang/Object;

    const/4 p2, 0x0

    .line 3
    iput-object p2, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->m:Lcom/allinone/callerid/customview/EZKeyboardView$b;

    .line 4
    iput-object p1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->e:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0168

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    invoke-virtual {p0}, Lcom/allinone/callerid/customview/EZKeyboardView;->d()V

    .line 7
    invoke-direct {p0}, Lcom/allinone/callerid/customview/EZKeyboardView;->b()V

    .line 8
    invoke-direct {p0}, Lcom/allinone/callerid/customview/EZKeyboardView;->q()V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->i:Ljava/lang/Object;

    monitor-enter p1

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->h:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 11
    :try_start_1
    new-instance v0, Landroid/media/ToneGenerator;

    const/16 v1, 0x50

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->h:Landroid/media/ToneGenerator;

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->e:Landroid/content/Context;

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

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught while creating local tone generator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iput-object p2, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->h:Landroid/media/ToneGenerator;

    .line 15
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

.method static synthetic a(Lcom/allinone/callerid/customview/EZKeyboardView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/customview/EZKeyboardView;->r()V

    return-void
.end method

.method private b()V
    .locals 6

    .line 1
    :try_start_0
    const-class v0, Landroid/widget/EditText;

    const-string v1, "setShowSoftInputOnFocus"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 4
    iget-object v1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->f:Lcom/allinone/callerid/customview/BaseEditText;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private c()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->e:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method private j(I)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->f:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private p()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->f:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->m:Lcom/allinone/callerid/customview/EZKeyboardView$b;

    const-string v1, "del_all"

    iget-object v2, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->f:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/allinone/callerid/customview/EZKeyboardView$b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->e:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "dial_enable_dial_tone"

    const/4 v2, 0x0

    .line 3
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/allinone/callerid/customview/EZKeyboardView;->d:Z

    return-void
.end method

.method private r()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->f:Lcom/allinone/callerid/customview/BaseEditText;

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

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->g:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private setupButton(I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 2
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09042c

    if-eq p1, v1, :cond_0

    const v1, 0x7f09042d

    if-ne p1, v1, :cond_1

    .line 3
    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    const v0, 0x7f090147

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/customview/BaseEditText;

    iput-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->f:Lcom/allinone/callerid/customview/BaseEditText;

    .line 2
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->f:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 4
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 5
    new-instance v1, Lcom/allinone/callerid/customview/EZKeyboardView$a;

    invoke-direct {v1, p0, v0}, Lcom/allinone/callerid/customview/EZKeyboardView$a;-><init>(Lcom/allinone/callerid/customview/EZKeyboardView;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v2, ""

    .line 6
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->f:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->f:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->f:Lcom/allinone/callerid/customview/BaseEditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 10
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->l:Landroid/graphics/Typeface;

    const v0, 0x7f09069e

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->l:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f09069f

    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->l:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0906a0

    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->l:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0906a1

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->l:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0906a2

    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->l:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0906a3

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->l:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0906a4

    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->l:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0906a5

    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->l:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0906a6

    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->l:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0906a7

    .line 20
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->l:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0906aa

    .line 21
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->l:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0906ab

    .line 22
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->l:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0906ac

    .line 23
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->l:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0906ad

    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->l:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0906ae

    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->l:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0906af

    .line 26
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->l:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0906b0

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->l:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0906b1

    .line 28
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->l:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0906a9

    .line 29
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->l:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0906b2

    .line 30
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->l:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0906a8

    .line 31
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->l:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 32
    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->f:Lcom/allinone/callerid/customview/BaseEditText;

    iget-object v1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->l:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f090508

    .line 33
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f090127

    .line 34
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->g:Landroid/widget/ImageView;

    const v0, 0x7f0900ad

    .line 35
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->j:Landroid/widget/ImageView;

    .line 36
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 39
    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->g:Landroid/widget/ImageView;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    :cond_1
    const v0, 0x7f09042d

    .line 41
    invoke-direct {p0, v0}, Lcom/allinone/callerid/customview/EZKeyboardView;->setupButton(I)V

    const v0, 0x7f09042e

    .line 42
    invoke-direct {p0, v0}, Lcom/allinone/callerid/customview/EZKeyboardView;->setupButton(I)V

    const v0, 0x7f09042f

    .line 43
    invoke-direct {p0, v0}, Lcom/allinone/callerid/customview/EZKeyboardView;->setupButton(I)V

    const v0, 0x7f090430

    .line 44
    invoke-direct {p0, v0}, Lcom/allinone/callerid/customview/EZKeyboardView;->setupButton(I)V

    const v0, 0x7f090431

    .line 45
    invoke-direct {p0, v0}, Lcom/allinone/callerid/customview/EZKeyboardView;->setupButton(I)V

    const v0, 0x7f090432

    .line 46
    invoke-direct {p0, v0}, Lcom/allinone/callerid/customview/EZKeyboardView;->setupButton(I)V

    const v0, 0x7f090433

    .line 47
    invoke-direct {p0, v0}, Lcom/allinone/callerid/customview/EZKeyboardView;->setupButton(I)V

    const v0, 0x7f090434

    .line 48
    invoke-direct {p0, v0}, Lcom/allinone/callerid/customview/EZKeyboardView;->setupButton(I)V

    const v0, 0x7f090435

    .line 49
    invoke-direct {p0, v0}, Lcom/allinone/callerid/customview/EZKeyboardView;->setupButton(I)V

    const v0, 0x7f090439

    .line 50
    invoke-direct {p0, v0}, Lcom/allinone/callerid/customview/EZKeyboardView;->setupButton(I)V

    const v0, 0x7f09042c

    .line 51
    invoke-direct {p0, v0}, Lcom/allinone/callerid/customview/EZKeyboardView;->setupButton(I)V

    const v0, 0x7f090438

    .line 52
    invoke-direct {p0, v0}, Lcom/allinone/callerid/customview/EZKeyboardView;->setupButton(I)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->f:Lcom/allinone/callerid/customview/BaseEditText;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method o(I)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/allinone/callerid/customview/EZKeyboardView;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->e:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->h:Landroid/media/ToneGenerator;

    if-nez v1, :cond_2

    const-string v1, "EZlDial"

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    monitor-exit v0

    return-void

    :cond_2
    const/16 v2, 0x96

    .line 8
    invoke-virtual {v1, p1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900ad

    if-eq p1, v0, :cond_1

    const v0, 0x7f090127

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 2
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/allinone/callerid/customview/EZKeyboardView;->o(I)V

    const/16 p1, 0x11

    .line 3
    invoke-direct {p0, p1}, Lcom/allinone/callerid/customview/EZKeyboardView;->j(I)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->m:Lcom/allinone/callerid/customview/EZKeyboardView$b;

    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->f:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "10"

    invoke-interface {p1, v1, v0}, Lcom/allinone/callerid/customview/EZKeyboardView$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/allinone/callerid/customview/EZKeyboardView;->o(I)V

    const/16 p1, 0x12

    .line 6
    invoke-direct {p0, p1}, Lcom/allinone/callerid/customview/EZKeyboardView;->j(I)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->m:Lcom/allinone/callerid/customview/EZKeyboardView$b;

    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->f:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-interface {p1, v1, v0}, Lcom/allinone/callerid/customview/EZKeyboardView$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/allinone/callerid/customview/EZKeyboardView;->o(I)V

    const/16 p1, 0x10

    .line 9
    invoke-direct {p0, p1}, Lcom/allinone/callerid/customview/EZKeyboardView;->j(I)V

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->m:Lcom/allinone/callerid/customview/EZKeyboardView$b;

    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->f:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "9"

    invoke-interface {p1, v1, v0}, Lcom/allinone/callerid/customview/EZKeyboardView$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11
    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/allinone/callerid/customview/EZKeyboardView;->o(I)V

    const/16 p1, 0xf

    .line 12
    invoke-direct {p0, p1}, Lcom/allinone/callerid/customview/EZKeyboardView;->j(I)V

    .line 13
    iget-object p1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->m:Lcom/allinone/callerid/customview/EZKeyboardView$b;

    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->f:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "8"

    invoke-interface {p1, v1, v0}, Lcom/allinone/callerid/customview/EZKeyboardView$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 14
    :pswitch_4
    invoke-virtual {p0, v0}, Lcom/allinone/callerid/customview/EZKeyboardView;->o(I)V

    const/16 p1, 0xe

    .line 15
    invoke-direct {p0, p1}, Lcom/allinone/callerid/customview/EZKeyboardView;->j(I)V

    .line 16
    iget-object p1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->m:Lcom/allinone/callerid/customview/EZKeyboardView$b;

    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->f:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "7"

    invoke-interface {p1, v1, v0}, Lcom/allinone/callerid/customview/EZKeyboardView$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 17
    :pswitch_5
    invoke-virtual {p0, v0}, Lcom/allinone/callerid/customview/EZKeyboardView;->o(I)V

    const/16 p1, 0xd

    .line 18
    invoke-direct {p0, p1}, Lcom/allinone/callerid/customview/EZKeyboardView;->j(I)V

    .line 19
    iget-object p1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->m:Lcom/allinone/callerid/customview/EZKeyboardView$b;

    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->f:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "6"

    invoke-interface {p1, v1, v0}, Lcom/allinone/callerid/customview/EZKeyboardView$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 20
    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/allinone/callerid/customview/EZKeyboardView;->o(I)V

    const/16 p1, 0xc

    .line 21
    invoke-direct {p0, p1}, Lcom/allinone/callerid/customview/EZKeyboardView;->j(I)V

    .line 22
    iget-object p1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->m:Lcom/allinone/callerid/customview/EZKeyboardView$b;

    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->f:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5"

    invoke-interface {p1, v1, v0}, Lcom/allinone/callerid/customview/EZKeyboardView$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 23
    :pswitch_7
    invoke-virtual {p0, v0}, Lcom/allinone/callerid/customview/EZKeyboardView;->o(I)V

    const/16 p1, 0xb

    .line 24
    invoke-direct {p0, p1}, Lcom/allinone/callerid/customview/EZKeyboardView;->j(I)V

    .line 25
    iget-object p1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->m:Lcom/allinone/callerid/customview/EZKeyboardView$b;

    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->f:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    invoke-interface {p1, v1, v0}, Lcom/allinone/callerid/customview/EZKeyboardView$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 26
    :pswitch_8
    invoke-virtual {p0, v0}, Lcom/allinone/callerid/customview/EZKeyboardView;->o(I)V

    const/16 p1, 0xa

    .line 27
    invoke-direct {p0, p1}, Lcom/allinone/callerid/customview/EZKeyboardView;->j(I)V

    .line 28
    iget-object p1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->m:Lcom/allinone/callerid/customview/EZKeyboardView$b;

    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->f:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-interface {p1, v1, v0}, Lcom/allinone/callerid/customview/EZKeyboardView$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 29
    :pswitch_9
    invoke-virtual {p0, v0}, Lcom/allinone/callerid/customview/EZKeyboardView;->o(I)V

    const/16 p1, 0x9

    .line 30
    invoke-direct {p0, p1}, Lcom/allinone/callerid/customview/EZKeyboardView;->j(I)V

    .line 31
    iget-object p1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->m:Lcom/allinone/callerid/customview/EZKeyboardView$b;

    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->f:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-interface {p1, v1, v0}, Lcom/allinone/callerid/customview/EZKeyboardView$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 32
    :pswitch_a
    invoke-virtual {p0, v0}, Lcom/allinone/callerid/customview/EZKeyboardView;->o(I)V

    const/16 p1, 0x8

    .line 33
    invoke-direct {p0, p1}, Lcom/allinone/callerid/customview/EZKeyboardView;->j(I)V

    .line 34
    iget-object p1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->m:Lcom/allinone/callerid/customview/EZKeyboardView$b;

    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->f:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-interface {p1, v1, v0}, Lcom/allinone/callerid/customview/EZKeyboardView$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 35
    :pswitch_b
    invoke-virtual {p0, v0}, Lcom/allinone/callerid/customview/EZKeyboardView;->o(I)V

    const/4 p1, 0x7

    .line 36
    invoke-direct {p0, p1}, Lcom/allinone/callerid/customview/EZKeyboardView;->j(I)V

    .line 37
    iget-object p1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->m:Lcom/allinone/callerid/customview/EZKeyboardView$b;

    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->f:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-interface {p1, v1, v0}, Lcom/allinone/callerid/customview/EZKeyboardView$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const/16 p1, 0x43

    .line 38
    invoke-direct {p0, p1}, Lcom/allinone/callerid/customview/EZKeyboardView;->j(I)V

    .line 39
    iget-object p1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->m:Lcom/allinone/callerid/customview/EZKeyboardView$b;

    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->f:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "del"

    invoke-interface {p1, v1, v0}, Lcom/allinone/callerid/customview/EZKeyboardView$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->f:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->f:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 41
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.INSERT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "vnd.android.cursor.dir/person"

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "vnd.android.cursor.dir/contact"

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "vnd.android.cursor.dir/raw_contact"

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "phone_type"

    const/4 v1, 0x2

    .line 45
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "phone"

    .line 46
    iget-object v1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->f:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    iget-object v0, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->e:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 49
    :cond_2
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 50
    :goto_0
    invoke-direct {p0}, Lcom/allinone/callerid/customview/EZKeyboardView;->r()V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f09042c
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
    .packed-switch 0x7f090438
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 2
    :sswitch_0
    :try_start_1
    iget-object p1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->f:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    if-nez p1, :cond_2

    .line 3
    invoke-direct {p0}, Lcom/allinone/callerid/customview/EZKeyboardView;->c()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "voicemail:"

    const-string v3, "android.intent.action.CALL"

    const-string v4, "android.permission.CALL_PHONE"

    if-eqz p1, :cond_0

    .line 4
    :try_start_2
    iget-object p1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->e:Landroid/content/Context;

    invoke-static {p1, v4}, Lcom/allinone/callerid/util/j1/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 7
    iget-object v2, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->e:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->e:Landroid/content/Context;

    invoke-static {p1, v4}, Lcom/allinone/callerid/util/j1/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 11
    iget-object v2, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->e:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :sswitch_1
    const/16 p1, 0x51

    .line 13
    invoke-direct {p0, p1}, Lcom/allinone/callerid/customview/EZKeyboardView;->j(I)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 14
    :sswitch_2
    invoke-direct {p0}, Lcom/allinone/callerid/customview/EZKeyboardView;->p()V

    .line 15
    iget-object p1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_0

    .line 16
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/allinone/callerid/customview/EZKeyboardView;->r()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return v0

    :sswitch_data_0
    .sparse-switch
        0x7f090127 -> :sswitch_2
        0x7f09042c -> :sswitch_1
        0x7f09042d -> :sswitch_0
    .end sparse-switch
.end method

.method public setNumberCallBack(Lcom/allinone/callerid/customview/EZKeyboardView$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/customview/EZKeyboardView;->m:Lcom/allinone/callerid/customview/EZKeyboardView$b;

    return-void
.end method
