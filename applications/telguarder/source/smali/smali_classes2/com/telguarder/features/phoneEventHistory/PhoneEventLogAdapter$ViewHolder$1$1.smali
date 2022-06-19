.class Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$1$1;
.super Ljava/lang/Object;
.source "PhoneEventLogAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$1;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$1;


# direct methods
.method constructor <init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$1;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$1$1;->this$2:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$1$1;->this$2:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$1;

    iget-object v0, v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$1;->this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;

    iget-object v0, v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$1$1;->this$2:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$1;

    iget-object v1, v1, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder$1;->this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;

    iget-object v1, v1, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050046

    invoke-static {v1, v2}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
