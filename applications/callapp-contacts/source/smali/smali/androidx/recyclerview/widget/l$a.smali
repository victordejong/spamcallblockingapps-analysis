.class public final Landroidx/recyclerview/widget/l$a;
.super Landroidx/core/view/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final b:Landroidx/recyclerview/widget/l;

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Landroidx/core/view/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/l;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Landroidx/core/view/a;-><init>()V

    .line 112
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/l$a;->c:Ljava/util/Map;

    .line 120
    iput-object p1, p0, Landroidx/recyclerview/widget/l$a;->b:Landroidx/recyclerview/widget/l;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Landroidx/core/view/a/d;
    .locals 1

    .line 245
    iget-object v0, p0, Landroidx/recyclerview/widget/l$a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/a;

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0, p1}, Landroidx/core/view/a;->a(Landroid/view/View;)Landroidx/core/view/a/d;

    move-result-object p1

    return-object p1

    .line 249
    :cond_0
    invoke-super {p0, p1}, Landroidx/core/view/a;->a(Landroid/view/View;)Landroidx/core/view/a/d;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/view/View;I)V
    .locals 1

    .line 179
    iget-object v0, p0, Landroidx/recyclerview/widget/l$a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/a;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0, p1, p2}, Landroidx/core/view/a;->a(Landroid/view/View;I)V

    return-void

    .line 183
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->a(Landroid/view/View;I)V

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 190
    iget-object v0, p0, Landroidx/recyclerview/widget/l$a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/a;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0, p1, p2}, Landroidx/core/view/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void

    .line 194
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final a(Landroid/view/View;Landroidx/core/view/a/c;)V
    .locals 1

    .line 143
    iget-object v0, p0, Landroidx/recyclerview/widget/l$a;->b:Landroidx/recyclerview/widget/l;

    .line 11055
    iget-object v0, v0, Landroidx/recyclerview/widget/l;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Landroidx/recyclerview/widget/l$a;->b:Landroidx/recyclerview/widget/l;

    iget-object v0, v0, Landroidx/recyclerview/widget/l;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 144
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Landroidx/recyclerview/widget/l$a;->b:Landroidx/recyclerview/widget/l;

    iget-object v0, v0, Landroidx/recyclerview/widget/l;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    .line 146
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/view/View;Landroidx/core/view/a/c;)V

    .line 147
    iget-object v0, p0, Landroidx/recyclerview/widget/l$a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/a;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0, p1, p2}, Landroidx/core/view/a;->a(Landroid/view/View;Landroidx/core/view/a/c;)V

    return-void

    .line 151
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->a(Landroid/view/View;Landroidx/core/view/a/c;)V

    return-void

    .line 154
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->a(Landroid/view/View;Landroidx/core/view/a/c;)V

    return-void
.end method

.method public final a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .line 160
    iget-object v0, p0, Landroidx/recyclerview/widget/l$a;->b:Landroidx/recyclerview/widget/l;

    .line 12055
    iget-object v0, v0, Landroidx/recyclerview/widget/l;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 160
    iget-object v0, p0, Landroidx/recyclerview/widget/l$a;->b:Landroidx/recyclerview/widget/l;

    iget-object v0, v0, Landroidx/recyclerview/widget/l;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 161
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Landroidx/recyclerview/widget/l$a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 167
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 170
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/l$a;->b:Landroidx/recyclerview/widget/l;

    iget-object p1, p1, Landroidx/recyclerview/widget/l;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    const/4 p1, 0x0

    return p1

    .line 173
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 234
    iget-object v0, p0, Landroidx/recyclerview/widget/l$a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/a;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 238
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public final b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 201
    iget-object v0, p0, Landroidx/recyclerview/widget/l$a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/a;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0, p1, p2}, Landroidx/core/view/a;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 205
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method final c(Landroid/view/View;)Landroidx/core/view/a;
    .locals 1

    .line 138
    iget-object v0, p0, Landroidx/recyclerview/widget/l$a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/view/a;

    return-object p1
.end method

.method public final c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 212
    iget-object v0, p0, Landroidx/recyclerview/widget/l$a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/a;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0, p1, p2}, Landroidx/core/view/a;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void

    .line 216
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 223
    iget-object v0, p0, Landroidx/recyclerview/widget/l$a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/a;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0, p1, p2}, Landroidx/core/view/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void

    .line 227
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
