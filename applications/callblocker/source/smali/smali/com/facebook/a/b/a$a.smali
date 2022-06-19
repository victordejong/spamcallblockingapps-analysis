.class public Lcom/facebook/a/b/a$a;
.super Ljava/lang/Object;
.source "CodelessLoggingEventListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/facebook/a/b/a/a;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/view/View$OnClickListener;

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/facebook/a/b/a/a;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/a/b/a$a;->e:Z

    .line 87
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-static {p3}, Lcom/facebook/a/b/a/f;->g(Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/a/b/a$a;->d:Landroid/view/View$OnClickListener;

    .line 93
    iput-object p1, p0, Lcom/facebook/a/b/a$a;->a:Lcom/facebook/a/b/a/a;

    .line 94
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/a/b/a$a;->b:Ljava/lang/ref/WeakReference;

    .line 95
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/a/b/a$a;->c:Ljava/lang/ref/WeakReference;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/a/b/a$a;->e:Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/facebook/a/b/a/a;Landroid/view/View;Landroid/view/View;Lcom/facebook/a/b/a$1;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/a/b/a$a;-><init>(Lcom/facebook/a/b/a/a;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/facebook/a/b/a$a;->e:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/a/b/a$a;->d:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/facebook/a/b/a$a;->d:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/facebook/a/b/a$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/a/b/a$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v2, p0, Lcom/facebook/a/b/a$a;->a:Lcom/facebook/a/b/a/a;

    iget-object v0, p0, Lcom/facebook/a/b/a$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/facebook/a/b/a$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v2, v0, v1}, Lcom/facebook/a/b/a;->b(Lcom/facebook/a/b/a/a;Landroid/view/View;Landroid/view/View;)V

    .line 109
    :cond_1
    return-void
.end method
