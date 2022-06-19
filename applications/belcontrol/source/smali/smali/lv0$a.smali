.class public Llv0$a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llv0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/telephony/PhoneNumberFormattingTextWatcher;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/widget/TextView;

.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/widget/TextView;Z)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Llv0$a;->a:Ljava/lang/String;

    iput-object p2, p0, Llv0$a;->b:Landroid/widget/TextView;

    iput-boolean p3, p0, Llv0$a;->c:Z

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Void;)Landroid/telephony/PhoneNumberFormattingTextWatcher;
    .locals 1

    new-instance p1, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    iget-object v0, p0, Llv0$a;->a:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public b(Landroid/telephony/PhoneNumberFormattingTextWatcher;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Llv0$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-boolean v0, p0, Llv0$a;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Llv0$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Llv0$a;->a([Ljava/lang/Void;)Landroid/telephony/PhoneNumberFormattingTextWatcher;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-virtual {p0, p1}, Llv0$a;->b(Landroid/telephony/PhoneNumberFormattingTextWatcher;)V

    return-void
.end method
