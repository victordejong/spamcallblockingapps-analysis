.class public Lt$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lua$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lt;


# direct methods
.method public constructor <init>(Lt;)V
    .locals 0

    iput-object p1, p0, Lt$a;->a:Lt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lt$a;->a:Lt;

    invoke-virtual {v0, p1}, Lt;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
