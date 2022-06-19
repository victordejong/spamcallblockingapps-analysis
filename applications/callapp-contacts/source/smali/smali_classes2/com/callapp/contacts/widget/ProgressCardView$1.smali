.class Lcom/callapp/contacts/widget/ProgressCardView$1;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/ProgressCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/ProgressCardView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/ProgressCardView;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/callapp/contacts/widget/ProgressCardView$1;->a:Lcom/callapp/contacts/widget/ProgressCardView;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView$1;->a:Lcom/callapp/contacts/widget/ProgressCardView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/ProgressCardView;->a(Lcom/callapp/contacts/widget/ProgressCardView;)Lcom/callapp/contacts/widget/ProgressCardView$SimpleCardViewEvents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 68
    :sswitch_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/ProgressCardView$1;->a:Lcom/callapp/contacts/widget/ProgressCardView;

    invoke-static {p1}, Lcom/callapp/contacts/widget/ProgressCardView;->a(Lcom/callapp/contacts/widget/ProgressCardView;)Lcom/callapp/contacts/widget/ProgressCardView$SimpleCardViewEvents;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/widget/ProgressCardView$SimpleCardViewEvents;->c()V

    goto :goto_0

    .line 64
    :sswitch_1
    iget-object p1, p0, Lcom/callapp/contacts/widget/ProgressCardView$1;->a:Lcom/callapp/contacts/widget/ProgressCardView;

    invoke-static {p1}, Lcom/callapp/contacts/widget/ProgressCardView;->a(Lcom/callapp/contacts/widget/ProgressCardView;)Lcom/callapp/contacts/widget/ProgressCardView$SimpleCardViewEvents;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/widget/ProgressCardView$SimpleCardViewEvents;->b()V

    return-void

    .line 60
    :sswitch_2
    iget-object p1, p0, Lcom/callapp/contacts/widget/ProgressCardView$1;->a:Lcom/callapp/contacts/widget/ProgressCardView;

    invoke-static {p1}, Lcom/callapp/contacts/widget/ProgressCardView;->a(Lcom/callapp/contacts/widget/ProgressCardView;)Lcom/callapp/contacts/widget/ProgressCardView$SimpleCardViewEvents;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/widget/ProgressCardView$SimpleCardViewEvents;->a()V

    :cond_0
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a0182 -> :sswitch_2
        0x7f0a0183 -> :sswitch_1
        0x7f0a0568 -> :sswitch_2
        0x7f0a0758 -> :sswitch_1
        0x7f0a089e -> :sswitch_0
    .end sparse-switch
.end method
