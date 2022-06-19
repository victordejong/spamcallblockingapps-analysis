.class public Lcom/mglab/scm/MainActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lea/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mglab/scm/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mglab/scm/MainActivity;


# direct methods
.method public constructor <init>(Lcom/mglab/scm/MainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mglab/scm/MainActivity$e;->a:Lcom/mglab/scm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/MainActivity$e;->a:Lcom/mglab/scm/MainActivity;

    sget v1, Lcom/mglab/scm/MainActivity;->v:I

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 4
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
