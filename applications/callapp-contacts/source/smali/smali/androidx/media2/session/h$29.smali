.class final Landroidx/media2/session/h$29;
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
.field final synthetic a:Landroidx/media2/session/SessionCommand;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:I

.field final synthetic d:Landroidx/media2/session/h;


# direct methods
.method constructor <init>(Landroidx/media2/session/h;Landroidx/media2/session/SessionCommand;Landroid/os/Bundle;I)V
    .locals 0

    .line 1298
    iput-object p1, p0, Landroidx/media2/session/h$29;->d:Landroidx/media2/session/h;

    iput-object p2, p0, Landroidx/media2/session/h$29;->a:Landroidx/media2/session/SessionCommand;

    iput-object p3, p0, Landroidx/media2/session/h$29;->b:Landroid/os/Bundle;

    iput p4, p0, Landroidx/media2/session/h$29;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroidx/media2/session/MediaController$a;)V
    .locals 2

    .line 1301
    invoke-static {}, Landroidx/media2/session/MediaController$a;->b()Landroidx/media2/session/SessionResult;

    move-result-object p1

    .line 1310
    iget-object v0, p0, Landroidx/media2/session/h$29;->d:Landroidx/media2/session/h;

    iget v1, p0, Landroidx/media2/session/h$29;->c:I

    invoke-virtual {v0, v1, p1}, Landroidx/media2/session/h;->a(ILandroidx/media2/session/SessionResult;)V

    return-void
.end method
