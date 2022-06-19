.class final Lorg/mistergroup/shouldianswer/b/h$g$a;
.super Ljava/lang/Object;
.source "RingingAlertPopup.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/b/h$g;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/b/h$g;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/b/h$g;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/b/h$g$a;->a:Lorg/mistergroup/shouldianswer/b/h$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 249
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/h$g$a;->a:Lorg/mistergroup/shouldianswer/b/h$g;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/b/h$g;->a:Lorg/mistergroup/shouldianswer/b/h;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/b/h;->b(Lorg/mistergroup/shouldianswer/b/h;)V

    return-void
.end method
