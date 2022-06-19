.class Lcom/callerid/block/customview/EZKeyboardView$a;
.super Landroid/telephony/PhoneNumberFormattingTextWatcher;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/customview/EZKeyboardView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/customview/EZKeyboardView;


# direct methods
.method constructor <init>(Lcom/callerid/block/customview/EZKeyboardView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/customview/EZKeyboardView$a;->b:Lcom/callerid/block/customview/EZKeyboardView;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-object p1, p0, Lcom/callerid/block/customview/EZKeyboardView$a;->b:Lcom/callerid/block/customview/EZKeyboardView;

    invoke-static {p1}, Lcom/callerid/block/customview/EZKeyboardView;->a(Lcom/callerid/block/customview/EZKeyboardView;)V

    return-void
.end method
