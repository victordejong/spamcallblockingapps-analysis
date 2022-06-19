.class public Lex0;
.super Landroid/telephony/PhoneNumberFormattingTextWatcher;
.source ""


# instance fields
.field public a:Ldx0;


# direct methods
.method public constructor <init>(Ldx0;)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>()V

    iput-object p1, p0, Lex0;->a:Ldx0;

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-object p1, p0, Lex0;->a:Ldx0;

    invoke-interface {p1}, Ldx0;->a()V

    return-void
.end method
