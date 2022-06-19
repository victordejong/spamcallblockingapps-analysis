.class public final synthetic Lb01;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb01;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;

    iput-object p2, p0, Lb01;->b:Ljava/lang/Object;

    iput-object p3, p0, Lb01;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lb01;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;

    iget-object v1, p0, Lb01;->b:Ljava/lang/Object;

    iget-object v2, p0, Lb01;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->e0(Ljava/lang/Object;Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V

    return-void
.end method
