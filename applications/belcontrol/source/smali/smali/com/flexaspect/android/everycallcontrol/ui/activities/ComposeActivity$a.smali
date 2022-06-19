.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;

    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;

    invoke-virtual {v1}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method
