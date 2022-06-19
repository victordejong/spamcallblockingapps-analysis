.class final Landroidx/media2/session/j$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/j;->a(ILandroidx/versionedparcelable/ParcelImpl;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/versionedparcelable/ParcelImpl;

.field final synthetic b:I

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Landroidx/media2/session/j;


# direct methods
.method constructor <init>(Landroidx/media2/session/j;Landroidx/versionedparcelable/ParcelImpl;ILandroid/os/Bundle;)V
    .locals 0

    .line 387
    iput-object p1, p0, Landroidx/media2/session/j$10;->d:Landroidx/media2/session/j;

    iput-object p2, p0, Landroidx/media2/session/j$10;->a:Landroidx/versionedparcelable/ParcelImpl;

    iput p3, p0, Landroidx/media2/session/j$10;->b:I

    iput-object p4, p0, Landroidx/media2/session/j$10;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/h;)V
    .locals 5

    .line 390
    iget-object v0, p0, Landroidx/media2/session/j$10;->a:Landroidx/versionedparcelable/ParcelImpl;

    .line 2078
    invoke-static {v0}, Landroidx/versionedparcelable/a;->a(Landroid/os/Parcelable;)Landroidx/versionedparcelable/c;

    move-result-object v0

    .line 390
    check-cast v0, Landroidx/media2/session/SessionCommand;

    if-nez v0, :cond_0

    const-string p1, "MediaControllerStub"

    const-string v0, "sendCustomCommand(): Ignoring null command"

    .line 392
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 395
    :cond_0
    iget v1, p0, Landroidx/media2/session/j$10;->b:I

    iget-object v2, p0, Landroidx/media2/session/j$10;->c:Landroid/os/Bundle;

    .line 2295
    sget-boolean v3, Landroidx/media2/session/h;->a:Z

    if-eqz v3, :cond_1

    .line 2296
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onCustomCommand cmd="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2650
    iget-object v4, v0, Landroidx/media2/session/SessionCommand;->g:Ljava/lang/String;

    .line 2296
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2298
    :cond_1
    iget-object v3, p1, Landroidx/media2/session/h;->b:Landroidx/media2/session/MediaController;

    new-instance v4, Landroidx/media2/session/h$29;

    invoke-direct {v4, p1, v0, v2, v1}, Landroidx/media2/session/h$29;-><init>(Landroidx/media2/session/h;Landroidx/media2/session/SessionCommand;Landroid/os/Bundle;I)V

    invoke-virtual {v3, v4}, Landroidx/media2/session/MediaController;->a(Landroidx/media2/session/MediaController$b;)V

    return-void
.end method
