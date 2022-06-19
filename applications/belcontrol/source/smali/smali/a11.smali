.class public final synthetic La11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La11;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;

    iput p2, p0, La11;->b:I

    iput-object p3, p0, La11;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, La11;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;

    iget v1, p0, La11;->b:I

    iget-object v2, p0, La11;->c:Ljava/util/List;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->j0(ILjava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method
