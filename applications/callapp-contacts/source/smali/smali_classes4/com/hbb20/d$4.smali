.class final Lcom/hbb20/d$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hbb20/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/hbb20/d;


# direct methods
.method constructor <init>(Lcom/hbb20/d;I)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/hbb20/d$4;->b:Lcom/hbb20/d;

    iput p2, p0, Lcom/hbb20/d$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 179
    iget-object v0, p0, Lcom/hbb20/d$4;->b:Lcom/hbb20/d;

    iget-object v0, v0, Lcom/hbb20/d;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hbb20/d$4;->b:Lcom/hbb20/d;

    iget-object v0, v0, Lcom/hbb20/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/hbb20/d$4;->a:I

    if-le v0, v2, :cond_1

    .line 180
    iget-object v0, p0, Lcom/hbb20/d$4;->b:Lcom/hbb20/d;

    iget-object v0, v0, Lcom/hbb20/d;->d:Lcom/hbb20/CountryCodePicker;

    iget-object v2, p0, Lcom/hbb20/d$4;->b:Lcom/hbb20/d;

    iget-object v2, v2, Lcom/hbb20/d;->a:Ljava/util/List;

    iget v3, p0, Lcom/hbb20/d$4;->a:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hbb20/a;

    .line 3345
    iget-object v3, v0, Lcom/hbb20/CountryCodePicker;->t:Lcom/hbb20/CountryCodePicker;

    iget-boolean v3, v3, Lcom/hbb20/CountryCodePicker;->K:Z

    if-eqz v3, :cond_0

    .line 3346
    iget-object v3, v0, Lcom/hbb20/CountryCodePicker;->t:Lcom/hbb20/CountryCodePicker;

    .line 3681
    iget-object v4, v2, Lcom/hbb20/a;->h:Ljava/lang/String;

    .line 4523
    iget-object v5, v3, Lcom/hbb20/CountryCodePicker;->g:Landroid/content/Context;

    iget-object v6, v3, Lcom/hbb20/CountryCodePicker;->d:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 4527
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 4530
    iget-object v3, v3, Lcom/hbb20/CountryCodePicker;->S:Ljava/lang/String;

    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4533
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3348
    :cond_0
    invoke-virtual {v0, v2}, Lcom/hbb20/CountryCodePicker;->a(Lcom/hbb20/a;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 182
    iget-object v0, p0, Lcom/hbb20/d$4;->b:Lcom/hbb20/d;

    iget-object v0, v0, Lcom/hbb20/d;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hbb20/d$4;->b:Lcom/hbb20/d;

    iget-object v0, v0, Lcom/hbb20/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/hbb20/d$4;->a:I

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/hbb20/d$4;->b:Lcom/hbb20/d;

    iget-object v0, v0, Lcom/hbb20/d;->a:Ljava/util/List;

    iget v2, p0, Lcom/hbb20/d$4;->a:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/hbb20/d$4;->b:Lcom/hbb20/d;

    iget-object v0, v0, Lcom/hbb20/d;->h:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 185
    iget-object p1, p0, Lcom/hbb20/d$4;->b:Lcom/hbb20/d;

    iget-object p1, p1, Lcom/hbb20/d;->g:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    return-void
.end method
