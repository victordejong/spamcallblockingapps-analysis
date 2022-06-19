.class public Lcom/mglab/scm/intro/Intro1_ViewBinding$a;
.super Lc2/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mglab/scm/intro/Intro1_ViewBinding;-><init>(Lcom/mglab/scm/intro/Intro1;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mglab/scm/intro/Intro1;


# direct methods
.method public constructor <init>(Lcom/mglab/scm/intro/Intro1_ViewBinding;Lcom/mglab/scm/intro/Intro1;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/mglab/scm/intro/Intro1_ViewBinding$a;->c:Lcom/mglab/scm/intro/Intro1;

    invoke-direct {p0}, Lc2/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/intro/Intro1_ViewBinding$a;->c:Lcom/mglab/scm/intro/Intro1;

    invoke-virtual {v0, p1}, Lcom/mglab/scm/intro/Intro1;->onEMailClick(Landroid/view/View;)V

    return-void
.end method
