.class public Ls$l$a;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls$l;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls$l;


# direct methods
.method public constructor <init>(Ls$l;)V
    .locals 0

    iput-object p1, p0, Ls$l$a;->a:Ls$l;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Ls$l$a;->a:Ls$l;

    invoke-virtual {p1}, Ls$l;->d()V

    return-void
.end method
