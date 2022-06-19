.class public final synthetic Lww0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Lbx0;


# direct methods
.method public synthetic constructor <init>(Lbx0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lww0;->a:Lbx0;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lww0;->a:Lbx0;

    invoke-virtual {v0, p1}, Lbx0;->w(Landroid/content/DialogInterface;)V

    return-void
.end method
