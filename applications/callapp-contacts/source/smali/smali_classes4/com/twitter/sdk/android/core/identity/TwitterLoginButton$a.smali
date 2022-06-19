.class final Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;


# direct methods
.method private constructor <init>(Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$a;->a:Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$1;)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$a;-><init>(Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$a;->a:Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->d:Lcom/twitter/sdk/android/core/b;

    const-string v1, "Twitter"

    if-nez v0, :cond_0

    const-string v0, "Callback must not be null, did you call setCallback?"

    .line 1173
    invoke-static {v1, v0}, Lcom/twitter/sdk/android/core/internal/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$a;->a:Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 1179
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "TwitterLoginButton requires an activity. Override getActivity to provide the activity for this button."

    .line 1180
    invoke-static {v1, v0}, Lcom/twitter/sdk/android/core/internal/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$a;->a:Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->a()Lcom/twitter/sdk/android/core/identity/h;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$a;->a:Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$a;->a:Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    iget-object v2, v2, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->d:Lcom/twitter/sdk/android/core/b;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/sdk/android/core/identity/h;->a(Landroid/app/Activity;Lcom/twitter/sdk/android/core/b;)V

    .line 166
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$a;->a:Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->c:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$a;->a:Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->c:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_3
    return-void
.end method
