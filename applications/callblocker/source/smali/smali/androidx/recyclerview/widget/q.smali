.class Landroidx/recyclerview/widget/q;
.super Ljava/lang/Object;
.source "ViewBoundsCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/q$b;,
        Landroidx/recyclerview/widget/q$a;
    }
.end annotation


# instance fields
.field final a:Landroidx/recyclerview/widget/q$b;

.field b:Landroidx/recyclerview/widget/q$a;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/q$b;)V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/recyclerview/widget/q$b;

    .line 133
    new-instance v0, Landroidx/recyclerview/widget/q$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/q$a;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/q;->b:Landroidx/recyclerview/widget/q$a;

    .line 134
    return-void
.end method


# virtual methods
.method a(IIII)Landroid/view/View;
    .locals 8

    .prologue
    .line 213
    iget-object v0, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/recyclerview/widget/q$b;

    invoke-interface {v0}, Landroidx/recyclerview/widget/q$b;->a()I

    move-result v3

    .line 214
    iget-object v0, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/recyclerview/widget/q$b;

    invoke-interface {v0}, Landroidx/recyclerview/widget/q$b;->b()I

    move-result v4

    .line 215
    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    .line 216
    :goto_0
    const/4 v2, 0x0

    .line 217
    :goto_1
    if-eq p1, p2, :cond_2

    .line 218
    iget-object v1, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/recyclerview/widget/q$b;

    invoke-interface {v1, p1}, Landroidx/recyclerview/widget/q$b;->a(I)Landroid/view/View;

    move-result-object v1

    .line 219
    iget-object v5, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/recyclerview/widget/q$b;

    invoke-interface {v5, v1}, Landroidx/recyclerview/widget/q$b;->a(Landroid/view/View;)I

    move-result v5

    .line 220
    iget-object v6, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/recyclerview/widget/q$b;

    invoke-interface {v6, v1}, Landroidx/recyclerview/widget/q$b;->b(Landroid/view/View;)I

    move-result v6

    .line 221
    iget-object v7, p0, Landroidx/recyclerview/widget/q;->b:Landroidx/recyclerview/widget/q$a;

    invoke-virtual {v7, v3, v4, v5, v6}, Landroidx/recyclerview/widget/q$a;->a(IIII)V

    .line 222
    if-eqz p3, :cond_1

    .line 223
    iget-object v5, p0, Landroidx/recyclerview/widget/q;->b:Landroidx/recyclerview/widget/q$a;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/q$a;->a()V

    .line 224
    iget-object v5, p0, Landroidx/recyclerview/widget/q;->b:Landroidx/recyclerview/widget/q$a;

    invoke-virtual {v5, p3}, Landroidx/recyclerview/widget/q$a;->a(I)V

    .line 225
    iget-object v5, p0, Landroidx/recyclerview/widget/q;->b:Landroidx/recyclerview/widget/q$a;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/q$a;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 238
    :goto_2
    return-object v1

    .line 215
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 230
    :cond_1
    if-eqz p4, :cond_3

    .line 231
    iget-object v5, p0, Landroidx/recyclerview/widget/q;->b:Landroidx/recyclerview/widget/q$a;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/q$a;->a()V

    .line 232
    iget-object v5, p0, Landroidx/recyclerview/widget/q;->b:Landroidx/recyclerview/widget/q$a;

    invoke-virtual {v5, p4}, Landroidx/recyclerview/widget/q$a;->a(I)V

    .line 233
    iget-object v5, p0, Landroidx/recyclerview/widget/q;->b:Landroidx/recyclerview/widget/q$a;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/q$a;->b()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 217
    :goto_3
    add-int/2addr p1, v0

    move-object v2, v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 238
    goto :goto_2

    :cond_3
    move-object v1, v2

    goto :goto_3
.end method

.method a(Landroid/view/View;I)Z
    .locals 5

    .prologue
    .line 248
    iget-object v0, p0, Landroidx/recyclerview/widget/q;->b:Landroidx/recyclerview/widget/q$a;

    iget-object v1, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/recyclerview/widget/q$b;

    invoke-interface {v1}, Landroidx/recyclerview/widget/q$b;->a()I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/recyclerview/widget/q$b;

    invoke-interface {v2}, Landroidx/recyclerview/widget/q$b;->b()I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/recyclerview/widget/q$b;

    .line 249
    invoke-interface {v3, p1}, Landroidx/recyclerview/widget/q$b;->a(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/recyclerview/widget/q$b;

    invoke-interface {v4, p1}, Landroidx/recyclerview/widget/q$b;->b(Landroid/view/View;)I

    move-result v4

    .line 248
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/recyclerview/widget/q$a;->a(IIII)V

    .line 250
    if-eqz p2, :cond_0

    .line 251
    iget-object v0, p0, Landroidx/recyclerview/widget/q;->b:Landroidx/recyclerview/widget/q$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/q$a;->a()V

    .line 252
    iget-object v0, p0, Landroidx/recyclerview/widget/q;->b:Landroidx/recyclerview/widget/q$a;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/q$a;->a(I)V

    .line 253
    iget-object v0, p0, Landroidx/recyclerview/widget/q;->b:Landroidx/recyclerview/widget/q$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/q$a;->b()Z

    move-result v0

    .line 255
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
