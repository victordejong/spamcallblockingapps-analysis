.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->onResume()V
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

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    sget-object p1, Lta1;->L:Lta1;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;

    invoke-virtual {p1, v0}, Lta1;->g(Landroid/app/Activity;)V

    return-void
.end method
