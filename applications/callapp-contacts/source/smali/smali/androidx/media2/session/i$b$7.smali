.class final Landroidx/media2/session/i$b$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/MediaController$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/i$b;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroidx/media2/session/i$b;


# direct methods
.method constructor <init>(Landroidx/media2/session/i$b;Z)V
    .locals 0

    .line 1272
    iput-object p1, p0, Landroidx/media2/session/i$b$7;->b:Landroidx/media2/session/i$b;

    iput-boolean p2, p0, Landroidx/media2/session/i$b$7;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroidx/media2/session/MediaController$a;)V
    .locals 2

    .line 1275
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1276
    iget-boolean v0, p0, Landroidx/media2/session/i$b$7;->a:Z

    const-string v1, "androidx.media2.argument.CAPTIONING_ENABLED"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1277
    new-instance p1, Landroidx/media2/session/SessionCommand;

    const-string v0, "android.media.session.command.ON_CAPTIONING_ENALBED_CHANGED"

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroidx/media2/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Landroidx/media2/session/MediaController$a;->b()Landroidx/media2/session/SessionResult;

    return-void
.end method
