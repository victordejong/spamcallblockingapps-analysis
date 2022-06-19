.class public final synthetic La01;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;

.field public final synthetic b:I

.field public final synthetic c:Ll81;


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;ILl81;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La01;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;

    iput p2, p0, La01;->b:I

    iput-object p3, p0, La01;->c:Ll81;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, La01;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;

    iget v1, p0, La01;->b:I

    iget-object v2, p0, La01;->c:Ll81;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->X(ILl81;Landroid/content/DialogInterface;I)V

    return-void
.end method
