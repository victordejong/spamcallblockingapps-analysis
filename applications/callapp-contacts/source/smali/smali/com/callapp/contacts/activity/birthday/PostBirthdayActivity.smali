.class public Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;
.super Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$ImagePagerAdapter;
    }
.end annotation


# static fields
.field private static final j:[I


# instance fields
.field a:Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;

.field b:Z

.field c:Z

.field d:Z

.field e:Landroidx/viewpager/widget/ViewPager;

.field f:Lcom/callapp/contacts/widget/CirclePaginationContainer;

.field g:Landroid/widget/EditText;

.field h:Landroid/widget/ImageView;

.field private k:Ljava/lang/Runnable;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 74
    fill-array-data v0, :array_0

    sput-object v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->j:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f080084
        0x7f080085
        0x7f080086
        0x7f080087
        0x7f080088
        0x7f080089
        0x7f08008a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->c:Z

    .line 87
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->d:Z

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->k:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->d:Z

    return p0
.end method

.method static synthetic a()[I
    .locals 1

    .line 66
    sget-object v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->j:[I

    return-object v0
.end method

.method private b()Landroid/graphics/Bitmap;
    .locals 9

    .line 449
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->b:Z

    if-nez v0, :cond_2

    .line 451
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->a:Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;->getDisplayPhotoUrls()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 453
    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    .line 2432
    iput-object p0, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->e:Landroid/content/Context;

    .line 453
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->l:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 456
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 458
    iget-object v3, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_1

    return-object v2

    .line 463
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 466
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 467
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 468
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v7, v1

    const v8, 0x3f7ae148    # 0.98f

    mul-float v7, v7, v8

    int-to-float v5, v5

    div-float/2addr v7, v5

    mul-float v5, v5, v7

    float-to-int v5, v5

    int-to-float v6, v6

    mul-float v6, v6, v7

    float-to-int v6, v6

    sub-int/2addr v1, v5

    .line 476
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v5, v1

    .line 482
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v1, v1

    const/4 v8, 0x0

    int-to-float v5, v5

    int-to-float v6, v6

    invoke-direct {v7, v1, v8, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 484
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x1

    .line 485
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 486
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 487
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 488
    invoke-virtual {v4, v3, v2, v7, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "addGreetingOverlay exception"

    .line 494
    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    .line 499
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08008b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;)Z
    .locals 1

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;)Lcom/callapp/contacts/widget/CirclePaginationContainer;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->f:Lcom/callapp/contacts/widget/CirclePaginationContainer;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;)Landroid/widget/EditText;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->g:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->h:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;)Landroid/graphics/Bitmap;
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->b()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;)Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->a:Lcom/callapp/contacts/activity/birthday/ContactBirthdayData;

    return-object p0
.end method


# virtual methods
.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d003f

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 196
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 197
    invoke-static {p1, p2, p3}, Lcom/callapp/contacts/api/helper/common/SocialNetworksSearchUtil;->a(IILandroid/content/Intent;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 101
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 104
    new-instance p1, Lcom/callapp/contacts/activity/birthday/LoadBirthdayDataFragment;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/birthday/LoadBirthdayDataFragment;-><init>()V

    .line 105
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object v1

    const-string v2, "LOADING_FRAGMENT_TAG"

    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/s;->b()I

    .line 1082
    iput-boolean v0, p1, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->e:Z

    .line 107
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->b()Z

    :cond_0
    const p1, 0x7f0a06b6

    .line 110
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 112
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getScreenWidth(I)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 113
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 114
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f0a0470

    .line 117
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz p1, :cond_1

    const v0, 0x7f0a02f0

    .line 119
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 120
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f0600f2

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 188
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->c(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->k:Ljava/lang/Runnable;

    .line 191
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 6

    .line 130
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onNewIntent(Landroid/content/Intent;)V

    if-nez p1, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->finish()V

    return-void

    :cond_0
    const-string v0, "FB_ID_EXTRA"

    .line 136
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->l:Z

    const-string v0, "PHONE_EXTRA"

    .line 137
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->l:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->finish()V

    return-void

    .line 138
    :cond_2
    :goto_0
    new-instance v0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$1;-><init>(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->k:Ljava/lang/Runnable;

    .line 175
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    .line 177
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "LOADING_FRAGMENT_TAG"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/birthday/LoadBirthdayDataFragment;

    const-string v1, "FB_ID_EXTRA"

    .line 179
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PHONE_EXTRA"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CONTACT_ID_EXTRA"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 2029
    iput-object v1, v0, Lcom/callapp/contacts/activity/birthday/LoadBirthdayDataFragment;->a:Ljava/lang/String;

    .line 2030
    iput-object v2, v0, Lcom/callapp/contacts/activity/birthday/LoadBirthdayDataFragment;->b:Ljava/lang/String;

    .line 2031
    iput-wide v3, v0, Lcom/callapp/contacts/activity/birthday/LoadBirthdayDataFragment;->c:J

    .line 2038
    iget-object p1, v0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->f:Ljava/lang/Object;

    monitor-enter p1

    .line 2039
    :try_start_0
    iget-boolean v1, v0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->g:Z

    if-nez v1, :cond_4

    const/4 v1, 0x1

    .line 2040
    iput-boolean v1, v0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->g:Z

    .line 2041
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 2042
    iget-boolean v2, v0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->e:Z

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2043
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->a(Landroid/content/Context;)V

    .line 2045
    :cond_3
    new-instance v1, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment$1;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment$1;-><init>(Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;)V

    .line 2057
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 2059
    :cond_4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setupPaginationContainer(I)V
    .locals 3

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->f:Lcom/callapp/contacts/widget/CirclePaginationContainer;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const v2, 0x7f0601aa

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/CirclePaginationContainer;->setCheckedColor(I)V

    .line 260
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->f:Lcom/callapp/contacts/widget/CirclePaginationContainer;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const v2, 0x7f0601ab

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/CirclePaginationContainer;->setUncheckedColor(I)V

    .line 261
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->f:Lcom/callapp/contacts/widget/CirclePaginationContainer;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const v2, 0x7f0600f3

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/CirclePaginationContainer;->setBackgroundColor(I)V

    .line 262
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->f:Lcom/callapp/contacts/widget/CirclePaginationContainer;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/CirclePaginationContainer;->a(I)V

    .line 263
    iget-object p1, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->f:Lcom/callapp/contacts/widget/CirclePaginationContainer;

    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/CirclePaginationContainer;->setCheckedPosition(I)V

    return-void

    .line 265
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->f:Lcom/callapp/contacts/widget/CirclePaginationContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/CirclePaginationContainer;->setVisibility(I)V

    return-void
.end method
