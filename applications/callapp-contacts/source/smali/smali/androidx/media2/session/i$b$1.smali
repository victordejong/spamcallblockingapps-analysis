.class final Landroidx/media2/session/i$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/MediaController$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/i$b;->a(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Landroidx/media2/session/i$b;


# direct methods
.method constructor <init>(Landroidx/media2/session/i$b;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1014
    iput-object p1, p0, Landroidx/media2/session/i$b$1;->c:Landroidx/media2/session/i$b;

    iput-object p2, p0, Landroidx/media2/session/i$b$1;->a:Ljava/lang/String;

    iput-object p3, p0, Landroidx/media2/session/i$b$1;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroidx/media2/session/MediaController$a;)V
    .locals 2

    .line 1018
    new-instance p1, Landroidx/media2/session/SessionCommand;

    iget-object v0, p0, Landroidx/media2/session/i$b$1;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroidx/media2/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Landroidx/media2/session/MediaController$a;->b()Landroidx/media2/session/SessionResult;

    return-void
.end method
