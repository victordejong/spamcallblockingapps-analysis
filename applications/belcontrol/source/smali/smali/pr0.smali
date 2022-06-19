.class public final synthetic Lpr0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

.field public final synthetic b:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpr0;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    iput-object p2, p0, Lpr0;->b:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lpr0;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    iget-object v1, p0, Lpr0;->b:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->T0(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;I)V

    return-void
.end method
