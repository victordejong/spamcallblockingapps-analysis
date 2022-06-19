.class final Landroidx/media2/session/i$b$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/MediaController$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/i$b;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Landroidx/media2/session/i$b;


# direct methods
.method constructor <init>(Landroidx/media2/session/i$b;Landroid/os/Bundle;)V
    .locals 0

    .line 1239
    iput-object p1, p0, Landroidx/media2/session/i$b$5;->b:Landroidx/media2/session/i$b;

    iput-object p2, p0, Landroidx/media2/session/i$b$5;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroidx/media2/session/MediaController$a;)V
    .locals 2

    .line 1242
    new-instance p1, Landroidx/media2/session/SessionCommand;

    const-string v0, "android.media.session.command.ON_EXTRAS_CHANGED"

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroidx/media2/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Landroidx/media2/session/MediaController$a;->b()Landroidx/media2/session/SessionResult;

    return-void
.end method
