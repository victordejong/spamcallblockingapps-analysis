.class Lcom/allinone/callerid/customview/EZKeyboardView$a;
.super Landroid/telephony/PhoneNumberFormattingTextWatcher;
.source "EZKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/customview/EZKeyboardView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/customview/EZKeyboardView;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/customview/EZKeyboardView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/customview/EZKeyboardView$a;->d:Lcom/allinone/callerid/customview/EZKeyboardView;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/customview/EZKeyboardView$a;->d:Lcom/allinone/callerid/customview/EZKeyboardView;

    invoke-static {p1}, Lcom/allinone/callerid/customview/EZKeyboardView;->a(Lcom/allinone/callerid/customview/EZKeyboardView;)V

    return-void
.end method
