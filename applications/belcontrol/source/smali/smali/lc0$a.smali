.class public Llc0$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llc0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Llc0;


# direct methods
.method public constructor <init>(Llc0;)V
    .locals 0

    iput-object p1, p0, Llc0$a;->a:Llc0;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Llc0$a;->a:Llc0;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Llc0;->r(Llc0;Z)Z

    return-void
.end method
