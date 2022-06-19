.class public final synthetic Lde1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/widget/EditText;

.field public final synthetic d:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;Ljava/lang/String;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lde1;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    iput-object p2, p0, Lde1;->b:Ljava/lang/String;

    iput-object p3, p0, Lde1;->c:Landroid/widget/EditText;

    iput-object p4, p0, Lde1;->d:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lde1;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    iget-object v1, p0, Lde1;->b:Ljava/lang/String;

    iget-object v2, p0, Lde1;->c:Landroid/widget/EditText;

    iget-object v3, p0, Lde1;->d:Landroid/app/AlertDialog;

    invoke-static {v0, v1, v2, v3, p1}, Loe1;->C(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;Ljava/lang/String;Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
