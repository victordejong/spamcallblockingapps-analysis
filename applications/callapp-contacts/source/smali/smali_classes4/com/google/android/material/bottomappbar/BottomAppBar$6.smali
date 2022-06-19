.class final Lcom/google/android/material/bottomappbar/BottomAppBar$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 685
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$6;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 693
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$6;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->o(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    .line 694
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$6;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->q(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z

    .line 695
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$6;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->r(Lcom/google/android/material/bottomappbar/BottomAppBar;)Landroid/animation/Animator;

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 688
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$6;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->n(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    return-void
.end method
