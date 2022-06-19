.class public final synthetic Lnr0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;

.field public final synthetic b:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnr0;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;

    iput-object p2, p0, Lnr0;->b:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lnr0;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;

    iget-object v1, p0, Lnr0;->b:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    invoke-virtual {v0, v1, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;->n(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;Landroid/content/DialogInterface;I)V

    return-void
.end method
