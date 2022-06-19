.class public Lcom/mglab/scm/intro/IntroActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lea/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mglab/scm/intro/IntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mglab/scm/intro/IntroActivity;


# direct methods
.method public constructor <init>(Lcom/mglab/scm/intro/IntroActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mglab/scm/intro/IntroActivity$b;->a:Lcom/mglab/scm/intro/IntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/intro/IntroActivity$b;->a:Lcom/mglab/scm/intro/IntroActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mglab/scm/intro/IntroActivity;->w(I)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/intro/IntroActivity$b;->a:Lcom/mglab/scm/intro/IntroActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mglab/scm/intro/IntroActivity;->w(I)V

    .line 2
    new-instance v0, Lh8/q;

    invoke-direct {v0}, Lh8/q;-><init>()V

    iget-object v1, p0, Lcom/mglab/scm/intro/IntroActivity$b;->a:Lcom/mglab/scm/intro/IntroActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lh8/q;->B(Landroid/content/Context;Z)V

    .line 4
    new-instance v0, Ll8/w;

    .line 5
    sget-object v1, Lcom/mglab/scm/intro/IntroActivity;->x:Landroid/content/Context;

    .line 6
    invoke-direct {v0, v1}, Ll8/w;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x8

    const/4 v2, 0x1

    .line 7
    invoke-virtual {v0, v1, v2}, Ll8/w;->l(IZ)V

    return-void
.end method
