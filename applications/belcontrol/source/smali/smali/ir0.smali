.class public final synthetic Lir0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

.field public final synthetic b:Z

.field public final synthetic c:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;ZLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lir0;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    iput-boolean p2, p0, Lir0;->b:Z

    iput-object p3, p0, Lir0;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lir0;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    iget-boolean v1, p0, Lir0;->b:Z

    iget-object v2, p0, Lir0;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->K0(ZLandroid/os/Bundle;)V

    return-void
.end method
