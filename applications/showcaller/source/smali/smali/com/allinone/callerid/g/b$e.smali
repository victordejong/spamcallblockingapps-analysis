.class public Lcom/allinone/callerid/g/b$e;
.super Ljava/lang/Object;
.source "EZBlockFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/allinone/callerid/g/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/allinone/callerid/g/b$e;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/b$e;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/g/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/allinone/callerid/g/b;->d2(Lcom/allinone/callerid/g/b;)Lcom/allinone/callerid/customview/CirclePercentView;

    move-result-object v1

    invoke-static {v0}, Lcom/allinone/callerid/g/b;->a2(Lcom/allinone/callerid/g/b;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/allinone/callerid/customview/CirclePercentView;->setPercentage(F)V

    :cond_0
    return-void
.end method
