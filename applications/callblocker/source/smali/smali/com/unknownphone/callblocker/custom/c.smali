.class public abstract Lcom/unknownphone/callblocker/custom/c;
.super Ljava/lang/Object;
.source "CustomTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/text/Editable;)V
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/unknownphone/callblocker/custom/c;->a(Landroid/text/Editable;)V

    .line 21
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 12
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 16
    return-void
.end method
