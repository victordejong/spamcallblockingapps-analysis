.class final Lcom/hbb20/CountryCodePicker$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hbb20/CountryCodePicker;->q()Landroid/text/TextWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/hbb20/CountryCodePicker;


# direct methods
.method constructor <init>(Lcom/hbb20/CountryCodePicker;)V
    .locals 0

    .line 1013
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker$2;->b:Lcom/hbb20/CountryCodePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1014
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker$2;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 1024
    iget-object p2, p0, Lcom/hbb20/CountryCodePicker$2;->b:Lcom/hbb20/CountryCodePicker;

    invoke-static {p2}, Lcom/hbb20/CountryCodePicker;->b(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/a;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1025
    iget-object p3, p0, Lcom/hbb20/CountryCodePicker$2;->a:Ljava/lang/String;

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    :cond_0
    iget-object p3, p0, Lcom/hbb20/CountryCodePicker$2;->b:Lcom/hbb20/CountryCodePicker;

    iget-boolean p3, p3, Lcom/hbb20/CountryCodePicker;->au:Z

    if-eqz p3, :cond_3

    .line 1027
    iget-object p3, p0, Lcom/hbb20/CountryCodePicker$2;->b:Lcom/hbb20/CountryCodePicker;

    invoke-static {p3}, Lcom/hbb20/CountryCodePicker;->c(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/b;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 1028
    iget-object p3, p0, Lcom/hbb20/CountryCodePicker$2;->b:Lcom/hbb20/CountryCodePicker;

    .line 2139
    iget-object p3, p3, Lcom/hbb20/CountryCodePicker;->k:Landroid/widget/EditText;

    .line 1028
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1029
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker$2;->b:Lcom/hbb20/CountryCodePicker;

    invoke-static {v0}, Lcom/hbb20/CountryCodePicker;->c(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/b;

    move-result-object v0

    iget v0, v0, Lcom/hbb20/b;->b:I

    if-lt p4, v0, :cond_2

    .line 1030
    invoke-static {p3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 1031
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker$2;->b:Lcom/hbb20/CountryCodePicker;

    invoke-static {v0}, Lcom/hbb20/CountryCodePicker;->c(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/b;

    move-result-object v0

    iget v0, v0, Lcom/hbb20/b;->b:I

    if-lt p4, v0, :cond_2

    const/4 p4, 0x0

    .line 1032
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker$2;->b:Lcom/hbb20/CountryCodePicker;

    invoke-static {v0}, Lcom/hbb20/CountryCodePicker;->c(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/b;

    move-result-object v0

    iget v0, v0, Lcom/hbb20/b;->b:I

    invoke-virtual {p3, p4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 1033
    iget-object p4, p0, Lcom/hbb20/CountryCodePicker$2;->b:Lcom/hbb20/CountryCodePicker;

    iget-object p4, p4, Lcom/hbb20/CountryCodePicker;->av:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 1034
    iget-object p4, p0, Lcom/hbb20/CountryCodePicker$2;->b:Lcom/hbb20/CountryCodePicker;

    invoke-static {p4}, Lcom/hbb20/CountryCodePicker;->c(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/b;

    move-result-object p4

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker$2;->b:Lcom/hbb20/CountryCodePicker;

    iget-object v0, v0, Lcom/hbb20/CountryCodePicker;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker$2;->b:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v1}, Lcom/hbb20/CountryCodePicker;->a()Lcom/hbb20/CountryCodePicker$e;

    move-result-object v1

    invoke-virtual {p4, v0, v1, p3}, Lcom/hbb20/b;->a(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;Ljava/lang/String;)Lcom/hbb20/a;

    move-result-object p4

    .line 1035
    invoke-virtual {p4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1036
    iget-object p2, p0, Lcom/hbb20/CountryCodePicker$2;->b:Lcom/hbb20/CountryCodePicker;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/hbb20/CountryCodePicker;->ax:Z

    .line 1037
    iget-object p2, p0, Lcom/hbb20/CountryCodePicker$2;->b:Lcom/hbb20/CountryCodePicker;

    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    iput v0, p2, Lcom/hbb20/CountryCodePicker;->aw:I

    .line 1038
    iget-object p2, p0, Lcom/hbb20/CountryCodePicker$2;->b:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {p2, p4}, Lcom/hbb20/CountryCodePicker;->a(Lcom/hbb20/a;)V

    .line 1040
    :cond_1
    iget-object p2, p0, Lcom/hbb20/CountryCodePicker$2;->b:Lcom/hbb20/CountryCodePicker;

    iput-object p3, p2, Lcom/hbb20/CountryCodePicker;->av:Ljava/lang/String;

    .line 1045
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker$2;->a:Ljava/lang/String;

    :cond_3
    return-void
.end method
