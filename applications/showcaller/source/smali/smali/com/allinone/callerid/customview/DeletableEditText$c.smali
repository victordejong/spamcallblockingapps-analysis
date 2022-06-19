.class Lcom/allinone/callerid/customview/DeletableEditText$c;
.super Ljava/lang/Object;
.source "DeletableEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/customview/DeletableEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/customview/DeletableEditText;


# direct methods
.method private constructor <init>(Lcom/allinone/callerid/customview/DeletableEditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/customview/DeletableEditText$c;->d:Lcom/allinone/callerid/customview/DeletableEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/allinone/callerid/customview/DeletableEditText;Lcom/allinone/callerid/customview/DeletableEditText$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/allinone/callerid/customview/DeletableEditText$c;-><init>(Lcom/allinone/callerid/customview/DeletableEditText;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/customview/DeletableEditText$c;->d:Lcom/allinone/callerid/customview/DeletableEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/customview/DeletableEditText$c;->d:Lcom/allinone/callerid/customview/DeletableEditText;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/customview/DeletableEditText;->setClearDrawableVisible(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
