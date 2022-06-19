.class final Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$4$doTask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$4;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$4;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$4;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$4$doTask$2;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$4$doTask$2;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$4;

    iget-object v0, v0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$4;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    const-string v1, ""

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$4$doTask$2;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$4;

    iget-object v0, v0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$4;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
