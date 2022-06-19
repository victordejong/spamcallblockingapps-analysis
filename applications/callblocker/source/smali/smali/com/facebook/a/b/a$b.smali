.class public Lcom/facebook/a/b/a$b;
.super Ljava/lang/Object;
.source "CodelessLoggingEventListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/facebook/a/b/a/a;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/AdapterView;",
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

.field private d:Landroid/widget/AdapterView$OnItemClickListener;

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/facebook/a/b/a/a;Landroid/view/View;Landroid/widget/AdapterView;)V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/a/b/a$b;->e:Z

    .line 127
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-virtual {p3}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/a/b/a$b;->d:Landroid/widget/AdapterView$OnItemClickListener;

    .line 133
    iput-object p1, p0, Lcom/facebook/a/b/a$b;->a:Lcom/facebook/a/b/a/a;

    .line 134
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/a/b/a$b;->b:Ljava/lang/ref/WeakReference;

    .line 135
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/a/b/a$b;->c:Ljava/lang/ref/WeakReference;

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/a/b/a$b;->e:Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/facebook/a/b/a/a;Landroid/view/View;Landroid/widget/AdapterView;Lcom/facebook/a/b/a$1;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/a/b/a$b;-><init>(Lcom/facebook/a/b/a/a;Landroid/view/View;Landroid/widget/AdapterView;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/facebook/a/b/a$b;->e:Z

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/facebook/a/b/a$b;->d:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/facebook/a/b/a$b;->d:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/facebook/a/b/a$b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/a/b/a$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v2, p0, Lcom/facebook/a/b/a$b;->a:Lcom/facebook/a/b/a/a;

    iget-object v0, p0, Lcom/facebook/a/b/a$b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/facebook/a/b/a$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v2, v0, v1}, Lcom/facebook/a/b/a;->b(Lcom/facebook/a/b/a/a;Landroid/view/View;Landroid/view/View;)V

    .line 147
    :cond_1
    return-void
.end method
