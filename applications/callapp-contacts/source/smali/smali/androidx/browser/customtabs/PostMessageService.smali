.class public Landroidx/browser/customtabs/PostMessageService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/a/c$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    new-instance v0, Landroidx/browser/customtabs/PostMessageService$1;

    invoke-direct {v0, p0}, Landroidx/browser/customtabs/PostMessageService$1;-><init>(Landroidx/browser/customtabs/PostMessageService;)V

    iput-object v0, p0, Landroidx/browser/customtabs/PostMessageService;->a:Landroid/support/a/c$a;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 54
    iget-object p1, p0, Landroidx/browser/customtabs/PostMessageService;->a:Landroid/support/a/c$a;

    return-object p1
.end method
