.class public Lhh0$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhh0;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lhh0;


# direct methods
.method public constructor <init>(Lhh0;)V
    .locals 0

    iput-object p1, p0, Lhh0$a;->a:Lhh0;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lhh0$a;->a:Lhh0;

    invoke-virtual {p1}, Lhh0;->a()V

    return-void
.end method
