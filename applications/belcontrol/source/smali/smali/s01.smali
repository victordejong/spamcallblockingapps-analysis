.class public final synthetic Ls01;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;

.field public final synthetic b:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls01;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;

    iput-object p2, p0, Ls01;->b:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Ls01;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;

    iget-object v1, p0, Ls01;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v1, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;->S(Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method
