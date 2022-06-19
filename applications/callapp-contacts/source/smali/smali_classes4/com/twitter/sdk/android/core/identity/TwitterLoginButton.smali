.class public Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;
.super Landroid/widget/Button;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field volatile b:Lcom/twitter/sdk/android/core/identity/h;

.field c:Landroid/view/View$OnClickListener;

.field d:Lcom/twitter/sdk/android/core/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/b<",
            "Lcom/twitter/sdk/android/core/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010048

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/twitter/sdk/android/core/identity/h;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/twitter/sdk/android/core/identity/h;)V
    .locals 1

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 1140
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->getContext()Landroid/content/Context;

    move-result-object p2

    instance-of p2, p2, Landroid/view/ContextThemeWrapper;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 1141
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p2}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    instance-of p2, p2, Landroid/app/Activity;

    if-eqz p2, :cond_0

    .line 1142
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p2}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    goto :goto_0

    .line 1143
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->getContext()Landroid/content/Context;

    move-result-object p2

    instance-of p2, p2, Landroid/app/Activity;

    if-eqz p2, :cond_1

    .line 1144
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    goto :goto_0

    .line 1145
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_4

    move-object p2, p3

    .line 73
    :goto_0
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->a:Ljava/lang/ref/WeakReference;

    .line 74
    iput-object p4, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->b:Lcom/twitter/sdk/android/core/identity/h;

    .line 2082
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 2083
    sget p2, Lcom/twitter/sdk/android/core/j$c;->tw__ic_logo_default:I

    .line 2084
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 2083
    invoke-super {p0, p2, p3, p3, p3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2085
    sget p2, Lcom/twitter/sdk/android/core/j$b;->tw__login_btn_drawable_padding:I

    .line 2086
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 2085
    invoke-super {p0, p2}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    .line 2087
    sget p2, Lcom/twitter/sdk/android/core/j$f;->tw__login_btn_txt:I

    invoke-super {p0, p2}, Landroid/widget/Button;->setText(I)V

    .line 2088
    sget p2, Lcom/twitter/sdk/android/core/j$a;->tw__solid_white:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-super {p0, p2}, Landroid/widget/Button;->setTextColor(I)V

    .line 2089
    sget p2, Lcom/twitter/sdk/android/core/j$b;->tw__login_btn_text_size:I

    .line 2090
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    const/4 p4, 0x0

    .line 2089
    invoke-super {p0, p4, p2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 2091
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-super {p0, p2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2092
    sget p2, Lcom/twitter/sdk/android/core/j$b;->tw__login_btn_left_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sget v0, Lcom/twitter/sdk/android/core/j$b;->tw__login_btn_right_padding:I

    .line 2093
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 2092
    invoke-super {p0, p2, p4, p1, p4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 2094
    sget p1, Lcom/twitter/sdk/android/core/j$c;->tw__login_btn:I

    invoke-super {p0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 2095
    new-instance p1, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$a;

    invoke-direct {p1, p0, p3}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$a;-><init>(Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$1;)V

    invoke-super {p0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2096
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_2

    .line 2097
    invoke-super {p0, p4}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 2199
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_3

    .line 2202
    :try_start_0
    invoke-static {}, Lcom/twitter/sdk/android/core/r;->a()Lcom/twitter/sdk/android/core/r;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2205
    invoke-static {}, Lcom/twitter/sdk/android/core/n;->c()Lcom/twitter/sdk/android/core/f;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Twitter"

    invoke-interface {p2, p3, p1}, Lcom/twitter/sdk/android/core/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    invoke-virtual {p0, p4}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->setEnabled(Z)V

    :cond_3
    return-void

    .line 1148
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "TwitterLoginButton requires an activity. Override getActivity to provide the activity for this button."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final a()Lcom/twitter/sdk/android/core/identity/h;
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->b:Lcom/twitter/sdk/android/core/identity/h;

    if-nez v0, :cond_1

    .line 188
    const-class v0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    monitor-enter v0

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->b:Lcom/twitter/sdk/android/core/identity/h;

    if-nez v1, :cond_0

    .line 190
    new-instance v1, Lcom/twitter/sdk/android/core/identity/h;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/identity/h;-><init>()V

    iput-object v1, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->b:Lcom/twitter/sdk/android/core/identity/h;

    .line 192
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 194
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->b:Lcom/twitter/sdk/android/core/identity/h;

    return-object v0
.end method

.method public setCallback(Lcom/twitter/sdk/android/core/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/b<",
            "Lcom/twitter/sdk/android/core/t;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 111
    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->d:Lcom/twitter/sdk/android/core/b;

    return-void

    .line 109
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Callback cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->c:Landroid/view/View$OnClickListener;

    return-void
.end method
