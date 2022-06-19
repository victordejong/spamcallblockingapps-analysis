.class Ld/k/a/a$e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/k/a/a$e;-><init>(Ld/k/a/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ld/k/a/a$e;


# direct methods
.method constructor <init>(Ld/k/a/a$e;)V
    .locals 0

    iput-object p1, p0, Ld/k/a/a$e$a;->b:Ld/k/a/a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    iget-object p1, p0, Ld/k/a/a$e$a;->b:Ld/k/a/a$e;

    iget-object p1, p1, Ld/k/a/a$c;->a:Ld/k/a/a$a;

    invoke-virtual {p1}, Ld/k/a/a$a;->a()V

    return-void
.end method
