.class final Lcom/nineoldandroids/a/i$8;
.super Lcom/nineoldandroids/util/a;
.source "PreHoneycombCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nineoldandroids/util/a<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/nineoldandroids/util/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Ljava/lang/Float;
    .locals 0

    .line 40
    invoke-static {p1}, Lcom/nineoldandroids/b/a/a;->a(Landroid/view/View;)Lcom/nineoldandroids/b/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nineoldandroids/b/a/a;->c()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/nineoldandroids/a/i$8;->a(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;F)V
    .locals 0

    .line 35
    invoke-static {p1}, Lcom/nineoldandroids/b/a/a;->a(Landroid/view/View;)Lcom/nineoldandroids/b/a/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/nineoldandroids/b/a/a;->c(F)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;F)V
    .locals 0

    .line 32
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/nineoldandroids/a/i$8;->a(Landroid/view/View;F)V

    return-void
.end method
