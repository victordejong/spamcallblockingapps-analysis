.class public Lfd$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lfd$a;->a:Lfd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lfd$a;->a:Lfd;

    iget-object v1, v0, Lfd;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    iget-object v0, v0, Lfd;->mDialog:Landroid/app/Dialog;

    invoke-interface {v1, v0}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
