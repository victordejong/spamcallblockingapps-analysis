.class public final synthetic Lce1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/content/DialogInterface$OnClickListener;

.field public final synthetic b:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/content/DialogInterface$OnClickListener;Landroid/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lce1;->a:Landroid/content/DialogInterface$OnClickListener;

    iput-object p2, p0, Lce1;->b:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lce1;->a:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lce1;->b:Landroid/app/AlertDialog;

    invoke-static {v0, v1, p1}, Loe1;->H(Landroid/content/DialogInterface$OnClickListener;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
