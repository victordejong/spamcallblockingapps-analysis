.class Landroidx/e/a/a$e$1;
.super Ljava/lang/Object;
.source "AnimationHandler.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/e/a/a$e;-><init>(Landroidx/e/a/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/e/a/a$e;


# direct methods
.method constructor <init>(Landroidx/e/a/a$e;)V
    .locals 0

    .line 204
    iput-object p1, p0, Landroidx/e/a/a$e$1;->a:Landroidx/e/a/a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    .line 207
    iget-object p1, p0, Landroidx/e/a/a$e$1;->a:Landroidx/e/a/a$e;

    iget-object p1, p1, Landroidx/e/a/a$e;->a:Landroidx/e/a/a$a;

    invoke-virtual {p1}, Landroidx/e/a/a$a;->a()V

    return-void
.end method
