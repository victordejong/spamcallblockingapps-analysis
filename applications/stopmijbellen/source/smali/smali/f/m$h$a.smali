.class public Lf/m$h$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/m$h;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/m$h;


# direct methods
.method public constructor <init>(Lf/m$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/m$h$a;->a:Lf/m$h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/m$h$a;->a:Lf/m$h;

    invoke-virtual {p1}, Lf/m$h;->d()V

    return-void
.end method
