.class public Lv51$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv51$b;-><init>(Lv51;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lv51$b;


# direct methods
.method public constructor <init>(Lv51$b;Lv51;)V
    .locals 0

    iput-object p1, p0, Lv51$b$a;->a:Lv51$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lv51$b$a;->a:Lv51$b;

    iget-object p1, p1, Lv51$b;->c:Lv51;

    iget-object v0, p1, Lv51;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Lv51;->a(Lv51;)[Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lv51$b$a;->a:Lv51$b;

    iget v1, v1, Lv51$b;->b:I

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lv51$b$a;->a:Lv51$b;

    iget-object p1, p1, Lv51$b;->c:Lv51;

    iget-object v0, p1, Lv51;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Lv51;->a(Lv51;)[Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lv51$b$a;->a:Lv51$b;

    iget v1, v1, Lv51$b;->b:I

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lv51$b$a;->a:Lv51$b;

    iget-object p1, p1, Lv51$b;->c:Lv51;

    iget-object v0, p1, Lv51;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Lv51;->a(Lv51;)[Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lv51$b$a;->a:Lv51$b;

    iget v1, v1, Lv51$b;->b:I

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lv51$b$a;->a:Lv51$b;

    iget-object p1, p1, Lv51$b;->c:Lv51;

    iget-object p1, p1, Lv51;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    invoke-static {p1}, Lu71;->y([Ljava/lang/Integer;)V

    return-void
.end method
