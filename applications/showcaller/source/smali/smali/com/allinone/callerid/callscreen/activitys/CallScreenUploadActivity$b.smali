.class Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$b;
.super Ljava/lang/Object;
.source "CallScreenUploadActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->f0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$b;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;

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
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$b;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->a0(Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$b;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->a0(Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
