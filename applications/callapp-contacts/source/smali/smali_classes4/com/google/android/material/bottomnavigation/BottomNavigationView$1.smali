.class final Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/bottomnavigation/BottomNavigationView;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/g;)V
    .locals 0

    return-void
.end method

.method public final a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z
    .locals 1

    .line 237
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-static {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 1546
    iget-object p2, p2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 1640
    iget p2, p2, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->e:I

    if-ne p1, p2, :cond_0

    .line 238
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-static {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;

    return v0

    .line 241
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-static {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-static {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;->a()Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
