.class final Lcom/facebook/login/DeviceAuthDialog$1;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/DeviceAuthDialog;->a(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/login/DeviceAuthDialog;


# direct methods
.method constructor <init>(Lcom/facebook/login/DeviceAuthDialog;Landroid/content/Context;I)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$1;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 0

    .line 121
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method
