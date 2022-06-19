.class public Lv3/n$a;
.super Landroid/support/v4/media/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lv3/n;


# direct methods
.method public constructor <init>(Lv3/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv3/n$a;->a:Lv3/n;

    invoke-direct {p0}, Landroid/support/v4/media/a;-><init>()V

    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lv3/n$a;->a:Lv3/n;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lv3/n;->d:Z

    .line 3
    iget-object p1, p1, Lv3/n;->e:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv3/n$b;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Lv3/n$b;->a()V

    :cond_0
    return-void
.end method

.method public B(Landroid/graphics/Typeface;Z)V
    .locals 0

    if-eqz p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Lv3/n$a;->a:Lv3/n;

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p1, Lv3/n;->d:Z

    .line 3
    iget-object p1, p1, Lv3/n;->e:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv3/n$b;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Lv3/n$b;->a()V

    :cond_1
    return-void
.end method
