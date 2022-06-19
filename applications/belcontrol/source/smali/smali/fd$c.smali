.class public Lfd$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lfd;


# direct methods
.method public constructor <init>(Lfd;)V
    .locals 0

    iput-object p1, p0, Lfd$c;->a:Lfd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lfd$c;->a:Lfd;

    iget-object v0, p1, Lfd;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lfd;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
