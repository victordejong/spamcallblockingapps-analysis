.class Lcom/capricorn/RayMenu$2$1$1;
.super Ljava/lang/Object;
.source "RayMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/capricorn/RayMenu$2$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/capricorn/RayMenu$2$1;


# direct methods
.method constructor <init>(Lcom/capricorn/RayMenu$2$1;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/capricorn/RayMenu$2$1$1;->this$2:Lcom/capricorn/RayMenu$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/capricorn/RayMenu$2$1$1;->this$2:Lcom/capricorn/RayMenu$2$1;

    iget-object v0, v0, Lcom/capricorn/RayMenu$2$1;->this$1:Lcom/capricorn/RayMenu$2;

    iget-object v0, v0, Lcom/capricorn/RayMenu$2;->this$0:Lcom/capricorn/RayMenu;

    invoke-static {v0}, Lcom/capricorn/RayMenu;->access$400(Lcom/capricorn/RayMenu;)V

    return-void
.end method
