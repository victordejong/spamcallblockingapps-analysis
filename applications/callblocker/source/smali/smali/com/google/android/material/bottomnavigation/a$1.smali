.class Lcom/google/android/material/bottomnavigation/a$1;
.super Ljava/lang/Object;
.source "BottomNavigationItemView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomnavigation/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/bottomnavigation/a;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomnavigation/a;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/a$1;->a:Lcom/google/android/material/bottomnavigation/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a$1;->a:Lcom/google/android/material/bottomnavigation/a;

    invoke-static {v0}, Lcom/google/android/material/bottomnavigation/a;->a(Lcom/google/android/material/bottomnavigation/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a$1;->a:Lcom/google/android/material/bottomnavigation/a;

    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/a$1;->a:Lcom/google/android/material/bottomnavigation/a;

    invoke-static {v1}, Lcom/google/android/material/bottomnavigation/a;->a(Lcom/google/android/material/bottomnavigation/a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/bottomnavigation/a;->a(Lcom/google/android/material/bottomnavigation/a;Landroid/view/View;)V

    .line 124
    :cond_0
    return-void
.end method
