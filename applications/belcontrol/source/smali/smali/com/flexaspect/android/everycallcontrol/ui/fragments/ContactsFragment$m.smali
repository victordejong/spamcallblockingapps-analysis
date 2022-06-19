.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->c0(IIILjava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/DialogInterface$OnClickListener;

.field public final synthetic b:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;Landroid/content/DialogInterface$OnClickListener;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$m;->a:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$m;->b:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$m;->a:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$m;->b:Landroid/app/AlertDialog;

    const/4 v1, -0x3

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
