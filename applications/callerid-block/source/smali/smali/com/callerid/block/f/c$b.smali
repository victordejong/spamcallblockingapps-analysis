.class final Lcom/callerid/block/f/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/f/c;->b0(Landroid/view/View;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/callerid/block/f/c;->J()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/callerid/block/f/c;->P()Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f10002a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/callerid/block/f/c;->Q()Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f10011a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/callerid/block/f/c;->J()Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {}, Lcom/callerid/block/f/c;->J()Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f100119

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/callerid/block/f/c;->R()Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "Fixed line - Bharti Airtel Ltd"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/callerid/block/f/c;->S()Landroid/widget/ImageView;

    move-result-object v0

    const v2, 0x7f0800bb

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/callerid/block/f/c;->T()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
