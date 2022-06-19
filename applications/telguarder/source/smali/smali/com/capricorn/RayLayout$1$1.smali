.class Lcom/capricorn/RayLayout$1$1;
.super Ljava/lang/Object;
.source "RayLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/capricorn/RayLayout$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/capricorn/RayLayout$1;


# direct methods
.method constructor <init>(Lcom/capricorn/RayLayout$1;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/capricorn/RayLayout$1$1;->this$1:Lcom/capricorn/RayLayout$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/capricorn/RayLayout$1$1;->this$1:Lcom/capricorn/RayLayout$1;

    iget-object v0, v0, Lcom/capricorn/RayLayout$1;->this$0:Lcom/capricorn/RayLayout;

    invoke-static {v0}, Lcom/capricorn/RayLayout;->access$000(Lcom/capricorn/RayLayout;)V

    return-void
.end method
