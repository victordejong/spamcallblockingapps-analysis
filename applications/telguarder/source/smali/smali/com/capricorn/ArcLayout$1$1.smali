.class Lcom/capricorn/ArcLayout$1$1;
.super Ljava/lang/Object;
.source "ArcLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/capricorn/ArcLayout$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/capricorn/ArcLayout$1;


# direct methods
.method constructor <init>(Lcom/capricorn/ArcLayout$1;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/capricorn/ArcLayout$1$1;->this$1:Lcom/capricorn/ArcLayout$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/capricorn/ArcLayout$1$1;->this$1:Lcom/capricorn/ArcLayout$1;

    iget-object v0, v0, Lcom/capricorn/ArcLayout$1;->this$0:Lcom/capricorn/ArcLayout;

    invoke-static {v0}, Lcom/capricorn/ArcLayout;->access$000(Lcom/capricorn/ArcLayout;)V

    return-void
.end method
