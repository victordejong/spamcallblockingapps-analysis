.class public final Lcom/vk/api/sdk/ui/VKCaptchaActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/api/sdk/ui/VKCaptchaActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0002J\u0008\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0008\u0010\u000f\u001a\u00020\nH\u0016J\u0008\u0010\u0010\u001a\u00020\nH\u0002J\u0012\u0010\u0011\u001a\u00020\n2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J\u0008\u0010\u0014\u001a\u00020\nH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/vk/api/sdk/ui/VKCaptchaActivity;",
        "Landroid/app/Activity;",
        "()V",
        "image",
        "Landroid/widget/ImageView;",
        "input",
        "Landroid/widget/EditText;",
        "progress",
        "Landroid/widget/ProgressBar;",
        "captchaCancelled",
        "",
        "captchaDone",
        "displayImage",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "finish",
        "loadImage",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "Companion",
        "libapi-sdk-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lcom/vk/api/sdk/ui/VKCaptchaActivity$a;

.field private static e:Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/api/sdk/ui/VKCaptchaActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/api/sdk/ui/VKCaptchaActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->a:Lcom/vk/api/sdk/ui/VKCaptchaActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic a(Lcom/vk/api/sdk/ui/VKCaptchaActivity;)V
    .locals 2

    .line 4136
    iget-object v0, p0, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->b:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const-string v1, "input"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->e:Ljava/lang/String;

    .line 4137
    sget-object v0, Lcom/vk/api/sdk/e/i;->a:Lcom/vk/api/sdk/e/i;

    invoke-static {}, Lcom/vk/api/sdk/e/i;->b()V

    .line 4138
    invoke-virtual {p0}, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->finish()V

    return-void
.end method

.method public static final synthetic a(Lcom/vk/api/sdk/ui/VKCaptchaActivity;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 5129
    new-instance v0, Lcom/vk/api/sdk/ui/VKCaptchaActivity$b;

    invoke-direct {v0, p0, p1}, Lcom/vk/api/sdk/ui/VKCaptchaActivity$b;-><init>(Lcom/vk/api/sdk/ui/VKCaptchaActivity;Landroid/graphics/Bitmap;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/vk/api/sdk/o;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final synthetic b(Lcom/vk/api/sdk/ui/VKCaptchaActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 4142
    sput-object v0, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->e:Ljava/lang/String;

    .line 4143
    sget-object v0, Lcom/vk/api/sdk/e/i;->a:Lcom/vk/api/sdk/e/i;

    invoke-static {}, Lcom/vk/api/sdk/e/i;->b()V

    const/4 v0, 0x0

    .line 4144
    invoke-virtual {p0, v0}, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->setResult(I)V

    .line 4145
    invoke-virtual {p0}, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->finish()V

    return-void
.end method

.method public static final synthetic c(Lcom/vk/api/sdk/ui/VKCaptchaActivity;)Landroid/widget/ImageView;
    .locals 1

    .line 46
    iget-object p0, p0, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->c:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    const-string v0, "image"

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic d(Lcom/vk/api/sdk/ui/VKCaptchaActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .line 46
    iget-object p0, p0, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->d:Landroid/widget/ProgressBar;

    if-nez p0, :cond_0

    const-string v0, "progress"

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final finish()V
    .locals 1

    .line 113
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, v0, v0}, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 56
    invoke-virtual {p0, p1, p1}, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->overridePendingTransition(II)V

    .line 58
    new-instance p1, Landroid/widget/FrameLayout;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->setContentView(Landroid/view/View;)V

    .line 60
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 61
    sget-object v1, Lcom/vk/api/sdk/e/h;->a:Lcom/vk/api/sdk/e/h;

    .line 1132
    invoke-static {}, Lcom/vk/api/sdk/e/h;->a()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41400000    # 12.0f

    mul-float v1, v1, v2

    float-to-double v1, v1

    .line 1130
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 62
    sget-object v2, Lcom/vk/api/sdk/e/h;->a:Lcom/vk/api/sdk/e/h;

    .line 2132
    invoke-static {}, Lcom/vk/api/sdk/e/h;->a()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 62
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v4, 0x43020000    # 130.0f

    mul-float v2, v2, v4

    float-to-int v2, v2

    .line 63
    sget-object v4, Lcom/vk/api/sdk/e/h;->a:Lcom/vk/api/sdk/e/h;

    .line 3132
    invoke-static {}, Lcom/vk/api/sdk/e/h;->a()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 63
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x42480000    # 50.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 64
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v4, 0x1

    .line 65
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 66
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 68
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 70
    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 71
    check-cast v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->d:Landroid/widget/ProgressBar;

    .line 74
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x11

    .line 75
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 76
    iget-object v7, p0, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->d:Landroid/widget/ProgressBar;

    const-string v8, "progress"

    if-nez v7, :cond_0

    invoke-static {v8}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v7, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v1, p0, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->d:Landroid/widget/ProgressBar;

    if-nez v1, :cond_1

    invoke-static {v8}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_1
    check-cast v1, Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 79
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->c:Landroid/widget/ImageView;

    .line 80
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 81
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 82
    iget-object v6, p0, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->c:Landroid/widget/ImageView;

    const-string v7, "image"

    if-nez v6, :cond_2

    invoke-static {v7}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_2
    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v1, p0, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->c:Landroid/widget/ImageView;

    if-nez v1, :cond_3

    invoke-static {v7}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_3
    check-cast v1, Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 85
    check-cast v5, Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->b:Landroid/widget/EditText;

    const-string v5, "input"

    if-nez v1, :cond_4

    .line 88
    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_4
    const/16 v6, 0xb0

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 89
    iget-object v1, p0, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->b:Landroid/widget/EditText;

    if-nez v1, :cond_5

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 90
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 91
    iget-object v2, p0, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->b:Landroid/widget/EditText;

    if-nez v2, :cond_6

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_6
    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v1, p0, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->b:Landroid/widget/EditText;

    if-nez v1, :cond_7

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_7
    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x5

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 95
    check-cast p1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 96
    sget v0, Lcom/vk/api/sdk/a$c;->vk_captcha_hint:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    .line 97
    new-instance v1, Lcom/vk/api/sdk/ui/VKCaptchaActivity$d;

    invoke-direct {v1, p0}, Lcom/vk/api/sdk/ui/VKCaptchaActivity$d;-><init>(Lcom/vk/api/sdk/ui/VKCaptchaActivity;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    .line 100
    new-instance v1, Lcom/vk/api/sdk/ui/VKCaptchaActivity$e;

    invoke-direct {v1, p0}, Lcom/vk/api/sdk/ui/VKCaptchaActivity$e;-><init>(Lcom/vk/api/sdk/ui/VKCaptchaActivity;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 103
    new-instance v0, Lcom/vk/api/sdk/ui/VKCaptchaActivity$f;

    invoke-direct {v0, p0}, Lcom/vk/api/sdk/ui/VKCaptchaActivity$f;-><init>(Lcom/vk/api/sdk/ui/VKCaptchaActivity;)V

    check-cast v0, Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 108
    iget-object p1, p0, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->b:Landroid/widget/EditText;

    if-nez p1, :cond_8

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 4118
    invoke-virtual {p0}, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "key_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4120
    sget-object v0, Lcom/vk/api/sdk/o;->a:Lcom/vk/api/sdk/o;

    invoke-static {}, Lcom/vk/api/sdk/o;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/vk/api/sdk/ui/VKCaptchaActivity$c;

    invoke-direct {v1, p0, p1}, Lcom/vk/api/sdk/ui/VKCaptchaActivity$c;-><init>(Lcom/vk/api/sdk/ui/VKCaptchaActivity;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method protected final onDestroy()V
    .locals 1

    .line 149
    sget-object v0, Lcom/vk/api/sdk/e/i;->a:Lcom/vk/api/sdk/e/i;

    invoke-static {}, Lcom/vk/api/sdk/e/i;->b()V

    .line 150
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
