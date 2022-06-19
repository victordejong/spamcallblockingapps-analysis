.class Landroidx/appcompat/app/h$f$1;
.super Landroid/content/BroadcastReceiver;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/h$f;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/h$f;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/h$f;)V
    .locals 0

    .line 2969
    iput-object p1, p0, Landroidx/appcompat/app/h$f$1;->a:Landroidx/appcompat/app/h$f;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 2972
    iget-object p1, p0, Landroidx/appcompat/app/h$f$1;->a:Landroidx/appcompat/app/h$f;

    invoke-virtual {p1}, Landroidx/appcompat/app/h$f;->b()V

    return-void
.end method
