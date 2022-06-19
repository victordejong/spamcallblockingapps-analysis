.class Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$3;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .line 340
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    iget-object p3, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$3;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p3}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->b(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p2, p3

    const/4 p3, 0x1

    add-int/2addr p2, p3

    const p4, 0x7f08052f

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ge p2, v1, :cond_1

    .line 342
    iget-object p2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$3;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->c(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Z

    move-result p2

    const v1, 0x7f0600f2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$3;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->d(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 343
    iget-object p2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$3;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->e(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-static {p2, p4, v1}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    .line 344
    iget-object p2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$3;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->e(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 345
    iget-object p2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$3;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->e(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 347
    :cond_0
    iget-object p2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$3;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->f(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-static {p2, p4, v1}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    .line 348
    iget-object p2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$3;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->f(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 349
    iget-object p2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$3;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->f(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 352
    :goto_0
    iget-object p2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$3;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->a(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, ""

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 353
    iget-object p2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$3;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->g(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Lcom/hbb20/CountryCodePicker;

    move-result-object p2

    const/4 p4, 0x0

    .line 3157
    invoke-virtual {p2, p4}, Lcom/hbb20/CountryCodePicker;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 357
    :cond_1
    iget-object p2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$3;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->c(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Z

    move-result p2

    const v1, 0x7f06010a

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$3;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->d(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 358
    iget-object p2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$3;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->e(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-static {p2, p4, v1}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    .line 359
    iget-object p2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$3;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->e(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 360
    iget-object p2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$3;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->e(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 362
    :cond_2
    iget-object p2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$3;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->f(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-static {p2, p4, v1}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    .line 363
    iget-object p2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$3;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->f(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 364
    iget-object p2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$3;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->f(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 368
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, "+"

    .line 369
    invoke-static {p1, p2}, Lcom/callapp/framework/util/StringUtils;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 370
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p1, p3, p2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    :cond_4
    const-string p2, "1"

    .line 373
    invoke-static {p1, p2}, Lcom/callapp/framework/util/StringUtils;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 374
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$3;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->g(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Lcom/hbb20/CountryCodePicker;

    move-result-object p1

    const-string p2, "US"

    invoke-virtual {p1, p2}, Lcom/hbb20/CountryCodePicker;->setDefaultCountryUsingNameCode(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    const-string p2, "7"

    .line 375
    invoke-static {p1, p2}, Lcom/callapp/framework/util/StringUtils;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 376
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$3;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->g(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Lcom/hbb20/CountryCodePicker;

    move-result-object p1

    const-string p2, "RU"

    invoke-virtual {p1, p2}, Lcom/hbb20/CountryCodePicker;->setDefaultCountryUsingNameCode(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string p2, "358"

    .line 377
    invoke-static {p1, p2}, Lcom/callapp/framework/util/StringUtils;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 378
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$3;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->g(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Lcom/hbb20/CountryCodePicker;

    move-result-object p1

    const-string p2, "FI"

    invoke-virtual {p1, p2}, Lcom/hbb20/CountryCodePicker;->setDefaultCountryUsingNameCode(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const-string p2, "44"

    .line 379
    invoke-static {p1, p2}, Lcom/callapp/framework/util/StringUtils;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 380
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$3;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->g(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Lcom/hbb20/CountryCodePicker;

    move-result-object p1

    const-string p2, "GB"

    invoke-virtual {p1, p2}, Lcom/hbb20/CountryCodePicker;->setDefaultCountryUsingNameCode(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const/4 p2, 0x4

    .line 382
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 383
    iget-object p4, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$3;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p4}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->g(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Lcom/hbb20/CountryCodePicker;

    move-result-object p4

    invoke-virtual {p4}, Lcom/hbb20/CountryCodePicker;->d()I

    move-result p4

    :goto_2
    if-gt p3, p2, :cond_a

    .line 386
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$3;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->g(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Lcom/hbb20/CountryCodePicker;

    move-result-object v1

    invoke-static {p1, v0, p3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hbb20/CountryCodePicker;->setDefaultCountryUsingPhoneCode(I)V

    .line 387
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$3;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->g(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Lcom/hbb20/CountryCodePicker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hbb20/CountryCodePicker;->d()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq p4, v1, :cond_9

    goto :goto_3

    :catch_0
    :cond_9
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 396
    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$3;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->g(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Lcom/hbb20/CountryCodePicker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hbb20/CountryCodePicker;->e()V

    return-void
.end method
