.class public Lcom/mglab/scm/MainActivity$b;
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
    iput-object p1, p0, Lcom/mglab/scm/MainActivity$b;->a:Lcom/mglab/scm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    new-instance v0, Lh8/q;

    invoke-direct {v0}, Lh8/q;-><init>()V

    iget-object v1, p0, Lcom/mglab/scm/MainActivity$b;->a:Lcom/mglab/scm/MainActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lh8/q;->B(Landroid/content/Context;Z)V

    .line 3
    iget-object v0, p0, Lcom/mglab/scm/MainActivity$b;->a:Lcom/mglab/scm/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf8/g;->C(Landroid/content/Context;)V

    .line 4
    iget-object v0, p0, Lcom/mglab/scm/MainActivity$b;->a:Lcom/mglab/scm/MainActivity;

    invoke-virtual {v0}, Lcom/mglab/scm/MainActivity;->onResume()V

    .line 5
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    new-instance v1, Lk8/r;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lk8/r;-><init>(I)V

    invoke-virtual {v0, v1}, Lba/b;->g(Ljava/lang/Object;)V

    return-void
.end method
