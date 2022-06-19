.class Lcom/capricorn/ArcMenu$3;
.super Ljava/lang/Object;
.source "ArcMenu.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/capricorn/ArcMenu;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/capricorn/ArcMenu;


# direct methods
.method constructor <init>(Lcom/capricorn/ArcMenu;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/capricorn/ArcMenu$3;->this$0:Lcom/capricorn/ArcMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 196
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 197
    iget-object p1, p0, Lcom/capricorn/ArcMenu$3;->this$0:Lcom/capricorn/ArcMenu;

    invoke-virtual {p1}, Lcom/capricorn/ArcMenu;->isMenuOpen()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 198
    iget-object p1, p0, Lcom/capricorn/ArcMenu$3;->this$0:Lcom/capricorn/ArcMenu;

    invoke-virtual {p1, p2}, Lcom/capricorn/ArcMenu;->closeArcMenu(Z)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object p1, p0, Lcom/capricorn/ArcMenu$3;->this$0:Lcom/capricorn/ArcMenu;

    invoke-virtual {p1, p2}, Lcom/capricorn/ArcMenu;->openArcMenu(Z)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
