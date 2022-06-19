.class public final synthetic Lz01;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;

.field public final synthetic b:Landroid/widget/NumberPicker;

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;Landroid/widget/NumberPicker;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz01;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;

    iput-object p2, p0, Lz01;->b:Landroid/widget/NumberPicker;

    iput p3, p0, Lz01;->c:I

    iput-object p4, p0, Lz01;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lz01;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;

    iget-object v1, p0, Lz01;->b:Landroid/widget/NumberPicker;

    iget v2, p0, Lz01;->c:I

    iget-object v3, p0, Lz01;->d:Ljava/util/List;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->Z(Landroid/widget/NumberPicker;ILjava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method
