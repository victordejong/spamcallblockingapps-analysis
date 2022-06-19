.class public Lcom/facebook/login/DeviceAuthDialog;
.super Landroidx/fragment/app/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/DeviceAuthDialog$RequestState;
    }
.end annotation


# instance fields
.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/facebook/login/DeviceAuthMethodHandler;

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile h:Lcom/facebook/h;

.field private volatile i:Ljava/util/concurrent/ScheduledFuture;

.field private volatile j:Lcom/facebook/login/DeviceAuthDialog$RequestState;

.field private k:Z

.field private l:Z

.field private m:Lcom/facebook/login/LoginClient$Request;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroidx/fragment/app/c;-><init>()V

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->k:Z

    .line 90
    iput-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->l:Z

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->m:Lcom/facebook/login/LoginClient$Request;

    return-void
.end method

.method private a(Lcom/facebook/login/DeviceAuthDialog$RequestState;)V
    .locals 3

    .line 222
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog;->j:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 223
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->getUserCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->getAuthorizationUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/devicerequests/a/a;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 226
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 227
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->e:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 228
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->l:Z

    if-nez v0, :cond_0

    .line 232
    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->getUserCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/devicerequests/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    new-instance v0, Lcom/facebook/appevents/m;

    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/appevents/m;-><init>(Landroid/content/Context;)V

    const-string v1, "fb_smart_login_service"

    .line 234
    invoke-virtual {v0, v1}, Lcom/facebook/appevents/m;->a(Ljava/lang/String;)V

    .line 239
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->withinLastRefreshWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 240
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->f()V

    return-void

    .line 242
    :cond_1
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->e()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/login/DeviceAuthDialog$RequestState;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/DeviceAuthDialog$RequestState;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/ae$b;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 12

    .line 4369
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/common/a$f;->com_facebook_smart_login_confirmation_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4371
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/common/a$f;->com_facebook_smart_login_confirmation_continue_as:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4373
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/common/a$f;->com_facebook_smart_login_confirmation_cancel:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p4, v4, v5

    .line 4374
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4375
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4377
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 4378
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/facebook/login/DeviceAuthDialog$7;

    move-object v5, v3

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v5 .. v11}, Lcom/facebook/login/DeviceAuthDialog$7;-><init>(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/ae$b;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    .line 4379
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/facebook/login/DeviceAuthDialog$6;

    move-object v3, p0

    invoke-direct {v1, p0}, Lcom/facebook/login/DeviceAuthDialog$6;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    .line 4387
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4396
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/ae$b;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 13

    move-object v0, p2

    move-object v1, p0

    .line 2485
    iget-object v2, v1, Lcom/facebook/login/DeviceAuthDialog;->f:Lcom/facebook/login/DeviceAuthMethodHandler;

    .line 2487
    invoke-static {}, Lcom/facebook/g;->m()Ljava/lang/String;

    move-result-object v4

    .line 3391
    iget-object v6, v0, Lcom/facebook/internal/ae$b;->a:Ljava/util/List;

    .line 3392
    iget-object v7, v0, Lcom/facebook/internal/ae$b;->b:Ljava/util/List;

    .line 3393
    iget-object v8, v0, Lcom/facebook/internal/ae$b;->c:Ljava/util/List;

    .line 2491
    sget-object v9, Lcom/facebook/c;->DEVICE_AUTH:Lcom/facebook/c;

    const/4 v11, 0x0

    move-object/from16 v3, p3

    move-object v5, p1

    move-object/from16 v10, p4

    move-object/from16 v12, p5

    .line 2485
    invoke-virtual/range {v2 .. v12}, Lcom/facebook/login/DeviceAuthMethodHandler;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/c;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    .line 2497
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 21

    .line 2401
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "fields"

    const-string v1, "id,permissions,name"

    .line 2402
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2404
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-eqz v8, :cond_0

    new-instance v0, Ljava/util/Date;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    mul-long v10, v10, v4

    add-long/2addr v8, v10

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 2406
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v1, v8, v6

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    new-instance v2, Ljava/util/Date;

    .line 2407
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-long v6, v6, v4

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 2410
    :cond_1
    new-instance v1, Lcom/facebook/AccessToken;

    .line 2413
    invoke-static {}, Lcom/facebook/g;->m()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const-string v13, "0"

    move-object v10, v1

    move-object/from16 v11, p1

    move-object/from16 v18, v0

    move-object/from16 v20, v2

    invoke-direct/range {v10 .. v20}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/c;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    .line 2423
    new-instance v6, Lcom/facebook/GraphRequest;

    sget-object v4, Lcom/facebook/k;->GET:Lcom/facebook/k;

    new-instance v5, Lcom/facebook/login/DeviceAuthDialog$8;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct {v5, v7, v8, v0, v2}, Lcom/facebook/login/DeviceAuthDialog$8;-><init>(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    const-string v2, "me"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;Lcom/facebook/GraphRequest$b;)V

    .line 2476
    invoke-virtual {v6}, Lcom/facebook/GraphRequest;->c()Lcom/facebook/h;

    return-void
.end method

.method static synthetic a(Lcom/facebook/login/DeviceAuthDialog;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/facebook/login/DeviceAuthDialog;->k:Z

    return p0
.end method

.method private static b(Z)I
    .locals 0

    if-eqz p0, :cond_0

    .line 269
    sget p0, Lcom/facebook/common/a$e;->com_facebook_smart_device_dialog_fragment:I

    return p0

    :cond_0
    sget p0, Lcom/facebook/common/a$e;->com_facebook_device_auth_dialog_fragment:I

    return p0
.end method

.method static synthetic b(Lcom/facebook/login/DeviceAuthDialog;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->e()V

    return-void
.end method

.method static synthetic c(Lcom/facebook/login/DeviceAuthDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/facebook/login/DeviceAuthDialog;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/login/DeviceAuthDialog;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->f()V

    return-void
.end method

.method static synthetic e(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/DeviceAuthDialog$RequestState;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/facebook/login/DeviceAuthDialog;->j:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    return-object p0
.end method

.method private e()V
    .locals 3

    .line 275
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->j:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->setLastPoll(J)V

    .line 276
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->g()Lcom/facebook/GraphRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->c()Lcom/facebook/h;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/h;

    return-void
.end method

.method static synthetic f(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/LoginClient$Request;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/facebook/login/DeviceAuthDialog;->m:Lcom/facebook/login/LoginClient$Request;

    return-object p0
.end method

.method private f()V
    .locals 5

    .line 281
    invoke-static {}, Lcom/facebook/login/DeviceAuthMethodHandler;->getBackgroundExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/facebook/login/DeviceAuthDialog$4;

    invoke-direct {v1, p0}, Lcom/facebook/login/DeviceAuthDialog$4;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    iget-object v2, p0, Lcom/facebook/login/DeviceAuthDialog;->j:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 289
    invoke-virtual {v2}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->getInterval()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 282
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->i:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private g()Lcom/facebook/GraphRequest;
    .locals 7

    .line 294
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 295
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->j:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->getRequestCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    new-instance v6, Lcom/facebook/GraphRequest;

    sget-object v4, Lcom/facebook/k;->POST:Lcom/facebook/k;

    new-instance v5, Lcom/facebook/login/DeviceAuthDialog$5;

    invoke-direct {v5, p0}, Lcom/facebook/login/DeviceAuthDialog$5;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    const/4 v1, 0x0

    const-string v2, "device/login_status"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;Lcom/facebook/GraphRequest$b;)V

    return-object v6
.end method

.method static synthetic g(Lcom/facebook/login/DeviceAuthDialog;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/facebook/login/DeviceAuthDialog;->l:Z

    return p0
.end method

.method static synthetic h(Lcom/facebook/login/DeviceAuthDialog;)Z
    .locals 1

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->l:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 116
    new-instance p1, Lcom/facebook/login/DeviceAuthDialog$1;

    .line 117
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/common/a$g;->com_facebook_auth_dialog:I

    invoke-direct {p1, p0, v0, v1}, Lcom/facebook/login/DeviceAuthDialog$1;-><init>(Lcom/facebook/login/DeviceAuthDialog;Landroid/content/Context;I)V

    .line 125
    invoke-static {}, Lcom/facebook/devicerequests/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/login/DeviceAuthDialog;->a(Z)Landroid/view/View;

    move-result-object v0

    .line 124
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-object p1
.end method

.method protected final a(Z)Landroid/view/View;
    .locals 2

    .line 248
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 249
    invoke-static {p1}, Lcom/facebook/login/DeviceAuthDialog;->b(Z)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 250
    sget v0, Lcom/facebook/common/a$d;->progress_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->c:Landroid/view/View;

    .line 251
    sget v0, Lcom/facebook/common/a$d;->confirmation_code:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->d:Landroid/widget/TextView;

    .line 253
    sget v0, Lcom/facebook/common/a$d;->cancel_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 254
    new-instance v1, Lcom/facebook/login/DeviceAuthDialog$3;

    invoke-direct {v1, p0}, Lcom/facebook/login/DeviceAuthDialog$3;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    sget v0, Lcom/facebook/common/a$d;->com_facebook_device_auth_instructions:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->e:Landroid/widget/TextView;

    .line 263
    sget v1, Lcom/facebook/common/a$f;->com_facebook_device_auth_instructions:I

    invoke-virtual {p0, v1}, Lcom/facebook/login/DeviceAuthDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method protected final a(Lcom/facebook/FacebookException;)V
    .locals 3

    .line 501
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->j:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->j:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->getUserCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/devicerequests/a/a;->c(Ljava/lang/String;)V

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->f:Lcom/facebook/login/DeviceAuthMethodHandler;

    invoke-virtual {v0, p1}, Lcom/facebook/login/DeviceAuthMethodHandler;->onError(Ljava/lang/Exception;)V

    .line 509
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final a(Lcom/facebook/login/LoginClient$Request;)V
    .locals 6

    .line 168
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog;->m:Lcom/facebook/login/LoginClient$Request;

    .line 169
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 170
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "scope"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getDeviceRedirectUriString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "redirect_uri"

    .line 174
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getDeviceAuthTargetUserId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "target_user_id"

    .line 179
    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/facebook/internal/af;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/facebook/internal/af;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "access_token"

    .line 183
    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lcom/facebook/devicerequests/a/a;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "device_info"

    .line 184
    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance p1, Lcom/facebook/GraphRequest;

    const/4 v1, 0x0

    sget-object v4, Lcom/facebook/k;->POST:Lcom/facebook/k;

    new-instance v5, Lcom/facebook/login/DeviceAuthDialog$2;

    invoke-direct {v5, p0}, Lcom/facebook/login/DeviceAuthDialog$2;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    const-string v2, "device/login"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;Lcom/facebook/GraphRequest$b;)V

    .line 218
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->c()Lcom/facebook/h;

    return-void
.end method

.method protected final d()V
    .locals 3

    .line 513
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->j:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    if-eqz v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->j:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->getUserCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/devicerequests/a/a;->c(Ljava/lang/String;)V

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->f:Lcom/facebook/login/DeviceAuthMethodHandler;

    if-eqz v0, :cond_2

    .line 524
    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthMethodHandler;->onCancel()V

    .line 527
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 97
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/c;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 98
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/facebook/FacebookActivity;

    .line 2139
    iget-object p2, p2, Lcom/facebook/FacebookActivity;->b:Landroidx/fragment/app/Fragment;

    .line 99
    check-cast p2, Lcom/facebook/login/e;

    .line 2199
    iget-object p2, p2, Lcom/facebook/login/e;->a:Lcom/facebook/login/LoginClient;

    .line 101
    invoke-virtual {p2}, Lcom/facebook/login/LoginClient;->getCurrentHandler()Lcom/facebook/login/LoginMethodHandler;

    move-result-object p2

    check-cast p2, Lcom/facebook/login/DeviceAuthMethodHandler;

    iput-object p2, p0, Lcom/facebook/login/DeviceAuthDialog;->f:Lcom/facebook/login/DeviceAuthMethodHandler;

    if-eqz p3, :cond_0

    const-string p2, "request_state"

    .line 104
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/facebook/login/DeviceAuthDialog$RequestState;

    if-eqz p2, :cond_0

    .line 106
    invoke-direct {p0, p2}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/DeviceAuthDialog$RequestState;)V

    :cond_0
    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->k:Z

    .line 151
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 152
    invoke-super {p0}, Landroidx/fragment/app/c;->onDestroyView()V

    .line 154
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/h;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/h;

    invoke-virtual {v1, v0}, Lcom/facebook/h;->cancel(Z)Z

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->i:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->i:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->c:Landroid/view/View;

    .line 163
    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->d:Landroid/widget/TextView;

    .line 164
    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->e:Landroid/widget/TextView;

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 131
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onDismiss(Landroid/content/DialogInterface;)V

    .line 132
    iget-boolean p1, p0, Lcom/facebook/login/DeviceAuthDialog;->k:Z

    if-nez p1, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->d()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 139
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 140
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->j:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->j:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    const-string v1, "request_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
