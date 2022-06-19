.class public final synthetic Lx01;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx01;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;

    iput-object p2, p0, Lx01;->b:Ljava/util/List;

    iput p3, p0, Lx01;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lx01;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;

    iget-object v1, p0, Lx01;->b:Ljava/util/List;

    iget v2, p0, Lx01;->c:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->l0(Ljava/util/List;ILandroid/content/DialogInterface;I)V

    return-void
.end method
