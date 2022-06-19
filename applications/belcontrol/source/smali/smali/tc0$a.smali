.class public Ltc0$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltc0;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ltc0;


# direct methods
.method public constructor <init>(Ltc0;)V
    .locals 0

    iput-object p1, p0, Ltc0$a;->a:Ltc0;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Ltc0$a;->a:Ltc0;

    invoke-static {p1}, Ltc0;->a(Ltc0;)V

    return-void
.end method
