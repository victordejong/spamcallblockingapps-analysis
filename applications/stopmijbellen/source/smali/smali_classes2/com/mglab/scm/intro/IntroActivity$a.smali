.class public Lcom/mglab/scm/intro/IntroActivity$a;
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
    iput-object p1, p0, Lcom/mglab/scm/intro/IntroActivity$a;->a:Lcom/mglab/scm/intro/IntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/intro/IntroActivity$a;->a:Lcom/mglab/scm/intro/IntroActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/mglab/scm/intro/IntroActivity;->w(I)V

    .line 2
    iget-object v0, p0, Lcom/mglab/scm/intro/IntroActivity$a;->a:Lcom/mglab/scm/intro/IntroActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lh8/q;->C(Landroid/content/Context;)V

    return-void
.end method
