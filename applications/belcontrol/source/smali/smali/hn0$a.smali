.class public Lhn0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhn0;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lhn0;


# direct methods
.method public constructor <init>(Lhn0;)V
    .locals 0

    iput-object p1, p0, Lhn0$a;->a:Lhn0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lhn0$a;->a:Lhn0;

    invoke-virtual {p1}, Lhn0;->cancel()V

    return-void
.end method
