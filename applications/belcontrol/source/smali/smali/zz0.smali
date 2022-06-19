.class public final synthetic Lzz0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;

.field public final synthetic b:Ll81;


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;Ll81;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzz0;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;

    iput-object p2, p0, Lzz0;->b:Ll81;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lzz0;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;

    iget-object v1, p0, Lzz0;->b:Ll81;

    invoke-virtual {v0, v1, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->Z(Ll81;Landroid/content/DialogInterface;I)V

    return-void
.end method
