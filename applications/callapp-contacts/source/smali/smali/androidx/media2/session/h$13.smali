.class final Landroidx/media2/session/h$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/MediaController$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Landroidx/media2/session/h;


# direct methods
.method constructor <init>(Landroidx/media2/session/h;F)V
    .locals 0

    .line 937
    iput-object p1, p0, Landroidx/media2/session/h$13;->b:Landroidx/media2/session/h;

    iput p2, p0, Landroidx/media2/session/h$13;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroidx/media2/session/MediaController$a;)V
    .locals 1

    .line 940
    iget-object v0, p0, Landroidx/media2/session/h$13;->b:Landroidx/media2/session/h;

    iget-object v0, v0, Landroidx/media2/session/h;->b:Landroidx/media2/session/MediaController;

    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 943
    :cond_0
    iget v0, p0, Landroidx/media2/session/h$13;->a:F

    invoke-virtual {p1, v0}, Landroidx/media2/session/MediaController$a;->a(F)V

    return-void
.end method
