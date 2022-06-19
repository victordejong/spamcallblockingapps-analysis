.class public final Lb/h/i/d$b$a;
.super Ljava/lang/Object;
.source "SplashScreen.kt"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/h/i/d$b;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lb/h/i/d$b;

.field final synthetic e:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lb/h/i/d$b;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lb/h/i/d$b$a;->d:Lb/h/i/d$b;

    iput-object p2, p0, Lb/h/i/d$b$a;->e:Landroid/app/Activity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    instance-of p1, p2, Landroid/window/SplashScreenView;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lb/h/i/d$b$a;->d:Lb/h/i/d$b;

    check-cast p2, Landroid/window/SplashScreenView;

    invoke-virtual {p1, p2}, Lb/h/i/d$b;->d(Landroid/window/SplashScreenView;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lb/h/i/d$b;->e(Z)V

    .line 3
    iget-object p1, p0, Lb/h/i/d$b$a;->e:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    return-void
.end method
