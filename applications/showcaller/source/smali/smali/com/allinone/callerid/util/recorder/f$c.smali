.class Lcom/allinone/callerid/util/recorder/f$c;
.super Ljava/lang/Object;
.source "RecorderUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/util/recorder/f;->v(Landroid/app/Activity;Lcom/allinone/callerid/i/a/d;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/recorder/f$c;->d:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object p1, p0, Lcom/allinone/callerid/util/recorder/f$c;->d:Landroid/app/Activity;

    new-instance v0, Lcom/allinone/callerid/util/recorder/f$c$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/util/recorder/f$c$a;-><init>(Lcom/allinone/callerid/util/recorder/f$c;)V

    invoke-static {p1, v0}, Lcom/allinone/callerid/util/j1/a;->n(Landroid/app/Activity;Lcom/allinone/callerid/util/j1/a$g;)V

    goto :goto_0

    .line 3
    :pswitch_1
    invoke-static {}, Lcom/allinone/callerid/util/recorder/f;->n()Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/recorder/f;->n()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090139
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
