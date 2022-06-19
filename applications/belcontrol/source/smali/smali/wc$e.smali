.class public Lwc$e;
.super Lwc$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final b:Landroid/view/Choreographer;

.field public final c:Landroid/view/Choreographer$FrameCallback;


# direct methods
.method public constructor <init>(Lwc$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lwc$c;-><init>(Lwc$a;)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lwc$e;->b:Landroid/view/Choreographer;

    new-instance p1, Lwc$e$a;

    invoke-direct {p1, p0}, Lwc$e$a;-><init>(Lwc$e;)V

    iput-object p1, p0, Lwc$e;->c:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lwc$e;->b:Landroid/view/Choreographer;

    iget-object v1, p0, Lwc$e;->c:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
