.class final Lorg/xutils/view/a;
.super Ljava/lang/Object;
.source "ViewFinder.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/xutils/view/a;->b:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/xutils/view/a;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/view/a;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/xutils/view/a;->b:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(II)Landroid/view/View;
    .locals 0

    if-lez p2, :cond_0

    .line 1
    invoke-virtual {p0, p2}, Lorg/xutils/view/a;->a(I)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lorg/xutils/view/a;->a(I)Landroid/view/View;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public c(Lorg/xutils/view/b;)Landroid/view/View;
    .locals 1

    .line 1
    iget v0, p1, Lorg/xutils/view/b;->a:I

    iget p1, p1, Lorg/xutils/view/b;->b:I

    invoke-virtual {p0, v0, p1}, Lorg/xutils/view/a;->b(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
