.class public final synthetic Lkr0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkr0;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    iput-boolean p2, p0, Lkr0;->b:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lkr0;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    iget-boolean v1, p0, Lkr0;->b:Z

    invoke-virtual {v0, v1, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->R0(ZLandroid/content/DialogInterface;I)V

    return-void
.end method
