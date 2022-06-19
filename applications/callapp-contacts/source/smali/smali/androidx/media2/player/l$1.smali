.class final Landroidx/media2/player/l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/l;->b(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroidx/media2/player/l;


# direct methods
.method constructor <init>(Landroidx/media2/player/l;II)V
    .locals 0

    .line 250
    iput-object p1, p0, Landroidx/media2/player/l$1;->c:Landroidx/media2/player/l;

    iput p2, p0, Landroidx/media2/player/l$1;->a:I

    iput p3, p0, Landroidx/media2/player/l$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 253
    iget-object v0, p0, Landroidx/media2/player/l$1;->c:Landroidx/media2/player/l;

    iget-object v0, v0, Landroidx/media2/player/l;->a:Landroidx/media2/player/l$b;

    iget v1, p0, Landroidx/media2/player/l$1;->a:I

    iget v2, p0, Landroidx/media2/player/l$1;->b:I

    invoke-interface {v0, v1, v2}, Landroidx/media2/player/l$b;->a(II)V

    return-void
.end method
