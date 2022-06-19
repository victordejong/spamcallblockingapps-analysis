.class Lcom/allinone/callerid/start/AnsweredActivity$h;
.super Ljava/lang/Object;
.source "AnsweredActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/AnsweredActivity;->p0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/start/AnsweredActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/AnsweredActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/AnsweredActivity$h;->d:Lcom/allinone/callerid/start/AnsweredActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09036b

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/start/AnsweredActivity$h;->d:Lcom/allinone/callerid/start/AnsweredActivity;

    invoke-static {p1}, Lcom/allinone/callerid/start/AnsweredActivity;->f0(Lcom/allinone/callerid/start/AnsweredActivity;)Lcom/allinone/callerid/dialog/j;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void
.end method
