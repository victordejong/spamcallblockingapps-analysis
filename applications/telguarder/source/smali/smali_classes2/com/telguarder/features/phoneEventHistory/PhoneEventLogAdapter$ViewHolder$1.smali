.class Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "PhoneEventLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->bind(ILcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;I)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$1;->this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;

    iput p2, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 109
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$1;->this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;

    iget-object p1, p1, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;

    invoke-static {p1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->access$100(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$1;->this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;

    iget-object p1, p1, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;

    invoke-static {p1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->access$100(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 121
    :cond_1
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$1;->this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;

    iget-object p1, p1, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$1;->this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;

    iget-object p2, p2, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f050130

    invoke-static {p2, v0}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 124
    :cond_2
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$1;->this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;

    iget-object p1, p1, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$1$2;

    invoke-direct {p2, p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$1$2;-><init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$1;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 111
    :cond_3
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$1;->this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;

    iget-object p1, p1, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-static {p1, p2}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->access$102(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;Landroid/os/Handler;)Landroid/os/Handler;

    .line 112
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$1;->this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;

    iget-object p1, p1, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;

    invoke-static {p1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->access$100(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$1$1;

    invoke-direct {p2, p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$1$1;-><init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$1;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
