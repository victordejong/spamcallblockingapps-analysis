.class public Lcom/kedlin/cca/ui/EveryCallerSignInForm;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kedlin/cca/ui/EveryCallerSignInForm$f;
    }
.end annotation


# static fields
.field public static m:Ljava/lang/String; = ""

.field public static n:Ljava/lang/String; = ""


# instance fields
.field public a:Landroid/widget/CheckBox;

.field public b:Landroid/widget/Button;

.field public c:Landroid/widget/Button;

.field public d:Landroid/widget/EditText;

.field public f:Landroid/widget/EditText;

.field public g:Landroid/graphics/drawable/Drawable;

.field public h:Landroid/graphics/drawable/Drawable;

.field public j:Landroid/widget/ImageView;

.field public k:Landroid/widget/ImageView;

.field public l:Lcom/kedlin/cca/ui/EveryCallerSignInForm$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->l:Lcom/kedlin/cca/ui/EveryCallerSignInForm$f;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/kedlin/cca/ui/EveryCallerSignInForm;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->f:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic b(Lcom/kedlin/cca/ui/EveryCallerSignInForm;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->d:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic c(Lcom/kedlin/cca/ui/EveryCallerSignInForm;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->a:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public static synthetic d(Lcom/kedlin/cca/ui/EveryCallerSignInForm;Landroid/widget/EditText;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->i(Landroid/widget/EditText;I)V

    return-void
.end method

.method public static synthetic e(Lcom/kedlin/cca/ui/EveryCallerSignInForm;Landroid/widget/TextView;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->f(Landroid/widget/TextView;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final f(Landroid/widget/TextView;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v2

    const v3, 0x7f0a03b3

    if-ne v2, v3, :cond_2

    sget-object p1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    const v2, 0x7f0a03b5

    if-ne p1, v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x5

    if-lt p1, v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->f:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->n:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->m:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final i(Landroid/widget/EditText;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x2

    aget-object p1, p1, v0

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public j(Z)Z
    .locals 11

    iget-object v0, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->f:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->f(Landroid/widget/TextView;)Z

    move-result v0

    const v1, 0x7f060199

    const v2, 0x7f060191

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-nez v0, :cond_0

    const v0, 0x7f1103e9

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1103e8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v7, v3

    const/4 v0, -0x1

    const/4 v8, 0x0

    :goto_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->d:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->f(Landroid/widget/TextView;)Z

    move-result p1

    if-nez p1, :cond_2

    const v0, 0x7f1103eb

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v3, "\r\n\r\n"

    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1103ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_1
    const/4 p1, 0x2

    if-ne v8, p1, :cond_3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1103ec

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v0, 0x7f110677

    :cond_3
    if-ne v0, v5, :cond_4

    return v4

    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f110555

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return v6
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->b:Landroid/widget/Button;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->c:Landroid/widget/Button;

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->c:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/kedlin/cca/ui/EveryCallerSignInForm$e;

    invoke-direct {v2, p0}, Lcom/kedlin/cca/ui/EveryCallerSignInForm$e;-><init>(Lcom/kedlin/cca/ui/EveryCallerSignInForm;)V

    const-wide/16 v3, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    instance-of p1, p1, Landroid/widget/Button;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->j(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->b:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result p1

    if-ne v0, p1, :cond_3

    iget-object p1, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->l:Lcom/kedlin/cca/ui/EveryCallerSignInForm$f;

    iget-object v1, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/kedlin/cca/ui/EveryCallerSignInForm$f;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->c:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result p1

    if-ne v0, p1, :cond_4

    iget-object p1, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->l:Lcom/kedlin/cca/ui/EveryCallerSignInForm$f;

    iget-object v0, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/kedlin/cca/ui/EveryCallerSignInForm$f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080248

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060191

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const v0, 0x7f0a03b6

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->k:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a03b4

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a03b7

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->a:Landroid/widget/CheckBox;

    const v0, 0x7f0a03b0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->b:Landroid/widget/Button;

    const v0, 0x7f0a020d

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->c:Landroid/widget/Button;

    const v0, 0x7f0a03b3

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->f:Landroid/widget/EditText;

    sget-object v0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->f:Landroid/widget/EditText;

    sget-object v1, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->f:Landroid/widget/EditText;

    sget-object v1, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->n:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    iget-object v0, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/kedlin/cca/ui/EveryCallerSignInForm$a;

    invoke-direct {v1, p0}, Lcom/kedlin/cca/ui/EveryCallerSignInForm$a;-><init>(Lcom/kedlin/cca/ui/EveryCallerSignInForm;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0a03b5

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->d:Landroid/widget/EditText;

    sget-object v0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->d:Landroid/widget/EditText;

    sget-object v1, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->d:Landroid/widget/EditText;

    sget-object v1, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->m:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    iget-object v0, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/kedlin/cca/ui/EveryCallerSignInForm$b;

    invoke-direct {v1, p0}, Lcom/kedlin/cca/ui/EveryCallerSignInForm$b;-><init>(Lcom/kedlin/cca/ui/EveryCallerSignInForm;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->a:Landroid/widget/CheckBox;

    new-instance v1, Lcom/kedlin/cca/ui/EveryCallerSignInForm$c;

    invoke-direct {v1, p0}, Lcom/kedlin/cca/ui/EveryCallerSignInForm$c;-><init>(Lcom/kedlin/cca/ui/EveryCallerSignInForm;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/kedlin/cca/ui/EveryCallerSignInForm$d;

    invoke-direct {v0, p0}, Lcom/kedlin/cca/ui/EveryCallerSignInForm$d;-><init>(Lcom/kedlin/cca/ui/EveryCallerSignInForm;)V

    iget-object v1, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->d:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->b:Landroid/widget/Button;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setElevation(F)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->b:Landroid/widget/Button;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTranslationZ(F)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setListener(Lcom/kedlin/cca/ui/EveryCallerSignInForm$f;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->l:Lcom/kedlin/cca/ui/EveryCallerSignInForm$f;

    return-void
.end method
