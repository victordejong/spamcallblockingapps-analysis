.class public Lcf1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lof1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcf1;->f(Landroid/webkit/WebView;)Lrf1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lof1$b<",
        "Lrf1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/ref/WeakReference;

.field public final synthetic b:Lmf1;

.field public final synthetic c:Lcf1;


# direct methods
.method public constructor <init>(Lcf1;Ljava/lang/ref/WeakReference;Lmf1;)V
    .locals 0

    iput-object p1, p0, Lcf1$a;->c:Lcf1;

    iput-object p2, p0, Lcf1$a;->a:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcf1$a;->b:Lmf1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lvf1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lvf1<",
            "Lrf1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcf1$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcf1$a;->b:Lmf1;

    invoke-interface {v1}, Lmf1;->b()Z

    move-result v1

    const-string v2, "MoatFactory"

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    const-string v0, "Target ViewGroup is null. Not creating WebAdTracker."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lvf1;->a()Lvf1;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating WebAdTracker for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v1, Lsf1;

    iget-object v2, p0, Lcf1$a;->c:Lcf1;

    invoke-static {v2}, Lcf1;->d(Lcf1;)Lre1;

    move-result-object v2

    iget-object v3, p0, Lcf1$a;->b:Lmf1;

    invoke-direct {v1, v0, v2, v3}, Lsf1;-><init>(Landroid/webkit/WebView;Lre1;Lmf1;)V

    invoke-static {v1}, Lvf1;->d(Ljava/lang/Object;)Lvf1;

    move-result-object v0

    return-object v0
.end method
